//
//  Post.h
//  PopularImagesFlickr
//
//  Created by Александр Чернов on 02.01.2018.
//  Copyright © 2018 Александр Чернов. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Post : NSObject

@property NSString  *photoURL, *authorName;
@property CGSize downloadedSize;
@property NSNumber *currentPageNumber;
@property long long int iD;

-(instancetype) initWithPicInfoString : (NSString *) url : (long long int *) iD : (NSString *) authorName ;
@end
