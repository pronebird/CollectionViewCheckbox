//
//  MYViewController.m
//  CollectionViewCheckmark
//
//  Created by pronebird on 27/07/14.
//  Copyright (c) 2014 Andrej Mihajlov. All rights reserved.
//

#import "MYViewController.h"

// Include flat colors category
#import "UIColor+MLPFlatColors.h"

// Include our cell class
#import "MYCell.h"

// Collection view cell identifier
static NSString* const kCellID = @"Cell";

@implementation MYViewController

- (id)initWithCoder:(NSCoder *)aDecoder {
	if(self = [super initWithCoder:aDecoder]) {
		// Create a set of checked indexPaths
		self.checkedIndexPaths = [[NSMutableSet alloc] init];
	}
	return self;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
	return 40;
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
	// Deselect cell first
	[collectionView deselectItemAtIndexPath:indexPath animated:YES];
	
	// Get selected cell
	MYCell* cell = (MYCell*) [collectionView cellForItemAtIndexPath:indexPath];
	
	// Check if set contains selected cell indexPath
	if([self.checkedIndexPaths member:indexPath])
	{
		// User tapped on checked cell
		// Remove selected indexPath from set
		[self.checkedIndexPaths removeObject:indexPath];
		
		// Uncheck checkbox on cell
		cell.checked = NO;
	}
	else // User tapped on unchecked cell
	{
		// Add selected indexPath to set
		[self.checkedIndexPaths addObject:indexPath];
		
		// Check checkbox on cell
		cell.checked = YES;
	}
}

- (UICollectionViewCell*)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
	// Dequeue cell
	MYCell* cell = (MYCell*) [collectionView dequeueReusableCellWithReuseIdentifier:kCellID forIndexPath:indexPath];
	
	// Restore cell's checkbox state
	// Check if cell was previously checked
	cell.checked = [self.checkedIndexPaths member:indexPath];
	
	// Set random color on cells (for fun!)
	cell.backgroundColor = [UIColor randomFlatLightColor];
	
	return cell;
}



@end
