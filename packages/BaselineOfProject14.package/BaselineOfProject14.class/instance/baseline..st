baseline
baseline: spec 
	<baseline>
	spec
		for: #common
		do: [
	spec
		package: 'Network-IRC-Model' with: [spec requires: #('VB-Regex' )];
		package: 'Network-IRC-GUI' with: [spec requires: #('VB-Regex' )];
		package: 'Network-IRC-Tests' with: [spec requires: #('default' )].

	spec 
		group: 'default' with: #('Network-IRC-Model');
		group: 'default' with: #('Network-IRC-GUI');
		group: 'Tests' with: #('Network-IRC-Tests');
		group: 'TravisCI' with: #('Tests' ).
	
	spec
		package: 'VB-Regex' with: [spec repository: 'http://www.squeaksource.com/Regex']]