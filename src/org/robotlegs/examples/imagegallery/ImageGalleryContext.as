package org.robotlegs.examples.imagegallery
{
	import org.robotlegs.examples.imagegallery.controller.LoadGalleryCommand;
	import org.robotlegs.examples.imagegallery.model.factories.*;
	import org.robotlegs.examples.imagegallery.service.*;
	import org.robotlegs.examples.imagegallery.signals.*;
    import org.robotlegs.examples.imagegallery.signals.ApplicationStartedSignal;
    import org.robotlegs.examples.imagegallery.view.models.*;
	import org.robotlegs.mvcs.SignalContext;
	
	public class ImageGalleryContext extends SignalContext
	{
		private const VIEW_PACKAGE:String = "org.robotlegs.examples.imagegallery.view.components";
		private const LOAD_GALLERY:String = "loadGallery";
		private var appStarted:ApplicationStartedSignal;
		
		override public function startup():void
		{
			//map the views
			viewMap.mapPackage(VIEW_PACKAGE);
			
			//map the presentation models
			injector.mapSingletonOf( IGalleryViewPresentationModel, GalleryViewPresentationModel );
			injector.mapSingletonOf( IGalleryThumbnailsPresentationModel, GalleryThumbnailsPresentationModel );
	
			//map the services and their factories
			injector.mapSingletonOf( IGalleryImageService, XMLImageService );
			injector.mapSingletonOf( IGalleryFactory, XMLGalleryFactory );
			
			//map the signals
			injector.mapSingleton(GalleryUpdatedSignal);
			injector.mapSingleton(GalleryImageSelectedSignal);
					
			ApplicationStartedSignal(signalCommandMap.mapSignalClass(
                    ApplicationStartedSignal, LoadGalleryCommand, true)).dispatch();
		}
	}
}