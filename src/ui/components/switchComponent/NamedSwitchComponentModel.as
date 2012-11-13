package ui.components.switchComponent 
{
	/**
	 * ...
	 * @author Nikro
	 */
	public class NamedSwitchComponentModel extends SwitchComponentModel 
	{
		private var _text:String;
		
		public function NamedSwitchComponentModel(status:Boolean=false, viewScale:Number=4, text:String = '') 
		{
			super(status, viewScale);
			_text = text;
			
		}
		
		public function get text():String 
		{
			return _text;
		}
		
		public function set text(value:String):void 
		{
			moderateField('text');
			_text = value;
		}
		
	}

}