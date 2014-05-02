as yet unclassified
example
	"IRCProfileDialog example"
	| profile dlg |
	profile := IRCConnectionProfile default.
	dlg := self new.
	dlg openDialogOn: profile