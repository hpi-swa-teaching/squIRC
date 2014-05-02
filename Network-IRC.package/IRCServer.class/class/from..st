instance creation
from: aString 
	"Answers either a valid server or nil if the line <aString> is no good."

	| candidate |
	aString isNil ifTrue: [^nil].
	aString isEmpty ifTrue: [^nil].
	aString first = $; ifTrue: [^nil].
	aString first = $[ ifTrue: [^nil].
	candidate := self new.
	candidate configureFromString: aString.
	^candidate