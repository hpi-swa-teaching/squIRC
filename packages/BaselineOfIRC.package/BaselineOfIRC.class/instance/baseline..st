baseline
baseline: spec 
	<baseline>
	spec
		for: #common
		do: [
	spec
		package: 'Network-IRC-GUI';
		package: 'Network-IRC-Model' with: [spec requires: #('VB-Regex' )];
		package: 'Network-IRC-Tests' with: [spec requires: #('default' )].

	spec
		group: 'default' with: #('Network-IRC-Model' 'Network-IRC-GUI');
		group: 'tests' with: #('Network-IRC-Tests' ).
	
	spec
		package: 'VB-Regex' with: [spec repository: 'http://www.squeaksource.com/Regex']]