as yet unclassified
selectedUser
	"return the name of the selected user, or nil if none"
	
	^self userList at: self userIndex ifAbsent: [nil]