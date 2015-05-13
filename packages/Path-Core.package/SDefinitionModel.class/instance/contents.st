accessing
contents

	| sourceString |
	self defClass ifNil: [^ ''].
	self defSelector ifNil: [^ self defClass definition].
	sourceString := self defClass sourceCodeAt: self defSelector ifAbsent: [^'error'].
	^ sourceString copy asText