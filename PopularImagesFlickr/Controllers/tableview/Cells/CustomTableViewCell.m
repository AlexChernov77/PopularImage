//
//  CustomTableViewCell.m
//  PopularImagesFlickr
//
//  Created by Александр Чернов on 02.01.2018.
//  Copyright © 2018 Александр Чернов. All rights reserved.
//

#import "CustomTableViewCell.h"
@interface CustomTableViewCell ()
@property (weak, nonatomic) IBOutlet UIImageView *imageCell;

@end

@implementation CustomTableViewCell


-(void) configureSelf: (Post *) model {
        NSLog(@"%@", [model photoURL]);
    _imageCell.layer.borderWidth = 2;
    [_imageCell sd_setImageWithURL:[NSURL URLWithString:model.photoURL]];
}

@end
