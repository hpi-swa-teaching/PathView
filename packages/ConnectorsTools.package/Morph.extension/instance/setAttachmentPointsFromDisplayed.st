*connectorstools-private
setAttachmentPointsFromDisplayed
	"Read the positions of my displayed attachment points and (re) set my attachment points from them"
	| specs |
	specs := self displayedAttachmentPoints collect: [ :a | a delete. a spec ].
	self attachmentPointSpecs: specs.
	self preferredConnection: nil 
