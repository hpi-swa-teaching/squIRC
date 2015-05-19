menu
buildItem: aGroup at: aMorph

	(self menuDictionary at: aGroup) 
			do: [:aSymbol | aMorph addItem: (self buildItem: (self menuDictionary: aSymbol))].