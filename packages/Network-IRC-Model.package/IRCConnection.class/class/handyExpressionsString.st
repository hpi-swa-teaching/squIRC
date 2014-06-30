utility
handyExpressionsString
	"IRCConnection handyExpressions"
	^ 'IRCConnectionProfile wipeOutProfiles
IRCConnectionProfile profiles

self halt.
IRCConnection openEnhancedIRC.

self halt.
IRCConnection initialize.

server _ IRCTestServer createDefaultTestServer.
server start

server run

server stop

IRCConnection tracing: true
IRCConnection tracing'