baseline
baseline: spec
	<baseline>
	spec for: #common do: [ 
		
		"libs"
		spec
			baseline: 'Animations' with: [ spec repository: self class animations ];
			package: 'Icons' with: [ spec repository: self class swaUtilities ];
			package: 'MethodWrappers' with: [ spec repository:  self class swaUtilities ];
			
			"according to the customer we should not be dependent on SwaUtil because this is legacy"
			configuration: 'SwaUtil' with: [ spec repository: self class metacelloHPI ];
			
			package: 'SwaMC' with: [ spec requires: #('SwaUtil'); repository: self class swaUtilities ];
			package: 'SSpec' with: [ spec requires: #('SwaUtil' 'MethodWrappers'); repository: self class swaUtilities ];
			baseline: 'Connectors' with: [ spec repository: self class ownRepository ];
			"configuration: 'DicThesaurusRex' with: [ spec className: 'ConfigurationOfDicThesaurusRex'; repository: self class ownRepository ];"
			configuration: 'RefactoringBrowser' with: [ spec repository: self class metacello ];
			baseline: 'MorphicUITestingFramework' with: [ spec repository: self class morphicUITestingFramework; className: 'BaselineOfProject12' ].
				
		"path tools packages"
		spec 
			package: 'Path-Contracts' with: [ spec requires: #('Path-Harvester') ];
			package: 'Path-Core' with: [ spec requires: #( 'SwaUtil' 'MethodWrappers' 'Animations'  'Icons') ];
			package: 'Path-Finder' with: [ spec requires: #('Path-Core') ];
			package: 'Path-Harvester' with: [ spec requires: #('Path-Core') ];
			"package: 'Path-Map' with: [ spec requires: #('Path-Finder' 'Path-Contracts') ];"
			package: 'Path-View' with: [spec 
				requires: #('Connectors' 'RefactoringBrowser' 'Path-Core' 'Path-Harvester' 'SwaMC' 'SSpec')
				"postLoadDoIt: #postLoadConnectorsArrows" ];
		
		"the original test package had more dependencies --> remove tests for dependencies which are not included in this project"
			package: 'Path-Tests' with: [ spec requires: #('Path-View' 'MorphicUITestingFramework' ) ].
			
		spec
			group: 'default' with: #('Path-View');
			group: 'Tests' with: #('Path-Tests');
			group: 'TravisCI' with: #('Tests') ].