parse mIRC entries
extractServerAddressFrom: aString 
	"The only safe way to do this is scan from the tail looking for a 
	non-digit char that is not a comma or dash."
	| posn char start end |
	posn := aString size.
	[char := aString at: posn.
	posn > 1
		and: [(char isDigit
					or: [char = $,])
				or: [char = $-]]]
		whileTrue: [posn := posn - 1].
	start := 1.
	end := posn - 1.
	^ aString copyFrom: start to: end