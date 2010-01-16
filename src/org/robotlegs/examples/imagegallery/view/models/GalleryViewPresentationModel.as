package org.robotlegs.examples.imagegallery.view.models
{
	import org.robotlegs.examples.imagegallery.model.vo.GalleryImage;
	import org.robotlegs.examples.imagegallery.signals.GalleryImageSelectedSignal;
	
	[Bindable]
	public class GalleryViewPresentationModel implements IGalleryViewPresentationModel
	{
		[Inject]
		public var imageSelected:GalleryImageSelectedSignal;
		
		[PostConstruct]
		public function mapSignalListeners():void
		{
			imageSelected.add(updateImageSource);
		}
		
		private var _imageSource:String;
		
		public function get imageSource():String
		{
			return _imageSource;
		}
		
		public function set imageSource(v:String):void
		{
			_imageSource = v;
		}
		
		protected function updateImageSource(image:GalleryImage):void
		{
			imageSource = image.URL;
		}

	}
}