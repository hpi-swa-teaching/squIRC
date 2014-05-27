mIRC lines
extractPortsFrom: aString 
	"The only safe way to do this is scan from the tail looking for a 
	non-digit char that is not a comma or dash."
	| posn char start end portsString portTokens portNumbers index first last |
	posn := aString size.
	[char := aString at: posn.
	posn > 1
		and: [(char isDigit
					or: [char = $,])
				or: [char = $-]]]
		whileTrue: [posn := posn - 1].
	start := posn + 1.
	end := aString size.
	portsString := aString copyFrom: start to: end.
	portTokens := portsString findTokens: ','.
	portNumbers := OrderedCollection new.
	portTokens
		do: [:each | 
			index := each indexOf: $-.
			index > 0
				ifTrue: ["range"
					first := (each copyFrom: 1 to: index - 1) asNumber.
					last := (each copyFrom: index + 1 to: each size) asNumber.
					first
						to: last
						do: [:intval | portNumbers add: intval]]
				ifFalse: [portNumbers add: each asNumber]].
	^ portNumbers