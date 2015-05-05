baseline
baseline: spec
    <baseline>
    spec
        for: #'common'
        do: [ 
            spec
  	             package: 'Network-IRC-Tests' with: [ spec requires: #('default') ].
				
            spec
               group: 'default' with: #('Network-IRC-Model', 'Network-IRC-GUI');
               group: 'Tests' with: #('Network-IRC-Tests');
               group: 'TravisCI' with: #('Tests'). ]