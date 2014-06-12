as yet unclassified
openMorphicView
	"open a view for interacting with this collector"
	| win |
	win _ IRCSystemWindow new.
	win setLabel: channel name.
	win model: self.
	self buildMorphIn: win.
	win openInWorld.
	self justOpened