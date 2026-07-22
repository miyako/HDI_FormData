var InvoiceAddress : Object
var DeliveryAddress : Object

Case of 
	: (Form event code:C388=On Load:K2:1)
		Initinfo
		
	: (Form event code:C388=On Page Change:K2:54)
		If (tabcontrol=2)
			New_Addresses
		End if 
		If (tabcontrol=3)
			New_Addresses
		End if 
		
		
	Else 
		
		ALERT:C41("Event not managed")
		
End case 