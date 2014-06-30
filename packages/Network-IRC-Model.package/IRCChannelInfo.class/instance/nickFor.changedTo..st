as yet unclassified
nickFor: oldName changedTo: newName 
	| member |
	member _ self findMember: oldName.
	member isNil
		ifTrue: [^ nil].
	member nick: newName