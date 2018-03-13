//
//  CustomTableViewCell.h
//  PopularImagesFlickr
//
//  Created by Александр Чернов on 02.01.2018.
//  Copyright © 2018 Александр Чернов. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Post.h"
#import "SDWebImage/UIImageView+WebCache.h"

@interface CustomTableViewCell : UITableViewCell

-(void) configureSelf: (Post *) model;



@end
