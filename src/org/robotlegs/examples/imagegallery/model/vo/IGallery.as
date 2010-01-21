package org.robotlegs.examples.imagegallery.model.vo
{
	import mx.collections.ArrayCollection;

	[Bindable]
	public interface IGallery
	{
		function get photos():ArrayCollection;
		function set photos(value:ArrayCollection):void;
	}
}