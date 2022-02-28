visiting
visitNumberDescription: aDescription 
	| numberInput |

	numberInput := self newNumberInput
		addStyle: 'mpNumberInput';
		number: (self read: aDescription);
		editable: aDescription isReadonly not;
		maximum: aDescription max;
		minimum: aDescription min; 
		whenNumberChangedDo: [ :aNumber | self write: aNumber description: aDescription ];
		help: aDescription comment;
		yourself.
	
	self appendWidget: numberInput description: aDescription