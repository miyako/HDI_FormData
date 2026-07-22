//%attributes = {"invisible":true}
// ----------------------------------------------------
// Nom utilisateur (OS) : fmainguene
// Date et heure : 01/08/17, 11:57:42
// ----------------------------------------------------
// Méthode : Initinfo
// Description
// Initialization of the information message
// ----------------------------------------------------

var $json : Collection
$json:=JSON Parse:C1218(File:C1566(Localized document path:C1105("Samples.json"); fk platform path:K87:2).getText())
var $sample : Object
$sample:=$json.query("ID == :1"; 1).first()
TextInfo:=$sample.Label