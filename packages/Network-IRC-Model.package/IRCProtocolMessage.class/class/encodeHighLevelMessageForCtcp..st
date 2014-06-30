ctcp quoting - public
encodeHighLevelMessageForCtcp: aString 
	| ctcpQuoted |
	ctcpQuoted _ self ctcpQuote: aString.
	^ self lowQuote: ctcpQuoted