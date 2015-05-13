tests
test03cProjectRegistryAtSystemBrowserProject
	| project |
	SProject addPredefinedProjects.
	project := SProject projectAt: #systemBrowser.
	self assert: project notNil.
	self assert: project projectName == #systemBrowser.
	self assert: project categories = #(#'ToolBuilder-Kernel' #'ToolBuilder-Morphic' #'Tools-Base' #'Tools-Browser' #'ToolsTests-Browser')