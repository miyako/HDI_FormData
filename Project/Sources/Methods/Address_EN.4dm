//%attributes = {}
// ----------------------------------------------------
// Nom utilisateur (OS) : fmainguene
// Date et heure : 01/08/17, 11:54:11
// ----------------------------------------------------
// Méthode : Address_EN
// Description
// Creation of an object with english labels
// Paramètres
// $0 -> Return the filled object with english labels
// ----------------------------------------------------

C_OBJECT:C1216($lang; 0)

$lang:=New object:C1471

$lang.CompanyName:="Company name:"
$lang.LastName:="Last name:"
$lang.FirstName:="First name:"
$lang.AddressLine1:="Address line 1:"
$lang.AddressLine2:="Address line 2:"
$lang.ZipCode:="Zip code:"
$lang.City:="City:"
$lang.Country:="Country:"

$0:=$lang
