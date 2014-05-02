as yet unclassified
selectedUser
	"return the name of the selected user, or nil if none"
	^userList at: userIndex ifAbsent: [nil ].