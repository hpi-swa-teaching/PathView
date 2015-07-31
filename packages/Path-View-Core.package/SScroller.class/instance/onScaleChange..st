accessing
onScaleChange: anObject
	"Don't want to disable the old action-blocks."
	
	scaleChangeBlock := self appendBlock: anObject to: scaleChangeBlock