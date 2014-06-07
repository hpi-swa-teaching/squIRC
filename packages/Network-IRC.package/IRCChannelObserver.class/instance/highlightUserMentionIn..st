as yet unclassified
highlightUserMentionIn: aText
	"Find any mention of the users nickname and highlight them (plus play a totally awesome sound)."
	| messageString nickString regexString startSearch |
		
	messageString := aText asString.
	nickString := connection nick asString.
	regexString := '[\s]?\b' , nickString , '\b[\s]?'.
	startSearch := 0.
	messageString regex: regexString matchesDo: 
		[:match | | matchLocation matchEnd |
		IRCClientSounds channelNickMessageArrived.
		match regex: '[\s]?\b' , nickString matchesDo: [:shortMatch |
			matchLocation := messageString findString: shortMatch startingAt: startSearch.
			matchLocation > 0 ifTrue: [
				matchEnd := matchLocation + shortMatch size - 1.
				aText makeBoldFrom: matchLocation to:  matchEnd.
				aText 	addAttribute: (TextColor color: (IRCClientColors userNameColorFromHash: nickString)) 
						from: matchLocation 
						to: matchEnd.
				startSearch := matchEnd]].
		]