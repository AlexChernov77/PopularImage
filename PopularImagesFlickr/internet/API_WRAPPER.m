//
//  API_WRAPPER.m
//  PopularImagesFlickr
//
//  Created by Александр Чернов on 09.03.2018.
//  Copyright © 2018 Александр Чернов. All rights reserved.
//

#import "API_WRAPPER.h"

@implementation API_WRAPPER

+(void) getPostsWithSuccess : (void (^) (NSDictionary* data))success andfailure:(void (^) (long long int code)) failure
{
    NSString* urlString = @"https://www.flickr.com/services/rest?method=flickr.interestingness.getList&api_key=3988023e15f45c8d4ef5590261b1dc53&per_page=20&page=1&format=json&nojsoncallback=1" ;
    
    NSURL* url = [[NSURL alloc] initWithString:urlString] ;
    
    NSURLSessionDataTask* dataTask = [[NSURLSession sharedSession] dataTaskWithURL:url completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error)
    {
        if (data != NULL)
        {
             NSError *e = nil;
            
            NSDictionary *JSON = [NSJSONSerialization
                                  JSONObjectWithData: data
                                  options: NSJSONReadingMutableContainers
                                  error: &e];
            
            success(JSON) ;
            
        }
        else
        {
            long long int code = [error code];
            
            failure(code) ;
        }
    }];
    
    [dataTask resume];
}


@end
