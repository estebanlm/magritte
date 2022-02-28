visiting
visitBooleanDescription: aDescription 
	| checkbox |

	checkbox := self newCheckBox
		addStyle: 'mpCheckBox';
		state: (self read: aDescription);
		enabled: aDescription isReadonly not;
		whenChangedDo: [ :aValue | self write: aValue description: aDescription ];
		help: aDescription comment;
		yourself.
	
	self appendWidget: checkbox description: aDescription