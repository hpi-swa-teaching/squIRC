as yet unclassified
updateUsers
	self calculateWidestNick.
	self changed: #channelUsersFormatted.
	self topicStatus.
	self updateTopicPaneState