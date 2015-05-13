evaluating
valueWithReceiver: anObject arguments: anArrayOfObjects
	| result |
	self beforeMethod.
	self tracer deactivateDuring: [
		self tracer argument 
			ifNotNil: [self tracer 
						addValue: (anArrayOfObjects at: self tracer argument) asString]].
	^ [
		result := self clientMethod 
					valueWithReceiver: anObject arguments: anArrayOfObjects.
		result
	] ensure: [self afterMethod.
			self tracer isActive
				ifTrue: [
					self tracer deactivateDuring: [
						self tracer argument 
							ifNil: [self tracer addValue: result asString]]]]