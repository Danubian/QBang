package org.shell.model
{
	import flash.system.ApplicationDomain;
	
	import mx.modules.IModuleInfo;
	import mx.modules.ModuleManager;
	
	import org.common.interfaces.IFillModule;
	import org.shell.events.HomeModelEvent;
	import org.utils.BaseActor;
	import org.utils.NamedObjectMap;

	public class HomeModel extends BaseActor
	{
		private var _y:int;
		public function get y():int
		{
			return _y;
		}
		
		public function set y(value:int):void
		{
			trace("Inside HomeModel")
			trace("	set y : " + value)
			_y = value;
			dispatch(new HomeModelEvent(HomeModelEvent.SET_Y, _y));
		}
		
		public function HomeModel()
		{
		}
	}
}