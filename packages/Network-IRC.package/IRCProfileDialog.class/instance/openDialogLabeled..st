dialog creation
openDialogLabeled: aString
	| dialog |
	dialog := SystemWindow new.
	dialog model: self.
	self buildDialogOn: dialog.
	dialog setLabel: aString.
	canceled := false.
	dialog openInWorld