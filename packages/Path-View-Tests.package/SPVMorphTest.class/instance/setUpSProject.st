running
setUpSProject

	| bucket members |
	previousProject := SProject current.
	testProject := SProject name: #SPVMorphTestProject categories: #().
	SProject 
		addProject: testProject;
		setCurrent: testProject projectName.
	bucket := SMonoTypeBucket new.
	members := bucket membersFor: testClass.
	"Put superclasses for associatedTestClass in all inst vars"
	members inject: associatedTestClass into: [:class :next |
		members at: (members indexOf: next) put: class.
		class superclass].
	testProject typesBucket: bucket.