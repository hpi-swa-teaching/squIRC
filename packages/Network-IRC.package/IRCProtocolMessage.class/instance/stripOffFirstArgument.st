slash commands translation
stripOffFirstArgument
	"Everything is okay except we need to strip off the first argument if 
	there is a 2nd."
	arguments size > 1
		ifTrue: [arguments _ Array with: arguments second]