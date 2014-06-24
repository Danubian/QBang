package org.shell.controller
{
	import flash.events.MouseEvent;
	
	import org.shell.model.HomeModel;
	import org.shell.view.HomeView;
	
	import robotlegs.bender.bundles.mvcs.Command;

	public class OnHomeScrollCommand extends Command
	{
		[Inject]
		public var event:MouseEvent;
		
		[Inject]
		public var homeModel:HomeModel;
		
		private static const scroll:int = 30;
		
		override public function execute():void
		{
			trace("Inside OnHomeScrollCommand - execute")
			trace("	MouseEvent : " + event.type)
			if(event.type == MouseEvent.RIGHT_MOUSE_DOWN)
			{
				homeModel.y = homeModel.y - scroll;
			} else if(event.type == MouseEvent.MOUSE_DOWN)
			{
				homeModel.y = homeModel.y + scroll;
			} else {
				trace("Event not found")
			}
			
			//homeModel.y = homeModel.y + scrollDown;
			//homeModel.createTheme("Second theme");
		}
	}
}