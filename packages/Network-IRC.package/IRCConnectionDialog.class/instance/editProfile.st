profiles
editProfile
	| profile |

	self profilesIndex ifNil: [^nil].
	profile := IRCConnectionProfile getProfileAt: self profilesIndex.
	profile 
		ifNil: [^nil].
	self setupProfileDialog openDialogOn: profile