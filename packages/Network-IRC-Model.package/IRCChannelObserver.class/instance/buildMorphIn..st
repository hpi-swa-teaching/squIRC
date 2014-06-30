panel building
buildMorphIn: parentMorph 
	| topicHeight nicksWidth inputHeight channelTextPane |
	topicHeight := 48.
	nicksWidth := 120.
	inputHeight := self inputPaneHeight.
	self
		addTopicPaneTo: parentMorph
		fractions: (0 @ 0 corner: 1 @ 0)
		offsets: (0 @ 0 corner: nicksWidth negated @ topicHeight).
	channelTextPane := self
				addChannelTextTo: parentMorph
				fractions: (0 @ 0 corner: 1 @ 1)
				offsets: (0 @ topicHeight corner: nicksWidth negated @ inputHeight negated).
	self
		addUsersListTo: parentMorph
		fractions: (1 @ 0 corner: 1 @ 1)
		offsets: (nicksWidth negated @ 0 corner: 0 @ inputHeight negated).
	inPane := self
				addInputPaneTo: parentMorph
				fractions: (0 @ 1 corner: 1 @ 1)
				offsets: (0 @ inputHeight negated corner: 0 @ 0).
	channelTextPane keysInputPane: inPane