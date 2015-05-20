scripting
additionsToViewerCategoryConnection
	"Answer viewer additions for the 'connection' category"
	"Vocabulary initialize"

	^#(
		connector
		(
			(slot source 'The Player at my first end' Player readWrite Player getSourcePlayer Player setSourcePlayer:)
			(slot destination 'The Player at my second end' Player readWrite Player getDestinationPlayer Player setDestinationPlayer:)
			(slot orthogonal 'Whether I am limited to horizontal and vertical segments' Boolean readWrite Player getOrthogonal Player setOrthogonal:)
			(slot smoothCurve 'Whether I am drawn as a smooth curve' Boolean readWrite Player getSmoothCurve Player setSmoothCurve:)
			(slot sourceArrowName 'The name of the arrow at my first end' ArrowNames readWrite Player getSourceArrowName  Player setSourceArrowName:)
			(slot destinationArrowName 'The name of the arrow at my second end' ArrowNames readWrite Player getDestinationArrowName  Player setDestinationArrowName:)
			(command straighten 'remove all my bends' unused)
			(command addLabel: 'add a label at my middle' String)
			(command removeLabels 'remove all my labels' unused)
		)

	)
