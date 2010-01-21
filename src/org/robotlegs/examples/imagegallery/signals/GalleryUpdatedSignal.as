package org.robotlegs.examples.imagegallery.signals
{
	import org.osflash.signals.Signal;
	import org.robotlegs.examples.imagegallery.model.vo.IGallery;
	
	public class GalleryUpdatedSignal extends Signal
	{
		public function GalleryUpdatedSignal()
		{
			super(IGallery);
		}
	}
}