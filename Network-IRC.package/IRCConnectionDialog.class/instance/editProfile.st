profiles
editProfile
	| key profile dlg |
	profilesIndex == nil
		ifTrue: [^ nil].
	key := profilesIndex.
	profile := IRCConnectionProfile getProfileNamed: key.
	profile isNil
		ifTrue: [^ self inform: 'Could not find the selected profile'].
	dlg := self setupProfileDialog.
	dlg openDialogOn: profile
	"disableAdvanced: true"