private
extractColorCodesFrom: aText at: anInteger 
	"Should find any of:  
	nABC  
	nnABC  
	n,nABC  
	nn,nABC  
	nn,nnABC  
	(where ABC is following text containing letters but not beginning with  
	a digit if only one value of 'n' is found. The ABC could start with a  
	comma). Answer a dictionary containing settings found for foreground  
	and background colors. If no background color setting is found the  
	value will be returned as nil. The amount of characters we skip are  
	included in the result too."
	| result start stop extract commaPos limit foregroundString backgroundString |
	result _ Dictionary new.
	result at: #foreground put: nil.
	result at: #background put: nil.
	start _ anInteger.
	stop _ start.
	[(self isNextCharacterACommaIn: aText startingAt: stop)
		or: [self isNextCharacterANumberIn: aText startingAt: stop]]
		whileTrue: [stop _ stop + 1].
	stop = start
		ifFalse: [extract _ aText copyFrom: start + 1 to: stop.
			commaPos _ extract indexOf: $,.
			limit _ commaPos = 0
						ifTrue: [stop]
						ifFalse: [start + commaPos - 1].
			foregroundString _ aText copyFrom: start + 1 to: limit.
			backgroundString _ commaPos = 0
						ifFalse: [aText copyFrom: limit + 2 to: stop]].
	foregroundString isNil
		ifFalse: [result at: #foreground put: foregroundString].
	backgroundString isNil
		ifFalse: [result at: #background put: backgroundString].
	result at: #skipped put: stop - start.
	^ result