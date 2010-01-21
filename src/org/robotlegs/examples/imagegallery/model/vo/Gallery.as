package org.robotlegs.examples.imagegallery.model.vo
{
	import mx.collections.ArrayCollection;

	[Bindable]
	public class Gallery implements IGallery
	{
		private var _photos:ArrayCollection = new ArrayCollection()

		public function get photos():ArrayCollection
		{
			return _photos;
		}

		[ArrayElementType("org.robotlegs.examples.imagegallery.model.vo.GalleryImage")]
		public function set photos(value:ArrayCollection):void
		{
			_photos = value;
		}

	}
}