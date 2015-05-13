instance creation
id: aNumber code: aSourceCodeString fromSender: aCallNode model: aCallTreeModel

	^ (self forClass: nil withSelector: nil model: aCallTreeModel)
		id: aNumber;
		fromSender: aCallNode;
		code: aSourceCodeString;
		initClassView;
		yourself