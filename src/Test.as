package  
{
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	import ui.components.switchComponent.NamedSwitch;
	import ui.components.switchComponent.NamedSwitchComponentModel;
	import ui.components.switchComponent.SwitchComponentModel;
	import ui.Table;
	import ui.TableModel;
	
	
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
			
			var data:Array = [];
			
			data.push(['#', 'Header2', 'Header3', 'Header4', 'Header5', 'Header6', 'Header7'])
			data.push(['1', '1-1', '1-2', '1-3', '1-4', '1-5', '1-6'])
			data.push(['2', '2-1', '2-2', '2-3', '2-4', '2-5', '2-6'])
			data.push(['3', '3-1', '3-2', '3-3', '3-4', '3-5', '3-6'])
			data.push(['4', '3-1', '3-2', '3-3', '3-4', '3-5', '3-6'])
			data.push(['5', '3-1', '3-2', '3-3', '3-4', '3-5', '3-6'])
			data.push(['6', '3-1', '3-2', '3-3', '3-4', '3-5', '3-6'])
			
			var table:Table = new Table(new TableModel(9, 7, data));
			addChild(table);
			
			model = new NamedSwitchComponentModel();
			model.text = "Свитч"
			var sw:NamedSwitch = new NamedSwitch(model);
			//addChild(sw);
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