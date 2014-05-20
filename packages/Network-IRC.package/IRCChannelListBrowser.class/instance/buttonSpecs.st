constants
buttonSpecs
	^ {
		{#channelListJoinSelectedButtonTag. #openSelectedChannel. #none. 'Join the channel selected in the channel list.'}. 
		{#channelListJoinMenuButtonTag. #openPromptedChannel. #none. 'Join or Create a channel specified in the menu'}. 
		{#channelListDownloadButtonTag. #requestChannelList. #none. 'Refresh the channel list'}
	}