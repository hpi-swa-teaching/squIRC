encoding
printOn: stream 
	| indent |
	indent := '    '.
	super printOn: stream.
	self printOn: stream indentString: indent 