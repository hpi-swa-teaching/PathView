display
showMethod: aMethod
	self 
		showMethodText: aMethod getSource 
		ofMethodNamed: aMethod selector 
		ofClass: aMethod methodClass