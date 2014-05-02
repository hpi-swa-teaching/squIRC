configuration
configurationSpecs
	"tag, back getter setter"
	^ {
		{'full name'. 'John Squeaker <john@squeaker.com>'. #fullName. #fullName:}. 
		{'nick'. 'nick'. #nick. #nick:}. 
		{'username'. 'username'. #userName. #userName:}. 
		{'server'. 'irc.server.com'. #server. #server:}. 
		{'port'. '1234'. #portAsString. #portAsString:}
	}