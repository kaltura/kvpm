package com.kaltura.vo
{
	import com.kaltura.vo.KalturaYouTubeDistributionProfileBaseFilter;

	[Bindable]
	public dynamic class KalturaYouTubeDistributionProfileFilter extends KalturaYouTubeDistributionProfileBaseFilter
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
