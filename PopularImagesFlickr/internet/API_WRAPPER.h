//
//  API_WRAPPER.h
//  PopularImagesFlickr
//
//  Created by Александр Чернов on 09.03.2018.
//  Copyright © 2018 Александр Чернов. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface API_WRAPPER : NSObject

+(void) getPostsWithSuccess : (void (^) (NSDictionary* data))success andfailure:(void (^) (long long int code)) failure ;

@end
