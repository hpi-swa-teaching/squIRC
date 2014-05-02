ctcp quoting - public
decodeHighLevelMessageFromCtcp: aString 
	| ctcpQuoted |
	ctcpQuoted _ self lowDequote: aString.
	^ self ctcpDequote: ctcpQuoted