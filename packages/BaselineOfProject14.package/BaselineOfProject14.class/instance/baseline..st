baseline
baseline: spec
    <baseline>
    spec
        for: #'common'
        do: [ 
            spec
                package: 'Network-IRC';
                package: 'Network-IRC-Tests' with: [ spec requires: #('default') ].
            spec
                group: 'default' with: #('Network-IRC');
                group: 'Tests' with: #('Network-IRC-Tests');
                group: 'TravisCI' with: #('Tests') ]