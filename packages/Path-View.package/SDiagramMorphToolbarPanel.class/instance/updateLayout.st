layout
updateLayout
	
	self orientation = #vertical ifTrue: [
		self
			top: self owner top;
			height: self owner height;
			width: self class extent;
			listDirection: #topToBottom].
	
	self orientation = #horizontal ifTrue: [
		self
			left: self owner left;
			width: self owner width - (2 * self class extent);
			height: self class extent;
			listDirection: #leftToRight].