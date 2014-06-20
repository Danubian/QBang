package org.shell.view
{
	import flash.events.MouseEvent;
	
	import org.shell.model.WidgetModel;
	
	import robotlegs.bender.bundles.mvcs.Mediator;

	public class WidgetHolderViewMediator extends Mediator
	{
		[Inject]
		public var view:WidgetHolderView;
		
		override public function initialize():void
		{
			addViewListener(MouseEvent.CLICK, onViewClick, MouseEvent);
		}
		
		public function onViewClick(event:MouseEvent):void
		{
			trace("Inside WidgetHolderViewMediator - onViewClick")
			trace("	MouseEvent : " + event)
			var newWidget:ParentWidgetView = new ParentWidgetView;
			newWidget.flipColor();
			newWidget.setTitle("Some new Widget");
			newWidget.vGroup.addElement(new ChildWidgetView);
			newWidget.vGroup.addElement(new ChildWidgetView);
			newWidget.vGroup.addElement(new ChildWidgetView);
			view.addElement(newWidget);
		}
	}
}