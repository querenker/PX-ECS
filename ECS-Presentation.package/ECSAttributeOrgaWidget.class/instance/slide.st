accessing
slide

	| slideContent wizard dwarf dwarfWizard entityBar attributeBar mana walkingSpeed health walkingDirection axePower |
	entityBar := (PHPage row).
	attributeBar := (PHPage row).
	
	entityBar
		withLayout;
		spacing: 100;
		expand: true;
		addStyleClass: #withPadding;
		align: #(center center).
		
	attributeBar
		withLayout;
		spacing: 100;
		expand: true;
		addStyleClass: #withPadding;
		align: #(center center).	
	
	self entities add: (wizard := PHBadge text: 'Wizard').
	self entities add: (dwarf := PHBadge text: 'Dward').
	self entities add: (dwarfWizard := PHBadge text: 'Dwarf Wizard').
	
	self entities do: [:entity | entityBar add: entity].
		
	self attributes add: (health := PHBadge text: 'health').
	self attributes add: (walkingSpeed := PHBadge text: 'walking speed').
	self attributes add: (walkingDirection := PHBadge text: 'walking direction').
	self attributes add: (mana := PHBadge text: 'mana').
	self attributes add: (axePower := PHBadge text: 'axe power').
	self attributes do: [:attribute | attributeBar add: attribute].
	
	self connections add: {wizard . health}.
	self connections add: {wizard . walkingSpeed}.
	self connections add: {wizard . walkingDirection}.
	self connections add: {wizard . mana}.
	
	self connections add: {dwarf . health}.
	self connections add: {dwarf . walkingSpeed}.
	self connections add: {dwarf . walkingDirection}.
	self connections add: {dwarf . axePower}.
	
	self connections add: {dwarfWizard . health}.
	self connections add: {dwarfWizard . walkingSpeed}.
	self connections add: {dwarfWizard . walkingDirection}.
	self connections add: {dwarfWizard . mana}.
	self connections add: {dwarfWizard . axePower}.
	
	slideContent := PHPage column.
	slideContent
		align: #(center center);
		spacing: 100;
		addStyleClass: #withPadding;
		expand: true;
		add: entityBar;
		add: attributeBar.

	^ PHSlide new
		withLayout;
		align: #(center center);
		expand: true;
		add: slideContent;
		onEnterDo: [self enter];
		onLeaveDo: [self leave]