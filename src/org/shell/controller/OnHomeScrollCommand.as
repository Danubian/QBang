package org.shell.controller
{
	import flash.events.MouseEvent;
	
	//import org.shell.view.ChildWidgetView;
	import org.shell.view.HomeView;
	//import org.shell.view.ThemeWidgetView;
	
	import robotlegs.bender.bundles.mvcs.Command;

	public class OnHomeScrollCommand extends Command
	{
		[Inject]
		public var event:MouseEvent;
		
		override public function execute():void
		{
			trace("Inside OnHomeScrollCommand - execute")
			trace("	MouseEvent : " + event)
		}
	}
}