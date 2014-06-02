instance creation
from: aString 

	^(self new)
		configureFromMIRCLine: aString;
		yourself