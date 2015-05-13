running
setUp
	super setUp.
	SProject addProject: SProject observerExampleProject.
	SProject setCurrent: #observerExample.
	self pathMap: SPathMapTestRunner open.
	(self pathMap model getFlap: #testQuality)	switchExpandState.
	self pathMap model pathMap selectedAnalysis: #testQuality.
	self pathMap model runAll.