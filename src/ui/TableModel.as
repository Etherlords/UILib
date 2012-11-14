package ui 
{
	/**
	 * ...
	 * @author Nikro
	 */
	public class TableModel 
	{
		private var _width:Number;
		private var _height:Number;
		
		private var _data:Array
		
		public function TableModel(width:Number, height:Number, data:Array) 
		{
			this.data = data;
			this.height = height;
			this.width = width;
		}
		
		public function get height():Number 
		{
			return _height;
		}
		
		public function set height(value:Number):void 
		{
			_height = value;
		}
		
		public function get width():Number 
		{
			return _width;
		}
		
		public function set width(value:Number):void 
		{
			_width = value;
		}
		
		public function get data():Array 
		{
			return _data;
		}
		
		public function set data(value:Array):void 
		{
			_data = value;
		}
		
	}

}