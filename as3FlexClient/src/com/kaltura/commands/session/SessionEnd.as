package com.kaltura.commands.session
{
	import com.kaltura.delegates.session.SessionEndDelegate;
	import com.kaltura.net.KalturaCall;

	public class SessionEnd extends KalturaCall
	{
		public var filterFields : String;
		/**
		 **/
		public function SessionEnd(  )
		{
			service= 'session';
			action= 'end';

			var keyArr : Array = new Array();
			var valueArr : Array = new Array();
			var keyValArr : Array = new Array();
			applySchema(keyArr, valueArr);
		}

		override public function execute() : void
		{
			setRequestArgument('filterFields', filterFields);
			delegate = new SessionEndDelegate( this , config );
		}
	}
}
