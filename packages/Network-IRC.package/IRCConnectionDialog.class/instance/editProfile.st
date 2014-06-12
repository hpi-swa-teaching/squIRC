profiles
editProfile
	| profile |

	self profilesIndex ifNil: [^nil].
	profile := IRCConnectionProfile getProfileAt: self profilesIndex.
	profile 
		ifNil: [^ self inform: 'Could not find the selected profile'].
	self setupProfileDialog openDialogOn: profile