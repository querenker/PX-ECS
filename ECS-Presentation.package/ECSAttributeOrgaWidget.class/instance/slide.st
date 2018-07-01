accessing
slide

	| slideContent wizard dwarf dwarfWizard entityBar attributeBar weaponSkill mana shieldEnergy walkingSpeed |
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
		
	self attributes add: (weaponSkill := PHBadge text: 'weapon skill').
	self attributes add: (shieldEnergy := PHBadge text: 'shield Energy').
	self attributes add: (walkingSpeed := PHBadge text: 'walking speed').
	self attributes add: (mana := PHBadge text: 'mana').
	self attributes do: [:attribute | attributeBar add: attribute].
	
	self connections add: {wizard . walkingSpeed}.
	self connections add: {wizard . mana}.
	
	self connections add: {dwarf . walkingSpeed}.
	self connections add: {dwarf . weaponSkill}.
	
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