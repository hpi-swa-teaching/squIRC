baseline
baseline: spec
    <baseline>
    spec
        for: #'common'
        do: [ 
            spec
				package: 'VB-Regex';
				package: 'Network-IRC' with: [spec requires: #('regex')];
                		package: 'Network-IRC-Tests' with: [ spec requires: #('default') ].
				
            spec
		    group: 'regex' with: #('VB-Regex');
                group: 'default' with: #('Network-IRC');
                group: 'Tests' with: #('Network-IRC-Tests');
                group: 'TravisCI' with: #('Tests') ]