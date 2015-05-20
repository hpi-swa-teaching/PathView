connection
connectToMorph: m usingSpec: s
	self input: m.
	self constraint: (MessageSend receiver: self selector: #atSpec:on: arguments: {s. m})
	"self constraint: (MessageSend receiver: m selector: s first arguments: s allButFirst)"