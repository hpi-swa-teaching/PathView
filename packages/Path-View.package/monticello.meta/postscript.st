(PackageInfo named: 'Path-View') postscript: '"below, add code to be run after the loading of this package"
SProject allProjects do: [:p | p views: OrderedCollection new].'!
