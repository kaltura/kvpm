package com.kaltura.commands.baseEntry
{
	import com.kaltura.vo.KalturaBaseEntryFilter;
	import com.kaltura.vo.KalturaFilterPager;
	import com.kaltura.delegates.baseEntry.BaseEntryListDelegate;
	import com.kaltura.net.KalturaCall;

	public class BaseEntryList extends KalturaCall
	{
		public var filterFields : String;
		/**
		 * @param filter KalturaBaseEntryFilter
		 * @param pager KalturaFilterPager
		 **/
		public function BaseEntryList( filter : KalturaBaseEntryFilter=null,pager : KalturaFilterPager=null )
		{
			service= 'baseentry';
			action= 'list';

			var keyArr : Array = new Array();
			var valueArr : Array = new Array();
			var keyValArr : Array = new Array();
 			if (filter) { 
 			keyValArr = kalturaObject2Arrays(filter, 'filter');
			keyArr = keyArr.concat(keyValArr[0]);
			valueArr = valueArr.concat(keyValArr[1]);
 			} 
 			if (pager) { 
 			keyValArr = kalturaObject2Arrays(pager, 'pager');
			keyArr = keyArr.concat(keyValArr[0]);
			valueArr = valueArr.concat(keyValArr[1]);
 			} 
			applySchema(keyArr, valueArr);
		}

		override public function execute() : void
		{
			setRequestArgument('filterFields', filterFields);
			delegate = new BaseEntryListDelegate( this , config );
		}
	}
}
