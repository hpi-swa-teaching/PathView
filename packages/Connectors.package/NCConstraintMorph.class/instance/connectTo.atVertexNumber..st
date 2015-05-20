connection
connectTo: m atVertexNumber: ix
	self constraint: (MessageSend receiver: self selector: #vertexNumbered:of: argument: ix)
