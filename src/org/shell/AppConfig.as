package org.shell
{
	//import flash.events.KeyboardEvent;
	import flash.events.MouseEvent;
	
	//import org.shell.controller.OnHomeClickCommand;
	import org.shell.controller.OnHomeScrollCommand;
	//import org.shell.controller.OnMouseDownCommand;
	import org.shell.model.HomeModel;
	import org.shell.view.ChildWidgetView;
	import org.shell.view.ChildWidgetViewMediator;
	import org.shell.view.HomeView;
	import org.shell.view.HomeViewMediator;
	import org.shell.view.ThemeWidgetView;
	import org.shell.view.WidgetViewMediator;
	
	import robotlegs.bender.extensions.eventCommandMap.api.IEventCommandMap;
	import robotlegs.bender.extensions.mediatorMap.api.IMediatorMap;
	import robotlegs.bender.framework.api.IConfig;
	import robotlegs.bender.framework.api.IInjector;

	public class AppConfig implements IConfig
	{
		/*[Inject]
		public var injector:Injector*/
		
		[Inject]
		public var injector:IInjector;
		
		[Inject]
		public var mediatorMap:IMediatorMap;
		
		[Inject]
		public var commandMap:IEventCommandMap;
		
		public function configure():void
		{
			trace("Configuring");
//			commandMap.map(SimpleAppEvent.CHOOSE_FILE, SimpleAppEvent).toCommand(ChooseFileCommand);
//			commandMap.map(FileResultEvent.FILE_RESULT, FileResultEvent).toCommand(SetSelectedFileCommand);
//			commandMap.map(ScrollEvent.START_SCROLL, ScrollEvent).toCommand(OnScrollCommand);
			//commandMap.map(MouseEvent.CLICK, MouseEvent).toCommand(OnHomeClickCommand);
			//commandMap.map(MouseEvent.MOUSE_WHEEL, MouseEvent).toCommand(OnHomeScrollCommand);
			commandMap.map(MouseEvent.MOUSE_DOWN, MouseEvent).toCommand(OnHomeScrollCommand);
			commandMap.map(MouseEvent.RIGHT_MOUSE_DOWN, MouseEvent).toCommand(OnHomeScrollCommand);
			
//			commandMap.map(KeyboardEvent.KEY_UP, KeyboardEvent).toCommand(OnHomeUpCommand);
//			commandMap.map(KeyboardEvent.KEY_DOWN, KeyboardEvent).toCommand(OnHomeDownCommand);
//			
//			injector.map(IFileService).toSingleton(FileService);
//			
//			injector.map(SimpleModel).asSingleton();
			injector.map(HomeModel).asSingleton();
//			
//			mediatorMap.map(ButtonContainer).toMediator(ButtonContainerMediator);
//			mediatorMap.map(TextContainer).toMediator(TextContainerMediator);
//			mediatorMap.map(ScrollbarContainer).toMediator(ScrollbarContainerMediator);
			mediatorMap.map(HomeView).toMediator(HomeViewMediator);
			mediatorMap.map(ThemeWidgetView).toMediator(WidgetViewMediator);
			mediatorMap.map(ChildWidgetView).toMediator(ChildWidgetViewMediator);
		}
	}
}