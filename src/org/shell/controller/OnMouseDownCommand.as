package org.shell.controller
{
	import flash.events.MouseEvent;
	
	import robotlegs.bender.bundles.mvcs.Command;

	public class OnMouseDownCommand extends Command
	{
		[Inject]
		public var event:MouseEvent;
		
		override public function execute():void
		{
			trace("Inside OnMouseDownCommand - execute")
			trace("	MouseEvent : " + event)
		}
	}
}