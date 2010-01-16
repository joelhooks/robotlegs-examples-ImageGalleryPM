package org.robotlegs.examples.imagegallery.view.models
{
	import mx.collections.ArrayCollection;
	
	[Bindable]
	public interface IGalleryViewPresentationModel
	{
		function get imageSource():String;
		function set imageSource(v:String):void;
	}
}