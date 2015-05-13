accessing
changes

	^ changes ifNil: [changes := self add: self to: OrderedCollection new]