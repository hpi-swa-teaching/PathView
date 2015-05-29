SWT15-Project-09 [![Build Status](https://travis-ci.org/HPI-SWA-Teaching/SWT15-Project-09.svg)](https://travis-ci.org/HPI-SWA-Teaching/SWT15-Project-09)
===================


Install in 4.6
```smalltalk
"install baseline" 
{

Metacello new
    baseline: 'PathView';
    repository: 'filetree:///Users/sven/Documents/office/hpi/swt/pathview/packages'.

}
do: [ :baseline | baseline get ];
do: [ :baseline | baseline 
    onConflict: [ :ex | ex allow ];
    load: 'Tests'
].

"add to Menu>>Apps"
SPathView initialize 
```
