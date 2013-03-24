package com.kaltura.kpvm.business
{
	import mx.core.Application;
	import mx.managers.CursorManager;

	public class BusyManager
	{
		public static var app:Application; 
		
		public function BusyManager()
		{
		}
		public static function set busy(value:Boolean):void
		{
			if(value)
			{
				CursorManager.setBusyCursor();
			}else
			{
				CursorManager.removeBusyCursor();
			}
			app.enabled = !value;
				
		}
			
	}
}