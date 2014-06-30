A connection to an IRC server.  This handles spooling messages in and out, and converts between network commands and more convenient data structures.

Start up an instance along with an interface with:

		IRCConnection new openView

<tabs> holds a Set of pane names that are being swapped.

We recv text from any one of three kinds of panes.
	#sendChannelString:from:channelName:	(channel chat)
	#sendConsoleString:from:				(our own console text)
	#sendPrivateString:from:to:				(a private chat)
After processing through a bunch of decisions concerning if the text represents a local commmand (not for IRC consumption) or a special command (requiring unique reformatting of the output message package) we eventually let the calling pane we sent the text through #textWasSent:.  The caller can then update the display or whatever.


NOTE:  If you make changes to the enhanced IRC client, edit the revisionsString class method and then perform a
	IRCConnectionEnhanced installNewPreambleForIRCChangeSet
to install the edit history into the change set preamble.