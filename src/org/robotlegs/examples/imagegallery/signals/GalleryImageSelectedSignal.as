package org.robotlegs.examples.imagegallery.signals
{
	import org.osflash.signals.Signal;
	import org.robotlegs.examples.imagegallery.model.vo.IGalleryImage;
	
	public class GalleryImageSelectedSignal extends Signal
	{
		public function GalleryImageSelectedSignal()
		{
			super(IGalleryImage);
		}
	}
}