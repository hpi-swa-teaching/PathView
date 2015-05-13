menu
callTreeMenu: aMenu

	^ aMenu
		title: 'Node and Tree Actions';
		add: 'Browse' action: #browseMethod;
		add: 'Debug' action: #debugMethod;
		addLine;
		add: 'Expand Tree' action: #expandSelectedNode;
		add: 'PathView' action: #openPathViewOnTrace;
		addLine;
		add: 'History Back' action: #historyBack;
		add: 'History Previous' action: #historyPrevious;
		yourself.