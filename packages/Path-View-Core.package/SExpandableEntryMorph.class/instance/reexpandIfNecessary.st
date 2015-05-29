layout and labels
reexpandIfNecessary
	"Reexpand receiver. Only, if receiver has been collapsed, because it could not be just removed, because it contains pinned elements.
	In this special case, we need to toggle expansion."
	
	needReexpand & expanded not ifTrue: [ self toggleExpansion ].
	needReexpand := false.