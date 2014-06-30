private
convertTextUsingMIRCColors: aTextOrString locs: locs 
	| cr colors result posn piece attr |
	cr _ Character cr.
	result _ TextStream on: '' asText.
	posn _ 1.
	attr _ TextColor black.
	locs keys asSortedCollection
		do: [:key | 
			piece _ aTextOrString copyFrom: posn to: key - 1.
			result
				withAttribute: attr
				do: [result nextPutAll: piece].
			(locs at: key)
					= cr
				ifTrue: [attr _ TextColor black.
					result
						nextPut: (locs at: key).
					posn _ key + 1]
				ifFalse: [(self isNextCharacterANumberIn: aTextOrString startingAt: key)
						ifTrue: [colors _ self extractColorCodesFrom: aTextOrString at: key.
							posn _ key + 1
										+ (colors at: #skipped).
							(colors at: #foreground)
									== nil
								ifFalse: [attr _ IRCClientColors mircColorFor: (colors at: #foreground) asNumber].
							(colors at: #background)
									== nil
								ifFalse: [(colors at: #background)]]
						ifFalse: [attr _ TextColor black.
							posn _ key + 1]]].
	posn < aTextOrString size
		ifTrue: [piece _ aTextOrString copyFrom: posn to: aTextOrString size.
			result nextPutAll: piece].
	^ result contents