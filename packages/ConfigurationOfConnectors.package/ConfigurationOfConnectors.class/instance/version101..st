versions
version101: spec
	<version: '1.0.1' imports: #('1.0-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'development'.
		spec description: '1.0.1 (): Implement dashed borders'.
		spec author: 'ag'.
		spec timestamp: '2/22/2012 15:04'.
		spec 
			package: 'CGPrereqs' with: 'CGPrereqs-nk.8';
			package: 'FSM' with: 'FSM-cmm.44';
			package: 'BroomMorphs-Base' with: 'BroomMorphs-Base-cmm.3';
			package: 'BroomMorphs-Connectors' with: 'BroomMorphs-Connectors-nk.2';
			package: 'Connectors' with: 'Connectors-sm.197';
			package: 'ConnectorsBasicDistro' with: 'ConnectorsBasicDistro-cmm.15';
			package: 'ConnectorsDemo' with: 'ConnectorsDemo-cmm.6';
			package: 'ConnectorsGraphLayout' with: 'ConnectorsGraphLayout-cmm.8';
			package: 'ConnectorsShapes' with: 'ConnectorsShapes-cmm.32';
			package: 'ConnectorsText' with: 'ConnectorsText-cmm.17';
			package: 'ConnectorsTools' with: 'ConnectorsTools-cmm.22'. ].
