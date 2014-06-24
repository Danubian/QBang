package org.shell.events
{
	import flash.events.Event;

	public class HomeModelEvent extends Event
	{
		public static const SET_Y:String = "SET_Y";
		protected var _body:*;
		
		public function HomeModelEvent(type:String, body:* = null)
		{
			super(type);
			_body = body;
		}
		
		public function get body():*
		{
			return _body;
		}
		
		override public function clone():Event
		{
			return new HomeModelEvent(type, body);
		}
	}
}