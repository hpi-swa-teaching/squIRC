as yet unclassified
firstTimePromptsCheck
	| success |
	success := true.
	self nick = IRCConnectionProfile defaultDefaultNick
		ifTrue: [self inform: 'No default profile values were found.  

You will be prompted for a few parameters and then the window will open.  
If you choose cancel at any of these prompts, the IRC browser cannot be launched.

You should only be asked these questions once.'.
			success := IRCConnectionProfile initializeDefaultsPrompted.
			success
				ifTrue: [self loadProfile: IRCConnectionProfile default]].
	^ success