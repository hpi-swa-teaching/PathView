initialization
initializeLabel
	"Update the label, if necessary."
	
	| classesInBetween |
	classesInBetween := self getClassesInBetween.
	label notNil ~= classesInBetween notEmpty
		ifTrue: [
			label
				ifNil: [ self labelClass openOn: self containing: classesInBetween ]
				ifNotNil: [ label abandon ] ].