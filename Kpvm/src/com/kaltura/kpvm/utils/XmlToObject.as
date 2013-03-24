package com.kaltura.kpvm.utils
{
	public class XmlToObject
	{
		public function XmlToObject()
		{
		}
		
		public static function parse(input:XML, recursive:Boolean = true):Object
		{
			var children:XMLList = input.children();
			var attributes:XMLList;
			var nodeName:String;
			var node:XML;
			var firstNode:XML;
			var output:Object = {};
			//convert XML to object
			for each(node in children)
			{
				nodeName = String(node.name());
				firstNode = node.children()[0];
				if (firstNode)
				{
					switch(firstNode.nodeKind())
					{
						case "text": output[nodeName] = strParse(String(node.text())); break;
						case "element": if (recursive) output[nodeName] = parse(node, recursive); break;
					}
				}
				attributes = node.attributes();
				for each(node in attributes) { output[nodeName + "_" + String(node.name())] = strParse(String(node[0])); }
			}
			return output;
		}
		
		private static function strParse(string:String):*
		{
			if (string.replace(/s*((true)|(false))s*/i, '') == '') return string.replace(/s*(true)s*/i, '') == '';
			if (string.replace(/s*[0-9]+(?:.[0-9])?s*/, '') == '') return Number(string);
			return string;
		}
	}
}