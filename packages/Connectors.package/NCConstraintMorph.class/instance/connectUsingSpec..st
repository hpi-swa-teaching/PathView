connection
connectUsingSpec: s
	self constraint: (MessageSend receiver: self selector: #atSpec:on: argument: s)
