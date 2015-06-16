| test gitPath gitCache |
Transcript cr; show: 'travis---->travisCI.st'.

gitCache := 'git_cache'.
gitPath := (Smalltalk at: #'FileDirectory' ifAbsent: [  ])
  ifNil: [ ((Smalltalk at: #'FileSystem') workingDirectory / gitCache) pathString ]
  ifNotNil: [:fileDirectoryClass | (fileDirectoryClass default directoryNamed: gitCache ) fullName].

Metacello new
  baseline: 'PathView';
  repository: 'filetree://', gitPath, '/SWT15-Project-09/packages';
  get.

Metacello new
  baseline: 'PathView';
  repository: 'filetree://', gitPath, '/SWT15-Project-09/packages';
  load.

"{

Metacello new
    baseline: 'PathView';
    repository: 'filetree://', gitPath, '/SWT15-Project-09/packages'.

}
do: [ :baseline | baseline get ];
do: [ :baseline | baseline 
    onConflict: [ :ex | ex allow ];
    load: 'TravisCI'
]."


"Run the tests"
TravisCIHarness
  value: #( 'BaselineOfPathView' )
  value: 'TravisCISuccess.txt' 
  value: 'TravisCIFailure.txt'.
