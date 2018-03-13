//
//  DataLayer.h
//  PopularImagesFlickr
//
//  Created by Александр Чернов on 09.03.2018.
//  Copyright © 2018 Александр Чернов. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "API_WRAPPER.h"
#import "Post.h"

@interface DataLayer : NSObject


+(void) getData : (void(^) (NSArray* array))completion;

@end
