accessing
colorPropagation
	"Answer the value of colorPropagation"

	^ colorPropagation ifNil: [colorPropagation := SPMColorStrategy]