package org.robotlegs.examples.imagegallery.model.vo
{
	[Bindable]
	public class GalleryImage
	{
		protected var _URL:String;
		protected var _thumbURL:String;
		protected var _selected:Boolean;

		public function get selected():Boolean
		{
			return _selected;
		}

		public function set selected(v:Boolean):void
		{
			_selected = v;
		}

		public function get thumbURL():String
		{
			return _thumbURL;
		}

		public function set thumbURL(v:String):void
		{
			_thumbURL = v;
		}

		public function get URL():String
		{
			return _URL;
		}

		public function set URL(v:String):void
		{
			_URL = v;
		}

	}
}