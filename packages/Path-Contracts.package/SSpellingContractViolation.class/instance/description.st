printing
description
	^ self messageText, 
	' (Spelling incorrect: ', self givenString, ') ',
	self kindOf asString, 
	(self variableName ifNil: [''] ifNotNil: [' of ', self variableName]), 
	' fails in ', self methodReference asString