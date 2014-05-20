as yet unclassified
modeChanged: mode forMemberNamed: aString 
	| member |
	member _ self findMember: aString.
	member isNil
		ifTrue: [^ nil].
	member modeChanged: mode.
	members reSort