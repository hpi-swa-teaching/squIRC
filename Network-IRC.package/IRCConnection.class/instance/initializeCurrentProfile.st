private
initializeCurrentProfile
	IRCConnectionProfile currentProfile isValid 
		ifFalse: [IRCProfileDialog new openDialogOn:
					(IRCConnectionProfile currentProfile)].
	"server := IRCConnectionProfile defaultServer.
	port := IRCConnectionProfile defaultPort.
	nick := IRCConnectionProfile defaultNick.
	userName := IRCConnectionProfile defaultUserName.
	fullName := IRCConnectionProfile defaultFullNam"