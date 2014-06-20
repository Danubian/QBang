package org.shell.controller
{
	import flash.events.KeyboardEvent;
	
	import robotlegs.bender.bundles.mvcs.Command;

	public class OnHomeDownCommand extends Command
	{
		[Inject]
		public var event:KeyboardEvent;
		
		override public function execute():void
		{
			trace("Inside OnHomeDownCommand - execute")
			trace("	MouseEvent : " + event.keyCode)
		}
	}
}