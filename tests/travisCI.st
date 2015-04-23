| gitPath gitCache |
Transcript cr; show: 'travis---->travisCI.st'.

gitCache := 'git_cache'.
gitPath := (Smalltalk at: #'FileDirectory' ifAbsent: [  ])
  ifNil: [ ((Smalltalk at: #'FileSystem') workingDirectory / gitCache) pathString ]
  ifNotNil: [:fileDirectoryClass | (fileDirectoryClass default directoryNamed: gitCache ) fullName].

Metacello new
  baseline: 'Project14';
  repository: 'filetree://', gitPath, '/SWT15-Project-06/packages';
  get.

Metacello new
  baseline: 'Project14';
  repository: 'filetree://', gitPath, '/SWT15-Project-06/packages';
  load: 'TravisCI'.

"Run the tests"
TravisCIHarness
  value: #( 'BaselineOfProject14' )
  value: 'TravisCISuccess.txt' 
  value: 'TravisCIFailure.txt'.
