package org.robotlegs.examples.imagegallery.view.models
{
	import mx.collections.ArrayCollection;
	
	import org.robotlegs.examples.imagegallery.model.vo.GalleryImage;

	[Bindable]
	/**
	 * This interface is simple because the application is simple. Obviously in
	 * a large application you'd get more complex interfaces. 
	 */	
	public interface IGalleryThumbnailsPresentationModel
	{
		function get dataProvider():ArrayCollection;
	}
}