package ui.components 
{
	import flash.display.Sprite;
	
	/**
	 * ...
	 * @author Nikro
	 */
	public class GraphicIcon extends AbstractComponent 
	{
		private var _borderWidth:Number;
		private var _borderHeight:Number;
		private var color:uint;
		
		public function GraphicIcon(borderWidth:Number, borderHeight:Number, color:uint) 
		{
			super();
			this.color = color;
			this.borderHeight = borderHeight;
			this.borderWidth = borderWidth;
			
			draw();
		}
		
		public function draw():void 
		{
			graphics.clear();
			graphics.beginFill(color);
			graphics.drawRect(0, 0, borderWidth, borderHeight);
		}
		
		public function get borderWidth():Number 
		{
			return _borderWidth;
		}
		
		public function set borderWidth(value:Number):void 
		{
			_borderWidth = value;
		}
		
		public function get borderHeight():Number 
		{
			return _borderHeight;
		}
		
		public function set borderHeight(value:Number):void 
		{
			_borderHeight = value;
		}
		
	}

}