printing
description
	^ self messageText, 
	' (', self kindOf asString, 
	(self variableName ifNil: [''] ifNotNil: [' of ', self variableName]), 
	') in ', self methodReference asString