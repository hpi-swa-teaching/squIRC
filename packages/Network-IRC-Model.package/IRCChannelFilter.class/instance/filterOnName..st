private
filterOnName: aCollection 
	| filter |
	filter := self adjustFilter: self nameFilter.
	^ aCollection
		select: [:each | filter match: each name]