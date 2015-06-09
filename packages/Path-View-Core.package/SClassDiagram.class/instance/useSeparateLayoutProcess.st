layout force-based
useSeparateLayoutProcess
	"Tells whether the layouting should be processed in a separate process.
	Seems better / more stable in general; but sometimes synchronization issues with the morphic thread throw fatal errors.
	Setting morphic-relevant values from the separate process has to be synchronized. [TODO]"
	
	^ false