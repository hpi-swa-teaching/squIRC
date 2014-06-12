as yet unclassified
findMember: memberName 
	| index |
	index _ members
				findFirst: [:each | each nick = memberName].
	index = 0
		ifTrue: [^ nil].
	^members at: index.
