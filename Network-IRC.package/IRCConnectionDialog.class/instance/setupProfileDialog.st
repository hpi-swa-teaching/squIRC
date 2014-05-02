profiles
setupProfileDialog
	| dlg |
	dlg := IRCProfileDialog new.
	dlg parentDialog: self.
	dlg referenceConnection: connection.
	self hideWindow.
	^dlg