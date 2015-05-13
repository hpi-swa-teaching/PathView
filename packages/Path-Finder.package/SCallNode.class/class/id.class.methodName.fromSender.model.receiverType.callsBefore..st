instance creation
id: aNumber class: aClass methodName: aSelector fromSender: aCallNode model: aCallTreeModel receiverType: aTypeClass callsBefore: aCallsNumber

	^ (self forClass: aClass withSelector: aSelector model: aCallTreeModel)
		id: aNumber;
		fromSender: aCallNode;
		callsBefore: aCallsNumber;
		setReceiverType: aTypeClass;
		initClassView;
		yourself