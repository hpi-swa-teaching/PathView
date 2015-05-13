accessing
sources

	^ sources ifNil: [sources := WriteStream on: String new]