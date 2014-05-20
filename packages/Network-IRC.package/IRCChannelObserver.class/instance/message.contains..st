as yet unclassified
message: aMessage contains: aNick
	| messageString nickString regexString |
	
	messageString := ' ' , aMessage asString asIRCLowercase , ' '.
	nickString := aNick asIRCLowercase.
	regexString := '.*\s' , nickString , '[^A-Z^a-z^0-9^/].*'.
	^messageString matchesRegex: regexString