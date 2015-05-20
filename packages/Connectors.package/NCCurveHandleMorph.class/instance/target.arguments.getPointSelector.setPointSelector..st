initialization
target: aMorph arguments: args getPointSelector: getPointSel setPointSelector: setPointSel
	getPoint := WeakMessageSend receiver: aMorph selector: getPointSel arguments: args.
	setPoint := WeakMessageSend receiver: aMorph selector: setPointSel arguments: args.
	targetPoint := nil.
	self center: getPoint value.