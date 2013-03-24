package com.kaltura.kpvm.utils
{
	import com.kaltura.kpvm.model.Model;
	
	import mx.resources.ResourceManager;

	[Bindable]
	public class TextUtil
	{
		public function TextUtil()
		{
		}
		
		public static var model:Model = Model.getInstance();
		public static var localesObject:Object;
		public static var showKeys:Boolean = false;
		 
		public static function getText(key:String):String
		{
			if(showKeys)
				return key;
			localesObject = model.uiConfObject.locale;
			if(localesObject && localesObject.hasOwnProperty(key))
				return localesObject[key];
			return ResourceManager.getInstance().getString("kvpm",key);
		}
		
		
	}
}