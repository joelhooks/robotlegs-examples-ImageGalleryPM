package org.robotlegs.examples.imagegallery.signals
{
	import org.osflash.signals.Signal;
	import org.robotlegs.examples.imagegallery.model.vo.Gallery;
	
	public class GalleryUpdatedSignal extends Signal
	{
		public function GalleryUpdatedSignal()
		{
			super(Gallery);
		}
	}
}