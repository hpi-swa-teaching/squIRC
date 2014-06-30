private
markIfURL: messageTextOrString startingAt: start
	|  messageText urlStart urlEnd |

	messageText _ messageTextOrString asText.
	urlStart _ messageText findString: 'http://' startingAt: start caseSensitive: false.
	urlStart  == 0
		ifTrue: [^messageText].

	urlEnd _ self endOfURL: messageText startingAt: urlStart.

	messageText addAttribute: 
		(TextURL new url: ((messageText copyFrom: urlStart to: urlEnd) asString)) from: urlStart to: urlEnd.

	^self markIfURL: messageText startingAt: urlEnd