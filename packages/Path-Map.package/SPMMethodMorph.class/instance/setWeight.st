initialization
setWeight

	"| class method |
	class := self parentMorph parentMorph sourceCodeEntity.
	method := (class methodDict at: self sourceCodeEntity 
		ifAbsent: [class class methodDict at:  self sourceCodeEntity]).
	self weight: method linesOfCode."
	self weight: 1.