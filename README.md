SWT15-Project-09 [![Build Status](https://travis-ci.org/HPI-SWA-Teaching/SWT15-Project-09.svg)](https://travis-ci.org/HPI-SWA-Teaching/SWT15-Project-09)
===================

Install in 4.6 and use a cloned repository with filetree
```smalltalk
"install path view from local filetree"
{
 Metacello new
  baseline: 'PathView';
  repository: 'filetree://absolute-path-to-git-repository/packages'.
}
 do: [ :baseline | baseline get ];
 do: [ :baseline | baseline
  onConflict: [ :ex | ex allow ];
  load: 'Tests'
].
```

Install in 4.6 and pull code directly from github
```smalltalk
"Install PathView@presentation-release"
{
Metacello new
	baseline: 'PathView';
	githubUser: 'HPI-SWA-Teaching'
	project: 'SWT15-Project-09'
	commitish: 'final-release'
	path: 'packages'
}
do: [ :baseline | baseline get ];
do: [ :baseline | baseline
	onConflict: [ :ex | ex allow ];
	load: 'Tests' ].
```
