property-serveraddress
serverButton
	"From dialog"
	| dlg |
	dlg := (IRCServerDialog on: self profile server)
		parentDialog: self.
	self topView ifNotNil: [self hideWindow].
	dlg openDialog