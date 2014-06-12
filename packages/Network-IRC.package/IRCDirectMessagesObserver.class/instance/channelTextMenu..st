pane building
channelTextMenu: aMenu 
	aMenu 
		addList: #(#('find' #find) #('find again' #findAgain) #('set search string' #setSearchString) #('copy' #copySelection)).
	connection gui frontMostPaneIsCloseable 
		ifTrue: [aMenu addList: #(#('close' #closeFrontMostWindow))].
	^aMenu