package ui 
{
	import ui.components.AbstractComponent;
	
	/**
	 * ...
	 * @author Nikro
	 */
	public class Table extends AbstractComponent 
	{
		private var tableModel:TableModel;
		
		public function Table(tableModel:TableModel) 
		{
			super();
			this.tableModel = tableModel;
			
			initilize();
		}
		
		private function initilize():void 
		{
			createTable();
		}
		
		private function createTable():void 
		{
			var chet:Boolean = true;
			for (var i:int = 0; i < tableModel.height; i++)
			{
				for (var j:int = 0; j < tableModel.width; j++)
				{
					var str:String = ''
					
					if (tableModel.data.hasOwnProperty(i))
						if (tableModel.data[i].hasOwnProperty(j))
							str = tableModel.data[i][j];
					
					var cell:TableCell = craeteCell(str, chet? 0xCCCCCC:0xFFFFFF);
					cell.x = j * cell.width;
					cell.y = i * cell.height;
					
					addChild(cell);
					
					chet = !chet;
				}
			}
		}
		
		private function craeteCell(str:String, color:Number):TableCell 
		{
			return new TableCell(str, color);
		}
		
	}

}