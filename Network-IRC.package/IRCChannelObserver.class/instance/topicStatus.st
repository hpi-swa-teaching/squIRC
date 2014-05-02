as yet unclassified
topicStatus
	| count string |
	count _ self channelUsers size.
	string _ self topicStatusPrefix , count printString.
	status contents: string