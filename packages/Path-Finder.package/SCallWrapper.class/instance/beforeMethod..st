evaluating
beforeMethod: anObject
	self ids add: (self tracer 
				createNewCallNodeOn: self wrappedClass 
				with: self clientSelector
				receiverType: anObject class
				callsBefore: self callsBefore).
	self callsBefore: self callsBefore + 1.