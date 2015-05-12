menu
helpMenu
	
	^[ :item | item
		contents: 'Help';
		subMenuUpdater: self
		selector: #YOLO: ]