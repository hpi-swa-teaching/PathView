SWT15-Project-09 [![Build Status](https://travis-ci.org/HPI-SWA-Teaching/SWT15-Project-09.svg)](https://travis-ci.org/HPI-SWA-Teaching/SWT15-Project-09)
===================


Install in 4.6
```smalltalk
{

Metacello new
	baseline: 'PathView';
	repository: 'pathToFileTreeGitRepo/packages'.

}
do: [ :baseline | baseline get ];
do: [ :baseline | baseline load].
```
