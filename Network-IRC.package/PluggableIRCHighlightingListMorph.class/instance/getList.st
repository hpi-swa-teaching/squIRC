as yet unclassified
getList
	"Answer the list to be displayed. Caches the returned list in the 'list' ivar"
	getListSelector == nil
		ifTrue: [^ #()].
	model isNil
		ifTrue: [^ #()].
	list := model perform: getListSelector.
	list == nil
		ifTrue: [^ #()].
	^ list