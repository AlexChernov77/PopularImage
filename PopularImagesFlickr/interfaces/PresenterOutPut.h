//
//  PresenterOutPut.h
//  PopularImagesFlickr
//
//  Created by Александр Чернов on 09.03.2018.
//  Copyright © 2018 Александр Чернов. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol PresenterOutPut <NSObject>


-(long long int)numberOfEntities;
-(id) entityAt: (NSIndexPath*) indexPath;
-(id) photoNumber: (int) index;



@end
