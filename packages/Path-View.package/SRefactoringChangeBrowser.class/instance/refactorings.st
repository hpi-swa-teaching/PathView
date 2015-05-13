accessing
refactorings
	| parents |
	parents := OrderedCollection new.
	^ change changes collect: [:refactoring || indent name |
		refactoring parent ifNotNil: [parents addIfNotPresent: refactoring parent].
		indent := (parents indexOf: refactoring parent).
		indent = 0 ifTrue: [parents reset].
		name := (String new: indent withAll: Character space), refactoring name asString.
		
		(undos includesKey: refactoring)
			ifTrue: [name asText addAttribute: TextEmphasis struckOut
						from: 1
						to: name size;
						yourself]
			ifFalse: [name]]