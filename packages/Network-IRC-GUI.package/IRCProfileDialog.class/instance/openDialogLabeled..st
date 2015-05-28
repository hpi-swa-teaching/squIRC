dialog creation
openDialogLabeled: aString
	| dialog |
	dialog := IRCSystemWindow new.
	mainWin addWindowToClose:  dialog.
	dialog model: self.
	self buildDialogOn: dialog.
	dialog setLabel: aString.
	canceled := false.
	dialog openInWorld