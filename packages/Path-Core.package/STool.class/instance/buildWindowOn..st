building
buildWindowOn: aBuilder

	self windowSpec: aBuilder pluggableWindowSpec new.
	self windowSpec
		model: self;
		label: #label;
		children: OrderedCollection new;
		closeAction: #windowIsClosed