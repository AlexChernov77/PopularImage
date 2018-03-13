//
//  DataLayer.m
//  PopularImagesFlickr
//
//  Created by Александр Чернов on 09.03.2018.
//  Copyright © 2018 Александр Чернов. All rights reserved.
//

#import "DataLayer.h"

@implementation DataLayer

+(void) getData : (void(^) (NSArray* array))completion
{
    [API_WRAPPER getPostsWithSuccess:^(NSDictionary *data) {
        
        NSMutableArray* outputArray = [[NSMutableArray alloc] init];
        NSMutableArray *photoInfo = [[NSMutableArray alloc] init];
        photoInfo = data[@"photos"][@"photo"];
         for ( int i = 0 ; i < photoInfo.count ; i++ )
        {
            NSDictionary *photo = photoInfo[i] ;
            NSLog(@"%d  %@\n\n", i , photo) ;
            int farmID = [(NSNumber *)photo[@"farm"] intValue] ;
            int serverID = [(NSNumber *)photo[@"server"] intValue] ;
            long long int iD = [(NSNumber *)photo[@"id"] longLongValue] ;
            NSString *secret = (NSString*)photo[@"secret"] ;
            NSString * title = (NSString*)photo[@"title"];
            NSString *photoURL = [NSString stringWithFormat:@"https://farm%d.staticflickr.com/%d/%lld_%@.jpg", farmID, serverID, iD, secret] ;
            Post* item = [[Post alloc] initWithPicInfoString:photoURL :&iD :title];
            [outputArray addObject:item];
        }
        completion(outputArray);
    } andfailure:^(long long code) {
        
    }];
}


@end
