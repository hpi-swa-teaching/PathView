instance creation
new
	"Before an instance of this can be used, #initializeAt: has to be called."
	
	^ (super
		vertices: (Array new: 4 withAll: 0@0)
		color: Color transparent
		borderWidth: 1
		borderColor: Color gray)
		dashedBorder:  { 5. 7. Color transparent }