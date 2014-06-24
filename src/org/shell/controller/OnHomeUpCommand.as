package org.shell.controller
{
	import flash.events.KeyboardEvent;
	import flash.events.MouseEvent;
	
	import robotlegs.bender.bundles.mvcs.Command;

	public class OnHomeUpCommand extends Command
	{
		[Inject]
		public var event:MouseEvent;
		
		override public function execute():void
		{
			trace("Inside OnHomeUpCommand - execute")
			trace("	MouseEvent : " + event)
		}
	}
}