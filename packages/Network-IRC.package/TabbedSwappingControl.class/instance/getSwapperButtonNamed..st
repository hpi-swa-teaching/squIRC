private
getSwapperButtonNamed: aPaneName

	self swapper
			ifNil: [^ nil].
	^self swapper submorphs
				select: [:m | m label asString = aPaneName]