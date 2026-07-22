//%attributes = {}
#DECLARE($params : Object)

var $splashWindowTitle : Text
$splashWindowTitle:=""

If (Count parameters:C259=0)
	
	ARRAY LONGINT:C221($windows; 0)
	WINDOW LIST:C442($windows)
	
	var $i; $window : Integer
	For ($i; 1; Size of array:C274($windows))
		$window:=$windows{$i}
		If (Window process:C446($window)=1) && (Get window title:C450($window)=$splashWindowTitle)
			var $x; $y; $bottom; $right : Integer
			GET WINDOW RECT:C443($x; $y; $bottom; $right; $window)
			CALL FORM:C1391($window; Formula:C1597(SET WINDOW RECT:C444($x; $y; $bottom; $right; $window)))
			return 
		End if 
	End for 
	
	CALL WORKER:C1389(1; Current method name:C684; {})
	
Else 
	
	SET MENU BAR:C67(1)
	
	var $options : Object
	$options:=New object:C1471
	$options.title:=Localized string:C991("HDI_Title")
	$options.blog:="blog.4d.com"
	$options.info:=Localized string:C991("HDI_Info")
	$options.minimumVersion:="1700"
	//$options.license:=4D View license:K44:4  // uncomment if needed
	//$options.license:=4D Write license:K44:2  // uncomment if needed
	
	$window:=Open form window:C675("HDI"; Plain form window:K39:10; Horizontally centered:K39:1; Vertically centered:K39:4)
	SET WINDOW TITLE:C213($splashWindowTitle; $window)
	DIALOG:C40("HDI"; $options; *)
	
End if 

