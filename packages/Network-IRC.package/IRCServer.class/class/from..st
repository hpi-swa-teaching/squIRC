instance creation
from: aString 

	^(self new)
		configureFromString: aString;
		yourself