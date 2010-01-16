package org.robotlegs.examples.imagegallery.view.models
{
	import mx.collections.ArrayCollection;
	
	import org.robotlegs.examples.imagegallery.model.vo.Gallery;
	import org.robotlegs.examples.imagegallery.model.vo.GalleryImage;
	import org.robotlegs.examples.imagegallery.signals.GalleryImageSelectedSignal;
	import org.robotlegs.examples.imagegallery.signals.GalleryUpdatedSignal;

	[Bindable]
	public class GalleryThumbnailsPresentationModel implements IGalleryThumbnailsPresentationModel
	{
		[Inject]
		public var updated:GalleryUpdatedSignal;
		
		[Inject]
		public var imageSelected:GalleryImageSelectedSignal;
		
		[PostConstruct]
		public function mapSignalListeners():void
		{
			updated.add(galleryUpdated);
			imageSelected.add(updateImageSelectionState);
		}
		
		private var _dataprovider:ArrayCollection;
		
		public function get dataProvider():ArrayCollection
		{
			return _dataprovider;
		}
		
		public function set dataProvider(v:ArrayCollection):void
		{
			_dataprovider = v;
		}
		
		private function galleryUpdated(gallery:Gallery):void
		{
			dataProvider = gallery.photos;
			if(gallery.photos[0])
			{
				imageSelected.dispatch(gallery.photos[0]);
			}
		}
		
		private function updateImageSelectionState(image:GalleryImage):void
		{
			for each(var galleryImage:GalleryImage in dataProvider)
			{
				galleryImage.selected = galleryImage == image;
			}
		}
	}
}