tests
testUserNameColorFromHash
| testnicks |

	testnicks := #( 'MrBob' 'SuchNick' 'ItsAGreatDay' 'huhuu' 'hubedubeda' 'AAGdddsEEfgH').
	
	testnicks do: 
		[:each | self should: (IRCClientColors userNameColorFromHash: each) saturation <= IRCClientColors maxUserColorSaturation.
			      self should: (IRCClientColors userNameColorFromHash: each) saturation >= IRCClientColors minUserColorSaturation.
				self should: (IRCClientColors userNameColorFromHash: each) brightness <= IRCClientColors maxUserColorValue.
			      self should: (IRCClientColors userNameColorFromHash: each) brightness >= IRCClientColors minUserColorValue.]