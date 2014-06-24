package org.shell.view
{
	//import flash.events.KeyboardEvent;
	import flash.events.MouseEvent;
	
	import org.shell.events.HomeModelEvent;
	
	import robotlegs.bender.bundles.mvcs.Mediator;

	public class HomeViewMediator extends Mediator
	{
		[Inject]
		public var view:HomeView;
		
		override public function initialize():void
		{
			addViewListener(MouseEvent.MOUSE_DOWN, dispatch, MouseEvent);
			addViewListener(MouseEvent.RIGHT_MOUSE_DOWN, dispatch, MouseEvent);
			

			addContextListener(HomeModelEvent.SET_Y, onYChange, HomeModelEvent);
//			addViewListener(KeyboardEvent.KEY_UP, dispatch, KeyboardEvent);
//			addViewListener(KeyboardEvent.KEY_DOWN, dispatch, KeyboardEvent);
		}
		
		private function onYChange(event:HomeModelEvent):void
		{
			view.y = event.body;
		}
	}
}