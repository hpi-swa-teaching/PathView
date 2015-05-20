accessing
contentsAsIs: stringOrText
	"Accept new text contents with line breaks only as in the text.
	Fit my width and height to the result."
	wrapFlag := false.
	self newContents: stringOrText