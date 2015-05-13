baselines
baseline10: spec
	<version: '1.0-baseline'>

	spec for: #'common' do: [
		spec blessing: #'baseline'.
		
		spec configuration: 'SpellingServices' with: [ spec repository: 'http://www.squeaksource.com/MetacelloRepository' ].
		spec baseline: 'Widgets' with: [ spec repository: 'github://marceltaeumel/widgets:master/repository' ].
		spec package: 'SwaUtil' with: [spec repository: self class swaUtilities].
		
		spec repository: 'http://www.hpi.uni-potsdam.de/hirschfeld/squeaksource/SwaUtilities'.
		spec package: 'DicThesaurusRex' with: [ spec 
			requires: #('SpellingServices' 'Widgets' 'SwaUtil'); 
			preLoadDoIt: #downloadHunspellFiles ].
		
		spec group: 'default' with: #('DicThesaurusRex') ].