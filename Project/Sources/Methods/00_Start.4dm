//%attributes = {}
#DECLARE($flag : Integer)

var $ps; $win : Integer
var $options : Object
var $cr : Text

Case of 
	: (Count parameters:C259=0)
		
		If (Application version:C493<"1650")  // 16R5
			ALERT:C41(Get localized string:C991("AlertVersionError"); "Quit")
			QUIT 4D:C291
		Else 
			$ps:=New process:C317(Current method name:C684; 0; Current method name:C684; 0)
		End if 
		
	Else 
		
		$cr:=Char:C90(Carriage return:K15:38)
		
		If (Shift down:C543)  //  for debug purpose only
			$win:=Open form window:C675("HDI"; Plain form window:K39:10; Horizontally centered:K39:1; Vertically centered:K39:4)
		Else 
			$win:=Open form window:C675("HDI"; Pop up form window:K39:11; Horizontally centered:K39:1; Vertically centered:K39:4)
		End if 
		
		$options:=New object:C1471
		
		$options.title:=Get localized string:C991("HDITitle")
		
		$options.blog:="blog.4d.com"
		$options.info:=Get localized string:C991("HDIInfo")  //ex : "4D View Pro feature"
		
		$options.minimumVersion:="1700"  // 1650 means 16R5   1601 means 16.1 (do not use !)
		
		//$options.license:=4D View license  // IF ANY NEEDED
		//$options.license:=4D Write license  // IF ANY NEEDED
		
		DIALOG:C40("HDI"; $options)
		CLOSE WINDOW:C154
		
		If ($options.quit=True:C214)
			QUIT 4D:C291
		Else 
			
			$win:=Open form window:C675("HDI2"; Plain form window:K39:10; Horizontally centered:K39:1; Vertically centered:K39:4)
			DIALOG:C40("HDI2")
			CLOSE WINDOW:C154
			
		End if 
		
End case 

