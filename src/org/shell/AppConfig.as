package org.shell
{
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
//			
//			injector.map(IFileService).toSingleton(FileService);
//			
//			injector.map(SimpleModel).asSingleton();
//			
//			mediatorMap.map(ButtonContainer).toMediator(ButtonContainerMediator);
//			mediatorMap.map(TextContainer).toMediator(TextContainerMediator);
//			mediatorMap.map(ScrollbarContainer).toMediator(ScrollbarContainerMediator);
		}
	}
}