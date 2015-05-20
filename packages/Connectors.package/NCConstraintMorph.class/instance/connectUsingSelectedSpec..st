connection
connectUsingSelectedSpec: p
	| s |
	s := self nearestAttachmentSpecOn: inputs first to: p.
	self constraint: (MessageSend receiver: self selector: #atSpec:on: argument: s)
