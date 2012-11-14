package ui 
{
	import flash.display.Sprite;
	import flash.text.TextField;
	import flash.text.TextFieldAutoSize;
	import flash.text.TextFormat;
	import flash.text.TextFormatAlign;
	import ui.components.AbstractComponent;
	/**
	 * ...
	 * @author Nikro
	 */
	public class TableCell extends AbstractComponent
	{
		
		public function TableCell(str:String, color:Number) 
		{
			this.graphics.lineStyle(1, color);
			this.graphics.beginFill(color);
			this.graphics.drawRect(0, 0, 50, 25);
			
			var tf:TextField = new TextField();
			var form:TextFormat = new TextFormat('Verdana', 12, Math.abs(color - 0xFFFFFF), false, null, null, null, null, TextFormatAlign.CENTER);
			
			
			tf.defaultTextFormat = form;
			tf.text = str || '';
			addChild(tf);
			//tf.background = true;
			//tf.autoSize = TextFieldAutoSize.CENTER;
			tf.width = 50;
			tf.height = 25;
		}
		
	}

}