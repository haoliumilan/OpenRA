#region Copyright & License Information
/*
 * Copyright 2007-2018 The OpenRA Developers (see AUTHORS)
 * This file is part of OpenRA, which is free software. It is made
 * available to you under the terms of the GNU General Public License
 * as published by the Free Software Foundation, either version 3 of
 * the License, or (at your option) any later version. For more
 * information, see COPYING.
 */
#endregion

using System;
using System.Collections.Generic;
using System.Drawing;
using System.IO;
using System.Linq;
using OpenRA.FileSystem;
using OpenRA.Primitives;

namespace OpenRA.Graphics
{
	public interface ISpriteLoader
	{
		bool TryParseSprite(Stream s, out ISpriteFrame[] frames);
	}

	public interface ISpriteFrame
	{
		/// <summary>
		/// Size of the frame's `Data`.
		/// </summary>
		Size Size { get; }

		/// <summary>
		/// Size of the entire frame including the frame's `Size`.
		/// Think of this like a picture frame.
		/// </summary>
		Size FrameSize { get; }

		float2 Offset { get; }
		byte[] Data { get; }
		bool DisableExportPadding { get; }
	}

	public class SpriteCache
	{
		public readonly SheetBuilder SheetBuilder;
		readonly ISpriteLoader[] loaders;
		readonly IReadOnlyFileSystem fileSystem;

		readonly Dictionary<string, List<Sprite[]>> sprites = new Dictionary<string, List<Sprite[]>>();
		readonly Dictionary<string, ISpriteFrame[]> unloadedFrames = new Dictionary<string, ISpriteFrame[]>();

		public SpriteCache(IReadOnlyFileSystem fileSystem, ISpriteLoader[] loaders, SheetBuilder sheetBuilder)
		{
			SheetBuilder = sheetBuilder;
			this.fileSystem = fileSystem;
			this.loaders = loaders;
		}

		/// <summary>
		/// Returns the first set of sprites with the given filename.
		/// If getUsedFrames is defined then the indices returned by the function call
		/// are guaranteed to be loaded.  The value of other indices in the returned
		/// array are undefined and should never be accessed.
		/// </summary>
		public Sprite[] this[string filename, Func<int, IEnumerable<int>> getUsedFrames = null]
		{
			get
			{
				var allSprites = sprites.GetOrAdd(filename);
				var sprite = allSprites.FirstOrDefault();

				ISpriteFrame[] unloaded;
				if (!unloadedFrames.TryGetValue(filename, out unloaded))
					unloaded = null;

				// This is the first time that the file has been requested
				// Load all of the frames into the unused buffer and initialize
				// the loaded cache (initially empty)
				if (sprite == null)
				{
					unloaded = FrameLoader.GetFrames(fileSystem, filename, loaders);
					unloadedFrames[filename] = unloaded;

					sprite = new Sprite[unloaded.Length];
					allSprites.Add(sprite);
				}

				// HACK: The sequency code relies on side-effects from getUsedFrames
				var indices = getUsedFrames != null ? getUsedFrames(sprite.Length) :
					Enumerable.Range(0, sprite.Length);

				// Load any unused frames into the SheetBuilder
				if (unloaded != null)
				{
					foreach (var i in indices)
					{
						if (unloaded[i] != null)
						{
							sprite[i] = SheetBuilder.Add(unloaded[i]);
							unloaded[i] = null;
						}
					}

					// All frames have been loaded
					if (unloaded.All(f => f == null))
						unloadedFrames.Remove(filename);
				}

				return sprite;
			}
		}

		/// <summary>Returns all instances of sets of sprites with the given filename</summary>
		public IEnumerable<Sprite[]> AllCached(string filename)
		{
			return sprites.GetOrAdd(filename);
		}

		/// <summary>Loads and caches a new instance of sprites with the given filename</summary>
		public Sprite[] Reload(string filename)
		{
			var sprite = FrameLoader.GetFrames(fileSystem, filename, loaders)
				.Select(a => SheetBuilder.Add(a))
				.ToArray();

			sprites.GetOrAdd(filename).Add(sprite);
			return sprite;
		}
	}

	public class FrameCache
	{
		readonly Cache<string, ISpriteFrame[]> frames;

		public FrameCache(IReadOnlyFileSystem fileSystem, ISpriteLoader[] loaders)
		{
			frames = new Cache<string, ISpriteFrame[]>(filename => FrameLoader.GetFrames(fileSystem, filename, loaders));
		}

		public ISpriteFrame[] this[string filename] { get { return frames[filename]; } }
	}

	public static class FrameLoader
	{
		public static ISpriteFrame[] GetFrames(IReadOnlyFileSystem fileSystem, string filename, ISpriteLoader[] loaders)
		{
			using (var stream = fileSystem.Open(filename))
			{
				var spriteFrames = GetFrames(stream, loaders);
				if (spriteFrames == null)
					throw new InvalidDataException(filename + " is not a valid sprite file!");

				return spriteFrames;
			}
		}

		public static ISpriteFrame[] GetFrames(Stream stream, ISpriteLoader[] loaders)
		{
			ISpriteFrame[] frames;
			foreach (var loader in loaders)
				if (loader.TryParseSprite(stream, out frames))
					return frames;

			return null;
		}
	}
}
