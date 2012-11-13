package ui.components.switchComponent 
{
	import com.greensock.easing.Strong;
	import com.greensock.TweenLite;
	import patterns.events.LazyModeratorEvent;
	import ui.components.AbstractComponent;
	import ui.components.GraphicIcon;
	import ui.components.switchComponent.SwitchComponentModel;
	
	public class Switch extends AbstractComponent 
	{
		private var borderWidth:Number;
		private var borderHeight:Number;
		
		private var statusBur:GraphicIcon;
		public var status:Boolean = false;
		
		private static const BORDER_LINE_WIDTH:Number = 2;
		static private const BASE_HEIGHT:Number = 5;
		static private const BASE_WIDTH:Number = 12;
		private static var BORDER_LINE_HALF:Number = BORDER_LINE_WIDTH/2;
		private var model:SwitchComponentModel;
		
		private var switchStatus:Boolean = true;
		
		public function Switch(model:SwitchComponentModel) 
		{
			this.model = model;
			this.status = status;
			borderHeight = model.viewScale * BASE_HEIGHT;
			borderWidth = model.viewScale * BASE_WIDTH;
			
			initilize();
		}
		
		private function initilize():void 
		{
			statusBur = new GraphicIcon(borderWidth / 2 - BORDER_LINE_WIDTH, borderHeight - BORDER_LINE_WIDTH, 0xFFFFFF);
			addComponent(statusBur);
			statusBur.y = BORDER_LINE_HALF;
			statusBur.x = BORDER_LINE_HALF;
			
			drawOutline();
			
			statusBur.mouseChildren = false;
			statusBur.mouseEnabled = false;
			
			viewChangeMap = { 'status':switchBur };
			
			switchBur()
			
			model.addEventListener(LazyModeratorEvent.UPDATE_EVENT, onUpdate);
		}
		
		private function onUpdate(e:LazyModeratorEvent):void 
		{
			updateView(model.getFieldsList());
		}
		
		private function switchBur():void
		{
			if (switchStatus == model.status)
				return;
			
			var animationTime:Number = 1;
			var endX:Number = BORDER_LINE_HALF;
			
			if (model.status)
			{
				animationTime = (statusBur.x-BORDER_LINE_HALF)/100;
			}
			else
			{
				endX = borderWidth - statusBur.width - BORDER_LINE_HALF;
				animationTime = (statusBur.width + BORDER_LINE_HALF - statusBur.x)/100;
			}
			
			TweenLite.to(statusBur, animationTime, { x:endX, ease:Strong.easeOut } );
			
			switchStatus = model.status;
		}
		
		private function drawOutline():void
		{
			this.graphics.beginFill(0x333333);
			this.graphics.lineStyle(BORDER_LINE_WIDTH, 0x888888, 1, true, 'noScale', 'round');
			this.graphics.drawRect(0, 0, borderWidth, borderHeight);
		}
		
	}

}