package org.shell.controller
{
	import flash.events.MouseEvent;
	
	import org.shell.view.ChildWidgetView;
	import org.shell.view.HomeView;
	import org.shell.view.ThemeWidgetView;
	
	import robotlegs.bender.bundles.mvcs.Command;

	public class OnHomeClickCommand extends Command
	{
		[Inject]
		public var event:MouseEvent;
		
//		[Inject]
//		public var view:HomeView;
		
		override public function execute():void
		{
			trace("Inside OnHomeClickCommand - execute")
			trace("	MouseEvent : " + event)
//			var newWidget:ThemeWidgetView = new ThemeWidgetView;
//			newWidget.flipColor();
//			newWidget.setTitle("Some new Widget");
//			newWidget.vGroup.addElement(new ChildWidgetView);
//			newWidget.vGroup.addElement(new ChildWidgetView);
//			newWidget.vGroup.addElement(new ChildWidgetView);
//			view.addElement(newWidget);
		}
	}
}