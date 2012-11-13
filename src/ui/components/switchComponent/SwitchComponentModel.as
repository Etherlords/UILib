package ui.components.switchComponent 
{
	import patterns.Moderator;
	
	/**
	 * ...
	 * @author Nikro
	 */
	public class SwitchComponentModel extends Moderator 
	{
		
		private var _status:Boolean = false;
		private var _viewScale:Number = 4;
		
		public function SwitchComponentModel(status:Boolean = false, viewScale:Number = 4) 
		{
			_viewScale = viewScale;
			_status = status;
			super();
		}
		
		public function get status():Boolean 
		{
			return _status;
		}
		
		public function set status(value:Boolean):void 
		{
			moderateField('status');
			_status = value;
		}
		
		public function get viewScale():Number 
		{
			return _viewScale;
		}
		
		public function set viewScale(value:Number):void 
		{
			moderateField('viewScale');
			_viewScale = value;
		}
		
	}

}