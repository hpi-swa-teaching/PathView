private
openWithPerformanceMeasureOn: aTestMethodReference and: aMethodReference
	| pathFinder swGui swShallowAnalysis swFindNode fullTime |
	Transcript clear.
	swGui := Stopwatch new.
	swShallowAnalysis := Stopwatch new.
	swFindNode := Stopwatch new.
	"Start: Build GUI"
	swGui activate.
	pathFinder := self new.
	ToolBuilder open: pathFinder.
	swGui suspend.
	"End: Build GUI"
	"Start: Shallow Analysis"
	swShallowAnalysis activate.
	pathFinder testChooserModel setCurrentTest: aTestMethodReference.
	swShallowAnalysis suspend.
	"End: Shallow Analysis"
	"Start: Find Node in Tree"
	swFindNode activate.
	pathFinder callTreeModel 
		searchNode: (self convertMethodReferenceToString: aMethodReference);
		changed: #getSearchQuery.
	swFindNode suspend.
	"End: Find Node in Tree"
	"Summary"
	fullTime := swGui duration + swShallowAnalysis duration + swFindNode duration.
	Transcript show: 'GUI: ', swGui duration asString; space; show: ((swGui duration / fullTime) * 100) asInteger asString; show: '%'; cr.	
	Transcript show: 'Shallow Analysis: ', swShallowAnalysis duration asString; space; show: ((swShallowAnalysis duration / fullTime) * 100) asInteger asString; show: '%'; cr.
	Transcript show: 'Find Node: ', swFindNode duration asString; space; show: ((swFindNode duration / fullTime) * 100) asInteger asString; show: '%'; cr.
	Transcript show: 'All: ', (fullTime) asString; cr.
	^ pathFinder