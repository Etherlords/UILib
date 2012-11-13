package ui.components.switchComponent 
{
	import flash.text.TextField;
	import flash.text.TextFieldAutoSize;
	import patterns.events.LazyModeratorEvent;
	import ui.components.AbstractComponent;
	
	/**
	 * ...
	 * @author Nikro
	 */
	public class NamedSwitch extends AbstractComponent 
	{
		private var model:NamedSwitchComponentModel;
		private var text:TextField;
		private var switchComponent:Switch;
		
		public function NamedSwitch(model:NamedSwitchComponentModel) 
		{
			super();
			this.model = model;
			
			initilize();
		}
		
		private function initilize():void 
		{
			switchComponent = new Switch(model);
			text = new TextField();
			text.autoSize = TextFieldAutoSize.LEFT;
			text.textColor = 0xFFFFFF;
			
			changeText();
			viewChangeMap = { 'text':changeText };
			
			addComponent(switchComponent);
			addChild(text);
			model.addEventListener(LazyModeratorEvent.UPDATE_EVENT, onUpdate);
		}
		
		private function changeText():void
		{
			text.text = model.text;
			align();
		}
		
		private function align():void
		{
			switchComponent.x = text.x + text.width;
		}
		
		private function onUpdate(e:LazyModeratorEvent):void 
		{
			updateView(model.getFieldsList());
		}
		
	}

}