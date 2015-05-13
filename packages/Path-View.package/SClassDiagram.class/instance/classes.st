accessing
classes
	"Collection-lookups are performed with the result, so use #visualizedClass instead of #klass"
	
	^ classMorphs collect: [ :m | m visualizedClass ]