as yet unclassified
serverList
	| group servers |
	self selectedGroupIndex = 0
		ifTrue: [^ #()].
	group _ self selectedGroup.
	servers _ self serversDict at: group.
	^ servers
		collect: [:x | x serverName]