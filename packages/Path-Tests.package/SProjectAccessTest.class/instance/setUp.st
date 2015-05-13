running
setUp
	super setUp.
	SProject addProject: SProject observerExampleProject.
	SProject setCurrent: #observerExample.