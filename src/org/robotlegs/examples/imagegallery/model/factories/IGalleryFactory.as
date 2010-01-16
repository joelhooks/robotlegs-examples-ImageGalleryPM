package org.robotlegs.examples.imagegallery.model.factories
{
	import org.robotlegs.examples.imagegallery.model.vo.Gallery;

	public interface IGalleryFactory
	{
		function createGallery(input:Object, baseURL:String=""):Gallery;
	}
}