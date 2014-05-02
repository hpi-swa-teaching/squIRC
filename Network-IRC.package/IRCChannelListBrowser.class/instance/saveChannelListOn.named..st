as yet unclassified
saveChannelListOn: aStream named: aString 
	channelList
		do: [:channel | aStream nextPutAll: channel name;
				 tab;
				 nextPutAll: channel numUsers printString;
				tab;
				 nextPutAll: channel topic;
				 cr]
		displayingProgress: 'Saving channel information on ' , aString