evaluating
valueWithReceiver: anObject arguments: anArrayOfObjects
	| value |
	self beforeMethod.
	^ [
		self clientMethod valueWithReceiver: anObject arguments: anArrayOfObjects.
	] ensure: [self afterMethod.
			self tracer isActive
				ifTrue: [
					self tracer deactivateDuring: [.
						value := self tracer instVarName
							ifNil: [anObject]
							ifNotNil: [anObject instVarNamed: self tracer instVarName].
						self tracer addValue: value asString]]]