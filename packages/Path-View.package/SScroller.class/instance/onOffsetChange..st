accessing
onOffsetChange: anObject
	"Don't want to disable the old action-blocks."
	
	offsetChangeBlock := self appendBlock: anObject to: offsetChangeBlock.