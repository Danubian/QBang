package org.shell.events
{
	import flash.events.Event;

	public class WidgetEvent extends Event
	{
		public static const SET_WIDGET_TITLE:String = "SET_WIDGET_TITLE";
		protected var _body:*;
		
		public function WidgetEvent(type:String, body:* = null)
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
			return new WidgetEvent(type, body);
		}
	}
}