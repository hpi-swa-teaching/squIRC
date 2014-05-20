as yet unclassified
checkForMissingOptions
	self defaultOptionKeys
		do: [:key | (SavedOptions includesKey: key)
				ifFalse: [self optionKeyMissing: key]]