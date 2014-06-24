package org.shell.controller
{
	import flash.events.MouseEvent;
	
	import org.shell.model.HomeModel;
	
	import robotlegs.bender.bundles.mvcs.Command;

	public class OnHomeDownCommand extends Command
	{
		[Inject]
		public var event:MouseEvent;
		
		[Inject]
		public var homeModel:HomeModel;
		
		private static const scrollDown:int = 10;
		
		override public function execute():void
		{
			trace("Inside OnHomeDownCommand - execute")
			trace("	MouseEvent : " + event)
			homeModel.y = homeModel.y + scrollDown;
			//homeModel.createTheme("Second theme");
		}
	}
}