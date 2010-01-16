package org.robotlegs.examples.imagegallery.model.vo
{
	import mx.collections.ArrayCollection;

	[Bindable]
	public class Gallery
	{
		[ArrayElementType("org.robotlegs.examples.imagegallery.model.vo.GalleryImage")]
		public var photos:ArrayCollection = new ArrayCollection()
	}
}