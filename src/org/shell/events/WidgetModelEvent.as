package org.shell.events
{
	import flash.events.Event;
	
	//import org.shell.model.WidgetModel;

	public class WidgetModelEvent extends Event
	{
		public function WidgetModelEvent()
		{
			public static const WIDGET_MODULE_ERROR:String = "WIDGET_MODULE_ERROR";
			public static const WIDGET_MODULE_PROGRESS:String = "WIDGET_MODULE_PROGRESS";
			public static const WIDGET_MODULE_READY:String = "WIDGET_MODULE_READY";
			
			public static const WIDGET_CREATED:String = "WIDGET_CREATED";
			
			public static const ENUM_1:int = 1;
			
			protected var _widgetId:String;
			protected var _body:*;
			
			public function WidgetModelEvent(type:String, widgetId:String, body:* = null)
			{
				super(type);
				_widgetId = widgetId;
				_body = body;
			}
			
			public function get widgetId():String
			{
				return _widgetId;
			}
			
			public function get body():*
			{
				return _body;
			}
			
			override public function clone():Event
			{
				return new WidgetModelEvent(type, widgetId, body);
			}	
		}
	}
}