printing
description
	^ self messageText, 
	' (Size: ', self givenSize asString,
	' > ', self expectedSize asString, ' elements) ',
	self kindOf asString, 
	(self variableName ifNil: [''] ifNotNil: [' of ', self variableName]), 
	' fails in ', self methodReference asString