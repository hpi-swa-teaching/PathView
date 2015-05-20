baselines
baseline10: spec
	<version: '1.0-baseline'>

	spec for: #'common' do: [
		spec blessing: #'baseline'.
		spec repository: self class ownRepository.
		spec 
			package: 'CGPrereqs';
			package: 'FSM';
			package: 'Connectors' with: [spec requires: #('CGPrereqs' 'FSM') ];
			package: 'ConnectorsText' with: [spec requires: #('Connectors')];
			package: 'ConnectorsShapes' with: [spec requires: #('ConnectorsText')];
			package: 'ConnectorsTools' with: [spec requires: #('ConnectorsShapes')];
			package: 'ConnectorsGraphLayout' with: [spec requires: #('ConnectorsTools')];
			package: 'BroomMorphs-Base' with: [spec requires: #('ConnectorsGraphLayout')];
			package: 'BroomMorphs-Connectors' with: [spec requires: #('BroomMorphs-Base')];
			package: 'ConnectorsDemo' with: [spec requires: #('BroomMorphs-Connectors')];
			package: 'ConnectorsBasicDistro' with: [spec requires: #('ConnectorsDemo')].
		spec group: 'default' with: #('Connectors' 'ConnectorsBasicDistro' 'ConnectorsDemo' 'ConnectorsGraphLayout' 'ConnectorsShapes' 'ConnectorsText' 'ConnectorsTools' ) ].
