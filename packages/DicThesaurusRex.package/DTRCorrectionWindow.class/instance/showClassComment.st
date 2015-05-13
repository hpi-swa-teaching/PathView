display
showClassComment
	| class |
	methodSelected := false.
	class := methods first methodClass.
	self
		showMethodText: class classCommentBlank
		ofMethodNamed: '  Class Comment'
		ofClass: class