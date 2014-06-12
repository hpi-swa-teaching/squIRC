mIRC lines
configureFromMIRCLine: aString
	| tempString |
	"n0=Random serverSERVER:irc.dal.net:6660-6667GROUP:DALnet"
	
	tempString := self extractGroupAndServerStringFrom: aString.
	self group: (self extractGroupNameFrom: tempString).
	self serverName: (self extractServerNameFrom: tempString).
	tempString := self extractServerAddressAndPortStringFrom: aString.
	self address: (self extractServerAddressFrom: tempString).
	self ports: (self extractPortsFrom: tempString).