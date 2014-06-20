package org.shell.model
{
	import flash.system.ApplicationDomain;
	
	import mx.events.ModuleEvent;
	import mx.modules.IModuleInfo;
	import mx.modules.ModuleManager;
	
	import org.common.interfaces.IWidgetModule;
	import org.shell.events.WidgetModelEvent;
	import org.utils.BaseActor;
	import org.utils.NamedObjectMap;

	public class HomeModel extends BaseActor
	{
		private static const MODULE_URL:String = 'org/shell/view/ThemeWidgetView.swf';
		
		protected var themeMap:NamedObjectMap;
		
		protected var loadedModuleInfo:IModuleInfo;
		
		public function HomeModel()
		{
			themeMap = new NamedObjectMap();
		}
		
		public function createTheme(id:String):void
		{
			if(themeMap.hasKey(id) == false){
				loadModule(id);
			}
		}
		
		protected function loadModule(id:String):void
		{
			if (loadedModuleInfo == null)
			{
				var info:IModuleInfo = ModuleManager.getModule(MODULE_URL);
				info.data = id;
				info.addEventListener(ModuleEvent.PROGRESS, onModuleProgress);
				info.addEventListener(ModuleEvent.READY, onModuleReady);
				info.addEventListener(ModuleEvent.ERROR, onModuleError);
				info.load(ApplicationDomain.currentDomain);
				//infoMap.registerObject(info, id);
				themeMap.registerObject(info, id);
				
				loadedModuleInfo = info;
			}
			else
			{
				createModule(id);
			}
		}
		
		protected function createModule(id:String):void
		{
			var widget:IWidgetModule = loadedModuleInfo.factory.create() as IWidgetModule;
			themeMap.registerObject(widget, id);
			//dispatch(new WidgetModelEvent(WidgetModelEvent.WIDGET_CREATED, id));
		}
		
		private function onModuleError():void
		{
			// TODO Auto Generated method stub
			
		}
		
		private function onModuleReady():void
		{
			// TODO Auto Generated method stub
			
		}
		
		private function onModuleProgress():void
		{
			// TODO Auto Generated method stub
			
		}
		
		public function getTheme(id:String):*
		{
			return themeMap.getObject(id);
		}
		
		public function hasThemeId(id:String):Boolean
		{
			return themeMap.hasKey(id);
		}
		
		public function removeById(id:String):void
		{
			//themeMap.removeByKey(id);
		}
	}
}