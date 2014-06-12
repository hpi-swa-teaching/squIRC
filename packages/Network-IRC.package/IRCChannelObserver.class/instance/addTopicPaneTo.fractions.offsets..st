panel building
addTopicPaneTo: morph fractions: fractions offsets: offsets 
	| topicMorph |
	topicMorph _ PluggableTextMorph
				on: self
				text: #topic
				accept: #changeTopic:.
	channel addDependent: topicMorph.
	topicMorph acceptOnCR: true;
		 name: 'topicPane';
		 color: IRCClientColors channelTopicPane.
	morph
		addMorph: topicMorph
		fullFrame: (LayoutFrame fractions: fractions offsets: offsets)