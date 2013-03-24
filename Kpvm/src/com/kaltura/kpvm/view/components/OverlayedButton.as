package com.kaltura.kpvm.view.components
{
	import flash.display.DisplayObject;
	
	import mx.controls.Button;
	
	public class OverlayedButton extends Button
	{
		public function OverlayedButton()
		{
			super();
		}
		
		public var overlayedItem:DisplayObject;
		
		override protected function updateDisplayList(unscaledWidth:Number, unscaledHeight:Number):void
		{
			super.updateDisplayList(unscaledWidth, unscaledHeight);
			if(overlayedItem)
			{
				overlayedItem.width = unscaledWidth;
				overlayedItem.height = unscaledHeight;
				addChild(overlayedItem);
			}
		}
	}
}