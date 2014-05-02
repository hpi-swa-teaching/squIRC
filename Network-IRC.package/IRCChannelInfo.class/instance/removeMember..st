access
removeMember: memberName 
	"note that memberName has left (PART-ed or QUIT-ed) the channel"
	| member |
	member _ self findMember: memberName.
	member isNil ifTrue: [^nil].
	members
		remove: member
		ifAbsent: [^ self].
	self changed: #memberNames