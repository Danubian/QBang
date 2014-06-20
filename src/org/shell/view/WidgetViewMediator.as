package org.shell.view
{
	import flash.events.MouseEvent;
	
	import org.shell.events.WidgetEvent;
	
	import robotlegs.bender.bundles.mvcs.Mediator;

	public class WidgetViewMediator extends Mediator
	{
		[Inject]
		public var view:ParentWidgetView;
		
		override public function initialize():void
		{
			addViewListener(MouseEvent.CLICK, onViewClick, MouseEvent);
			
			eventMap.mapListener(eventDispatcher, WidgetEvent.SET_WIDGET_TITLE, onSetWidgetTitle);
		}
		
		public function onViewClick(event:MouseEvent):void
		{
			trace("Inside ParentWidgetViewMediator - onViewClick")
			trace("	MouseEvent : " + event)
		}
		
		protected function onSetWidgetTitle(e:WidgetEvent):void
		{
			view.title.text = e.body;
		}
	}
}