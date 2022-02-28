visiting
visitContainer: aContainer
	
	rowCount := 0.
	gridLayout := SpGridLayout new.
	gridLayout beColumnNotHomogeneous.
	gridLayout column: 2 withConstraints: [ :c | c beExpand ].
	
	aContainer children 
		do: [ :each | each acceptMagritte: self ].
		
	presenter layout: gridLayout