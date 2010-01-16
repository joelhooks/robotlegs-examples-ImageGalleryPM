package org.robotlegs.examples.imagegallery.view.models
{
	import mx.collections.ArrayCollection;
	
	import org.robotlegs.examples.imagegallery.model.vo.GalleryImage;

	[Bindable]
	public interface IGalleryThumbnailsPresentationModel
	{
		function get dataProvider():ArrayCollection;
	}
}