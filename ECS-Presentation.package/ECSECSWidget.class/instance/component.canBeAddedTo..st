UI Building
component: aComponentClass canBeAddedTo: anEntity

	^ (aComponentClass isUnique and: (anEntity hasComponentOfType: aComponentClass type)) not