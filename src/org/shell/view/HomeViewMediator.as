package org.shell.view
{
	import flash.events.KeyboardEvent;
	import flash.events.MouseEvent;
	
	import robotlegs.bender.bundles.mvcs.Mediator;

	public class HomeViewMediator extends Mediator
	{
		[Inject]
		public var view:HomeView;
		
		override public function initialize():void
		{
			addViewListener(MouseEvent.MOUSE_WHEEL, dispatch, MouseEvent);
			addViewListener(MouseEvent.CLICK, dispatch, MouseEvent);
			addViewListener(MouseEvent.MOUSE_DOWN, dispatch, MouseEvent);
			addViewListener(KeyboardEvent.KEY_UP, dispatch, KeyboardEvent);
			addViewListener(KeyboardEvent.KEY_DOWN, dispatch, KeyboardEvent);
		}
	}
}