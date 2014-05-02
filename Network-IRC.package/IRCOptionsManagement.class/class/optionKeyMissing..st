as yet unclassified
optionKeyMissing: aString 
	| defaultValue |
	defaultValue _ self defaultOptionValues at: aString.
	SavedOptions at: aString put: defaultValue.
	OptionsDescriptions at: aString put: aString.
	OptionsHelp at: aString put: aString