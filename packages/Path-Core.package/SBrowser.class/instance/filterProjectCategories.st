accessing
filterProjectCategories
	"Answer the value of filterProjectCategories"

	^ filterProjectCategories ifNil: [filterProjectCategories := false]