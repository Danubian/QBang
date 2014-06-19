package org.shell.view
{
	import flash.events.MouseEvent;
	
	//import org.shell.view.WidgetHolderView;
	
	import robotlegs.bender.bundles.mvcs.Mediator;

	public class WidgetViewMediator extends Mediator
	{
		
		override public function initialize():void
		{
			addViewListener(MouseEvent.CLICK, onViewClick, MouseEvent);
		}
		
		public function onViewClick(event:MouseEvent):void
		{
			trace("Inside WidgetViewMediator - onViewClick")
			trace("	MouseEvent : " + event)
		}
	}
}