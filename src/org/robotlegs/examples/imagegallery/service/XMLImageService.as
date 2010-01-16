package org.robotlegs.examples.imagegallery.service
{
	import mx.rpc.AsyncToken;
	import mx.rpc.Responder;
	import mx.rpc.http.HTTPService;
	
	import org.robotlegs.examples.imagegallery.model.factories.IGalleryFactory;
	import org.robotlegs.examples.imagegallery.model.vo.Gallery;
	import org.robotlegs.examples.imagegallery.signals.GalleryUpdatedSignal;
	
	public class XMLImageService implements IGalleryImageService
	{
		protected static const BASE_URL:String = "assets/gallery/";
		
		[Inject]
		public var galleryFactory:IGalleryFactory;
		
		[Inject]
		public var galleryUpdated:GalleryUpdatedSignal;
		
		public function XMLImageService()
		{
			super();
		}
		
		public function loadGallery():void
		{
			var service:HTTPService = new HTTPService();
			var responder:Responder = new Responder(handleServiceResult, handleServiceFault);
			var token:AsyncToken;
			service.resultFormat = "e4x";
			service.url = BASE_URL+"gallery.xml";
			token = service.send();
			token.addResponder(responder);
		}
		
		protected function handleServiceResult(event:Object):void
		{
			var gallery:Gallery = galleryFactory.createGallery(event.result.image, BASE_URL);
			galleryUpdated.dispatch( gallery );
		}
		
		protected function handleServiceFault(event:Object):void
		{
			trace(event);
			
		}
	}
}