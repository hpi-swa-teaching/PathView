printing
description
	^ self messageText, 
	' (Given: ', self givenType asString,
	' Expected: ', self expectedType asString, ') ',
	self kindOf asString, 
	(self variableName ifNil: [''] ifNotNil: [' of ', self variableName]), 
	' fails in ', self methodReference asString