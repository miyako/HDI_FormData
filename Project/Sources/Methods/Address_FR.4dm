//%attributes = {}
// ----------------------------------------------------
// Nom utilisateur (OS) : fmainguene
// Date et heure : 01/08/17, 11:56:24
// ----------------------------------------------------
// Méthode : Address_FR
// Description
// Creation of an object with french labels
// Paramètres
// $0 -> Return the filled object with french labels
// ----------------------------------------------------

C_OBJECT:C1216($lang; 0)

$lang:=New object:C1471

$lang.CompanyName:="Entreprise :"
$lang.LastName:="Nom :"
$lang.FirstName:="Prénom :"
$lang.AddressLine1:="Addresse 1 :"
$lang.AddressLine2:="Addresse 2 :"
$lang.ZipCode:="Code postal :"
$lang.City:="Ville :"
$lang.Country:="Pays :"

$0:=$lang
