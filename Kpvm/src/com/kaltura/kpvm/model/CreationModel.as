package com.kaltura.kpvm.model
{
	import mx.collections.ArrayCollection;

	[Bindable]
	public class CreationModel
	{
		
		
		public var media:ArrayCollection; 
		public var docs:ArrayCollection; 
		public var swfFlavorParamId:int; 
		
		public var selectedMedia:*;
		public var selectedDoc:*;
		public var syncXml:XML;
		
		
		public function CreationModel(enforcer:Enforcer)
		{
		}
		/**
		 * singleton means of retreiving an instance of the
		 * <code>Model</code> class.
		 */
		public static function getInstance():CreationModel {
			if (_instance == null) {
				_instance = new CreationModel(new Enforcer());
				
			}
			return _instance;
		}
		
		/**
		 * singleton instance
		 */
		private static var _instance:CreationModel;	
		}
}

class Enforcer {
	
}