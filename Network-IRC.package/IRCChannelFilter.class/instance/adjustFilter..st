private
adjustFilter: aString
	| filter |
	filter := aString.
	(filter beginsWith: '*')
		ifFalse: [filter := '*' , filter].
	(filter endsWith: '*')
		ifFalse: [filter := filter , '*'].
^filter