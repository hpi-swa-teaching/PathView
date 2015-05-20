introspection
preambleText
	"Compiler evaluate: ((PackageInfo named: 'Connectors') preambleText) logged: false"

	^ '"$Revision: 1.13 $"
"Convert old instances if necessary."
(Smalltalk hasClassNamed: ''NCConstraintMorph'') ifTrue: [
	| i1 i2 |
	i1 := NCConstraintMorph allInstVarNames indexOf: ''targetBlock''.
	i1 > 0 ifTrue: [
	NCConstraintMorph addInstVarName: ''constraint''.
	i2 := NCConstraintMorph allInstVarNames indexOf: ''constraint''.
	NCConstraintMorph allSubInstances do: [ :ea | ea instVarAt: i2 put: (ea instVarAt: i1) ].
	]
].

Smalltalk organization renameCategory: ''People-nk-Broom'' toBe: ''Connectors-Broom''.
'