debug graph layout
debugOpenRandomMethods
	<preference: 'Open some random methods for debugging-purposes'
		category: 'Path View'
		description: 'When dragging a whole class-category into a class-diagram, the contents will automatically be given a new layout. If this is enabled, some methods will be opened automatically in addition to adding the classes from the category.'
		type: #Boolean>
	^ DebugOpenRandomMethods ifNil: [ DebugOpenRandomMethods := false ]