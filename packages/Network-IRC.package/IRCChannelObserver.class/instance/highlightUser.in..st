as yet unclassified
highlightUser: aNickString in: aText
	"Find any mention of the users nickname and highlight them (plus play a totally awesome sound)."
	| messageString regexString startSearch |
		
	messageString := aText asString.
	regexString := '[\s]?\b' , aNickString , '\b[\s]?'.
	startSearch := 0.
	messageString regex: regexString matchesDo: 
		[:match | | matchLocation matchEnd |
		IRCClientSounds channelNickMessageArrived.
		match regex: '[\s]?\b' , aNickString matchesDo: [:shortMatch |
			matchLocation := messageString findString: shortMatch startingAt: startSearch.
			matchLocation > 0 ifTrue: [
				matchEnd := matchLocation + shortMatch size - 1.
				aText makeBoldFrom: matchLocation to:  matchEnd.
				aText 	addAttribute: (TextColor color: (IRCClientColors userNameColorFromHash: aNickString)) 
						from: matchLocation 
						to: matchEnd.
				startSearch := matchEnd]]]