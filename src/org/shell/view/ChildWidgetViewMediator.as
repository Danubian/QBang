package org.shell.view
{
	import flash.events.MouseEvent;
	
	import robotlegs.bender.bundles.mvcs.Mediator;

	public class ChildWidgetViewMediator extends Mediator
	{
		[Inject]
		public var view:ChildWidgetView;
		
		private var clicked:Boolean;
		
		override public function initialize():void
		{
			view.childLabel.text = "Some Child";
			clicked = false;
			addViewListener(MouseEvent.CLICK, onViewClick, MouseEvent);
		}
		
		public function onViewClick(event:MouseEvent):void
		{
			trace("Inside ChildWidgetViewMediator - onViewClick")
			trace("	MouseEvent : " + event)
			trace(" view.childVGroup.numElements : " + view.childVGroup.numElements)
			if(!clicked){
				view.childVGroup.addElement(new WidgetShelfView);
			} else {	
				view.childVGroup.removeElement(view.childVGroup.getElementAt(1));
			}
			clicked = !clicked;
		}
	}
}