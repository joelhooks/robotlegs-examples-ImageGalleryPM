package org.robotlegs.examples.imagegallery.controller
{
	import org.robotlegs.examples.imagegallery.service.IGalleryImageService;

	public class LoadGalleryCommand
	{
		[Inject]
		public var service:IGalleryImageService;
		
		public function execute():void
		{
			service.loadGallery();
		}
	}
}