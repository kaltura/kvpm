package com.kaltura.commands.entryDistribution
{
	import com.kaltura.delegates.entryDistribution.EntryDistributionSubmitFetchReportDelegate;
	import com.kaltura.net.KalturaCall;

	public class EntryDistributionSubmitFetchReport extends KalturaCall
	{
		public var filterFields : String;
		/**
		 * @param id int
		 **/
		public function EntryDistributionSubmitFetchReport( id : int )
		{
			service= 'contentdistribution_entrydistribution';
			action= 'submitFetchReport';

			var keyArr : Array = new Array();
			var valueArr : Array = new Array();
			var keyValArr : Array = new Array();
			keyArr.push('id');
			valueArr.push(id);
			applySchema(keyArr, valueArr);
		}

		override public function execute() : void
		{
			setRequestArgument('filterFields', filterFields);
			delegate = new EntryDistributionSubmitFetchReportDelegate( this , config );
		}
	}
}
