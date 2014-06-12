as yet unclassified
channelUser
	self selectedUser = 0 ifTrue: [^nil].
	^ self channelUsers at: self selectedUser