package com.kaltura.kpvm.model
{
	import mx.collections.ArrayCollection;
	

	[Bindable]
	public class ManagementModel
	{
	
		
		
		public var entries:ArrayCollection;
		public var baseEmbed:String;
		
		
		
		
		/**
		 * singleton instance
		 */
		private static var _instance:ManagementModel;		
				
		public function ManagementModel(enforcer:Enforcer)
		{
		}

		
		/**
		 * singleton means of retreiving an instance of the
		 * <code>Model</code> class.
		 */
		public static function getInstance():ManagementModel {
			if (_instance == null) {
				_instance = new ManagementModel(new Enforcer());
				
			}
			return _instance;
		}
		
		
		
	}
}
class Enforcer {
	
}

