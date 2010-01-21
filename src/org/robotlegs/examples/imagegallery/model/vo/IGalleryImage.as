package org.robotlegs.examples.imagegallery.model.vo
{
	[Bindable]
	public interface IGalleryImage
	{
		function get selected():Boolean;
		function set selected(v:Boolean):void;
		
		function get thumbURL():String;
		function set thumbURL(v:String):void;
		
		function get URL():String;
		function set URL(v:String):void;
	}
}