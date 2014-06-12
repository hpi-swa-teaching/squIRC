panel building
channelTextMenu: aMenu 
	aMenu 
		addList: #(#('find (f)' #find) #('find again (g)' #findAgain) #('set search string (h)' #setSearchString) #('copy (c)' #copySelection) #('inspect channel observer' #inspectChannel)).
	connection gui frontMostPaneIsCloseable 
		ifTrue: [aMenu addList: #(#('close' #closeFrontMostWindow))].
	^aMenu