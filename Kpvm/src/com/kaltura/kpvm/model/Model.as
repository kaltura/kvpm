package com.kaltura.kpvm.model
{
	import com.kaltura.KalturaClient;
	
	import mx.collections.ArrayCollection;

	[Bindable]
	public class Model
	{
		public var client:KalturaClient;
		public var partnerId:String;
		public var userId:String;
		public var flashvars:Object;	
		public var uiConfObject:Object;
		public var loggedIn:Boolean = false;	
		public var categories:ArrayCollection;
		
		
		
		/**
		 * singleton instance
		 */
		private static var _instance:Model;		
				
		public function Model(enforcer:Enforcer)
		{
		}

		
		/**
		 * singleton means of retreiving an instance of the
		 * <code>Model</code> class.
		 */
		public static function getInstance():Model {
			if (_instance == null) {
				_instance = new Model(new Enforcer());
				
			}
			return _instance;
		}
		
		
		
	}
}
class Enforcer {
	
}

