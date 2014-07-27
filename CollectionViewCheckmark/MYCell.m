//
//  MYCell.m
//  CollectionViewCheckmark
//
//  Created by pronebird on 27/07/14.
//  Copyright (c) 2014 Andrej Mihajlov. All rights reserved.
//

#import "MYCell.h"

@implementation MYCell

- (id)initWithCoder:(NSCoder *)aDecoder {
	if(self = [super initWithCoder:aDecoder]) {
		// Update checkbox with unchecked image by default
		self.checked = NO;
	}
	return self;
}

// A setter method for checked property
- (void)setChecked:(BOOL)checked {
	// Save property value
	_checked = checked;
	
	// Update checkbox image
	if(checked) {
		self.checkBoxImageView.image = [UIImage imageNamed:@"Checked"];
	} else {
		self.checkBoxImageView.image = [UIImage imageNamed:@"Unchecked"];
	}
}

@end
