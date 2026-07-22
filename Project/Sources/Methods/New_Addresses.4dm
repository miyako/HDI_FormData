//%attributes = {"invisible":true}
// ----------------------------------------------------
// Nom utilisateur (OS) : fmainguene
// Date et heure : 01/08/17, 11:52:34
// ----------------------------------------------------
// Méthode : New_Addresses
// Description
// Inititialization of the objects: "InvoiceAddress" and "DeliveryAddress"
// ----------------------------------------------------

//initialization of the invoice address objects
InvoiceAddress1:=New object:C1471
InvoiceAddress1.CompanyName:="4D"
InvoiceAddress1.LastName:="Dupont"
InvoiceAddress1.FirstName:="Frederic"
InvoiceAddress1.AddressLine1:="Parc Les Erables Bât 4"
InvoiceAddress1.AddressLine2:="66, route de Sartrouville"
InvoiceAddress1.ZipCode:="78230"
InvoiceAddress1.City:="LE PECQ"
InvoiceAddress1.Country:="FRANCE"


InvoiceAddress2:=New object:C1471
InvoiceAddress2.CompanyName:="TheCompany"
InvoiceAddress2.LastName:="Doe"
InvoiceAddress2.FirstName:="Jane"
InvoiceAddress2.AddressLine1:="210 2nd Avenue"
InvoiceAddress2.AddressLine2:="NY 1003"
InvoiceAddress2.ZipCode:="1003"
InvoiceAddress2.City:="New York"
InvoiceAddress2.Country:="USA"


//initialization of the delivery address object
// Set the default address
InvoiceAddress:=New object:C1471
InvoiceAddress.CompanyName:="4D"
InvoiceAddress.LastName:="Smith"
InvoiceAddress.FirstName:="John"
InvoiceAddress.AddressLine1:="95 S. Market Street"
InvoiceAddress.AddressLine2:="Suite #240"
InvoiceAddress.ZipCode:="CA 95113"
InvoiceAddress.City:="San Jose"
InvoiceAddress.Country:="USA"
// set the default labels in english
InvoiceAddress.Label:=Address_EN