accessing-ui
buttons
	"label action enabled"
	^ #(( 'Run Selected' #runAll #hasRunnable )
		( 'Run with Contracts' #runAllWithContracts #hasContracts )
		( 'Run Failures' #runFailures #hasFailures )
		( 'Run Errors' #runErrors #hasErrors ) )
