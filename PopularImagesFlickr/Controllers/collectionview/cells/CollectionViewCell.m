//
//  CollectionViewCell.m
//  PopularImagesFlickr
//
//  Created by Александр Чернов on 11.03.2018.
//  Copyright © 2018 Александр Чернов. All rights reserved.
//

#import "CollectionViewCell.h"
@interface CollectionViewCell()

@property (weak, nonatomic) IBOutlet UIImageView *imageCell;
@end

@implementation CollectionViewCell

-(void) configureSelf: (Post *) model {
    NSLog(@"%@", [model photoURL]);
    _imageCell.layer.borderWidth = 2;
    [_imageCell sd_setImageWithURL:[NSURL URLWithString:model.photoURL]];
}

@end
