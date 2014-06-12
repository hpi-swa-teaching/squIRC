profiles
addProfile
	| dlg |
	
	dlg := self setupProfileDialog.
	dlg openForAddWithOptions: IRCOptionsManagement savedOptions copy