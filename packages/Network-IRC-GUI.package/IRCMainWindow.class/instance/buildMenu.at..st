menu
buildMenu: aGroup at: aMorph

	(self menuDictionary at: aGroup) 
			do: [:aSymbol | aMorph addItem: (self buildMenu: (self menuDictionary: aSymbol))].