package org.robotlegs.examples.imagegallery.model.factories
{
	import flash.errors.IOError;
	
	import org.robotlegs.examples.imagegallery.model.vo.Gallery;
	import org.robotlegs.examples.imagegallery.model.vo.GalleryImage;
	
	public class XMLGalleryFactory implements IGalleryFactory
	{
		
		public function createGallery(input:Object, baseURL:String=""):Gallery
		{
			var gallery:Gallery = new Gallery();
			
			if(!(input is XMLList))
				throw new IOError("input must be XMLList")
				
			for each(var image:XML in input)
			{
				var photo:GalleryImage = new GalleryImage()
				photo.thumbURL = baseURL + "images/" + image.@name + '_s.jpg';
				photo.URL = baseURL + "images/" + image.@name + '.jpg';
				gallery.photos.addItem( photo );
			}
			
			return gallery;
		}
	}
}