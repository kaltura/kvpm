package com.kaltura.vo
{
	import com.kaltura.vo.KalturaLiveStreamEntryBaseFilter;

	[Bindable]
	public dynamic class KalturaLiveStreamEntryFilter extends KalturaLiveStreamEntryBaseFilter
	{
		override public function getUpdateableParamKeys():Array
		{
			var arr : Array;
			arr = super.getUpdateableParamKeys();
			return arr;
		}

		override public function getInsertableParamKeys():Array
		{
			var arr : Array;
			arr = super.getInsertableParamKeys();
			return arr;
		}

	}
}
