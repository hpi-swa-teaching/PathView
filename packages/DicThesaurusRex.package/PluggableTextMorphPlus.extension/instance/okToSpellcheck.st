*DicThesaurusRex
okToSpellcheck
	styler ifNil:[^false].
	((styler respondsTo: #enabled) and: [styler enabled]) ifFalse: [^ false].
	(model respondsTo: #aboutToStyle: ) ifTrue: [ model aboutToStyle: styler ].
	^ true