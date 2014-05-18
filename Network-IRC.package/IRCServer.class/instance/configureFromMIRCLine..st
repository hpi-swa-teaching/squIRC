parse mIRC entries
configureFromMIRCLine: aString
	| tempString groupName theServerName serverAddress portNumbers |
	"n0=Random serverSERVER:irc.dal.net:6660-6667GROUP:DALnet"
	
	tempString := self extractGroupAndServerStringFrom: aString.
	groupName := self extractGroupNameFrom: tempString.
	theServerName := self extractServerNameFrom: tempString.
	tempString := self extractServerAddressAndPortStringFrom: aString.
	serverAddress := self extractServerAddressFrom: tempString.
	portNumbers := self extractPortsFrom: tempString.
	self address: serverAddress.
	self group: groupName.
	self ports: portNumbers.
	self serverName: theServerName