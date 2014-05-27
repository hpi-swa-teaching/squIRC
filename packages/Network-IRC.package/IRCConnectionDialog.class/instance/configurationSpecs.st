configuration
configurationSpecs
	"tag, back getter setter"
	^ {
		{'full name'. 'John Squeaker <john@squeaker.com>'. #fullName. #fullName:}. 
		{'nick'. 'nick'. #nick. #nick:}. 
		{'username'. 'username'. #userName. #userName:}. 
		{'server'. 'irc.server.com:6667'. #serverAsString . #serverAsString:}
	}