package ui.components 
{
	import flash.display.Sprite;
	/**
	 * ...
	 * @author Nikro
	 */
	public class AbstractComponent extends Sprite
	{
		
		private var componentsList:Vector.<AbstractComponent> = new Vector.<AbstractComponent>;
		
		protected var viewChangeMap:Object = {};
		
		public function AbstractComponent() 
		{
			
		}
		
		
		protected function updateView(fieldsList:Object):void 
		{
			for (var fieldChanged:String in fieldsList)
			{
				if(viewChangeMap.hasOwnProperty(fieldChanged))
					viewChangeMap[fieldChanged]();
			}
		}
		
		public function addComponent(component:AbstractComponent):void
		{
			componentsList.push(component);
			
			addChild(component);
		}
		
	}

}