instance creation
on: aSymbol inClass: aClass withTracer: aTracer

	| wrapper |
	wrapper := self on: aSymbol inClass: aClass.
	wrapper ifNotNil: [wrapper tracer: aTracer].
	^ wrapper