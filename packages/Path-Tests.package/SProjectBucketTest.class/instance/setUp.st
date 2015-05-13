running
setUp
	super setUp.
	SProject addProject: SProject observerExampleProject.
	SProject setCurrent: #observerExample.
	self pathMap: SPathMapTestRunner open.
	(self pathMap model getFlap: #inductive) switchExpandState.
	self pathMap model pathMap selectedAnalysis: #inductive.