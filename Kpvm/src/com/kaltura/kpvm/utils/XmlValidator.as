package com.kaltura.kpvm.utils
{
	public class XmlValidator
	{
		public function XmlValidator()
		{
		}
		
		public static var error:String
			
		public static function validate(str:String):Boolean
		{
			XmlValidator.error = "";
			
			var valid:Boolean = true;
			try
			{
				var validXML:XML = new XML(str);
			} 
			catch(error:Error) 
			{
				valid = false;
			}
			if(!valid)
			{
				XmlValidator.error = TextUtil.getText('xml_validate_error');					
				return false;
			}
			
			
			var tempXML:XML = XML(str);
			var cleanText:String = str; 
			cleanText = cleanText.split("\n").join("");
			cleanText = cleanText.split("\r").join("");
			cleanText = cleanText.split("\t").join("");
			cleanText = cleanText.split(" ").join("");
			if (cleanText.length == 0)
				return true;
			
			if(tempXML.name()!='times')
			{
				XmlValidator.error = TextUtil.getText('xml_validate_top_tag');					
				return false;
			}
			
			var childrenList:XMLList = tempXML.children();
			for each (var child:XML in childrenList )
			{
				if (child.name()!='time')
				{
					XmlValidator.error = TextUtil.getText('xml_validate_in_node')+" "+child.toXMLString();						
					return false;
				}
				var innerChildrens:XMLList = child.children();
				for each (var innerChild:XML in innerChildrens )
				{
					if (innerChild.name()!='video' && innerChild.name()!='slide')
					{
						XmlValidator.error = TextUtil.getText('xml_validate_in_node')+" "+child.name();						
						return false;
					}
				}
				
			}
			return true;
			
			
			
			
		}
	}
}