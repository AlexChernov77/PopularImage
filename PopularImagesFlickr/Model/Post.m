//
//  Post.m
//  PopularImagesFlickr
//
//  Created by Александр Чернов on 02.01.2018.
//  Copyright © 2018 Александр Чернов. All rights reserved.
//

#import "Post.h"

@implementation Post


-(instancetype) initWithPicInfoString : (NSString *) url : (long long int *) iD : (NSString *) authorName
{
    if ( self = [super init] )
    {
        self.photoURL = url ;
        self.iD = *(iD) ;
        self.authorName = authorName ;
    }
    
    return self ;
}

@end
