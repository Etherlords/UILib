package  
{
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	import ui.components.switchComponent.NamedSwitch;
	import ui.components.switchComponent.NamedSwitchComponentModel;
	import ui.components.switchComponent.SwitchComponentModel;
	
	
	/**
	 * ...
	 * @author Nikro
	 */
	public class Test extends Sprite 
	{
		private var model:NamedSwitchComponentModel;
		
		public function Test() 
		{
			super();
			
			model = new NamedSwitchComponentModel();
			model.text = "Свитч"
			var sw:NamedSwitch = new NamedSwitch(model);
			addChild(sw);
			sw.addEventListener(MouseEvent.CLICK, onClick);
			
			sw.x = 100;
			sw.y = 100;
		}
		
		private function onClick(e:MouseEvent):void 
		{
			trace('click');
			model.status = !model.status
			model.update();
		}
		
	}

}