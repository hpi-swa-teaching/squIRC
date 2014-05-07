property-serveraddress
serverButton
	"From dialog"
	| dlg |
	dlg := IRCServerDialog on: IRCServer serversListByGroups.
	dlg parentDialog: self.
	self topView isNil
		ifFalse: [self hideWindow].
	dlg openDialog