//
//  MYCell.h
//  CollectionViewCheckmark
//
//  Created by pronebird on 27/07/14.
//  Copyright (c) 2014 Andrej Mihajlov. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MYCell : UICollectionViewCell

// Checkbox image view
@property (weak) IBOutlet UIImageView* checkBoxImageView;

// Flag that indicates whether checkbox is checked
@property (nonatomic) BOOL checked;

@end
