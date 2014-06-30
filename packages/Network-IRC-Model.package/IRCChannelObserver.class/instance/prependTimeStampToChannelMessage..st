channel pane text
prependTimeStampToChannelMessage: aString 
	| ts tm |

	ts := TimeStamp current.
	tm := ts time.
	^ (tm print24 asText , ' ', aString)