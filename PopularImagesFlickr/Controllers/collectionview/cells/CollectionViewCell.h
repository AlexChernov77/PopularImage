//
//  CollectionViewCell.h
//  PopularImagesFlickr
//
//  Created by Александр Чернов on 11.03.2018.
//  Copyright © 2018 Александр Чернов. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Post.h"
#import "SDWebImage/UIImageView+WebCache.h"

@interface CollectionViewCell : UICollectionViewCell

-(void) configureSelf: (Post *) model;

@end
