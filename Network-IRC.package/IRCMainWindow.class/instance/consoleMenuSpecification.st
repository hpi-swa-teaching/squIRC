console
consoleMenuSpecification 
	| list |
	list _ OrderedCollection new.
	list
		add: #('find (f)' #find);
		add: #('find again (g)' #findAgain);
		add: #('set search string' #setSearchString);
		add: #('copy (c)' #copySelection).
	self frontMostPaneIsCloseable
		ifTrue: [list add: #('close' #closeTab)].
	^ list