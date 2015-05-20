private
inputOwnerChanged
	"A notification from an end that its input's owner has changed.
	Must by asynchronous to avoid recursion, as this is called from a step message."

	self setProperty: #inputOwnerChanged toValue: true