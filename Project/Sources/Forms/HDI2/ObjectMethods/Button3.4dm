C_LONGINT:C283($win)

// 前回の結果を隠します
OBJECT SET VISIBLE:C603(*; "RES@"; False:C215)

// ウィンドウを開きます
$win:=Open form window:C675("Edit_Address"; Movable form dialog box:K39:8)

// InvoiceAddress2 オブジェクトをパラメーターに受け渡してフォームを開きます
// フォーム上でFormコマンドを使い、InvoiceAddress2 オブジェクトを表示、編集することができます
DIALOG:C40("Edit_Address"; InvoiceAddress2)

CLOSE WINDOW:C154($win)

// 結果を表示します
OBJECT SET VISIBLE:C603(*; "RES_@"; True:C214)
OBJECT SET VISIBLE:C603(*; "RES2_@"; True:C214)
Result:=InvoiceAddress2