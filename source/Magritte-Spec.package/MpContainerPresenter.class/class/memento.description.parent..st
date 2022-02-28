instance creation
memento: aMemento description: aDescription parent: aComponent
	
	^ self basicNew
		initializeMemento: aMemento
			description: aDescription
			parent: aComponent;
		yourself