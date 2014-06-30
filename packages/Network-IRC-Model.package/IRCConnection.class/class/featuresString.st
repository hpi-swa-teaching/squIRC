utility
featuresString
	^ 'For background IRC protocol information please see http://www.irchelp.org/irchelp/rfc/.

See (IRCConnection releaseNotes) for a workspace window containing
recent release notes.

Key new features include:
	A new user interface having one console window per connection 
	and then having all console messages, channel messages and private 
	messages contained inside the main console window using tabbed 
	swapped panes.

	Support was added for /WHOIS and /ACTION from the channel chat
	windows.  Other windows do not have complete support for these 
	commands yet.

	The channel messages text, private messages text, and console messages
	text panes are read-only.  This allows you to put the cursor over either
	the input pane at the bottom or the actual text pane and begin typing.
	The input text you type is sent only to the input pane at the bottom.
	Copy and Find operations are still possible with the read-only text pane
	content.

	You can jump to a channel from the channels listing pane by one ot
	two techniques.  First you can select a channel from the produced list.
	Second, you can use the Prompted Channel button and be asked for
	the name of a channel you want to join.  The channel name does not
	need to appear in the list.  Further a check is made against the channel
	name you enter and a # is prefixed if you left it off.

	A small graphic "icon" in the top left corner of the main window shows
	connect status.
	
	The Channels list pane is a multi-column pane.  The Refresh button also
	changes color to indicate that a refresh is active.  A channel refresh
	action can take a while so the tag of the Refresh button also attempts
	to update with an indication of the number of channels fetched so far
	as an indicator of progress.

	The channel chat input pane performs Nick Completion.  Anywhere on
	the input text line you are typing you can begin to type a few characters
	from the beginning of a channel Nick and hit the tab key.  This will
	complete the nick tag for you.  If there is more than one Nick that
	begin with the same characters, the tab key will rotate through them
	for you.  You can also do Nick Completion multiple times on the same
	line of text.

	A leading tab on a channel chat input line is invalid and ignored.
	Also empty input lines are ignored.

	Your own transmitted messages in the channel chat pane are highlighted
	with a color.  Also, messages that have your nick in them on the channel
	chat pane will be highlighted in another color.

	/ACTION is supported from the channel chat input.  You can type in
	a command like
		/action looks around room
	and that message will be sent as an ACTION message to the channel.
	All ACTION messages are highlighed in the channel chat text pane in
	italics.

	The channell chat pane is formatted into 2 columns.  The left most
	column is the nick and the next column to the right shows the
	typed text.

	New server configuraton dialogs.  Includes the ability to tailor options
	while connected.  Modification of connection parameters for the current
	session is prohibited while connected.

	Connection Profiles are supported.  You can specify a unique
	set of connection parameters for any session and save them in a
	list.  The options you select when you create a new profile are those
	of the current profile.

	Added a built-in table of many IRC servers you can choose from with
	a dialog window.  localhost is now a valid server name.

	You mayhave multiple console sessions open at the same time, each
	having a unique IRC server connection.  The title of the console window
	reflects the basic parameters of that connected session.

	Added support for roll back/forward of previously typed text.  Use the
	up and down arrow keys to scroll through text lines.

	/WHOIS command sends response from the server to your channel chat
	window now.

	Only sends private message to the Provate pane that are NOT already
	being sent to another private messages pane.  That is, if you have a 
	private messages pane open the responses there are no longer duplicated
	in the Private Messages window.

	Tabbed channel text and private chat panes have their tabs highlighted
	if messages appear there while you have another pane in front.  You
	can use this feature to watch for activity on a channel or private
	chat.

	Channel member JOINS and PARTS are now logged to the channel chat
	text.  There are options to disable this.

	An option is provided that supported INVITE requests.  When you get an
	INVITE request to join another channel this option will allow automatic
	opening of that channel then adding you to the members there.

	An option is provided that automatically opens up a private chat
	window if you receive an unsolicitied private message.  This can
	include server messages and NICKSERV messages.

	Added support for multiple line input to a channel and private chat
	pane.  This allows you to know PASTE into a channel.

	Channel members are now listed in a logical order.  Channel operators
	are at the top, followed by +voiced channel members and then
	normal members.  Also, the nicks for operators are shown in red
	on the channel members list and the voiced members are show in
	another color.

	Added support for the /CLEAR command to console, private chat and
	channel chat windows.  /CLEAR will clear the contents of the text
	pane.  This command is not sent to the IRC server of course.

	Added /INSPECT to console, private and channel chat input pane
	commands.  This will cause a Squeak Inspector to open up on the model
	for that text pane.
	
	Added /DOCS to supported local commands.  Opens up workspace windows
	with features and release notes.

	Support provided for NICK change messages receieved from the IRC server.

	/NICK command is now supported from the channel chat input pane.
'