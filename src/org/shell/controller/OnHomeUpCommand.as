package org.shell.controller
{
	import flash.events.KeyboardEvent;
	import flash.events.MouseEvent;
	
	import org.shell.model.HomeModel;
	
	import robotlegs.bender.bundles.mvcs.Command;

	public class OnHomeUpCommand extends Command
	{
		[Inject]
		public var event:MouseEvent;
		
		[Inject]
		public var homeModel:HomeModel;
		
		private static const scrollUp:int = 10;
		
		override public function execute():void
		{
			trace("Inside OnHomeUpCommand - execute")
			trace("	MouseEvent : " + event)
			homeModel.y = homeModel.y - scrollUp;
		}
	}
}