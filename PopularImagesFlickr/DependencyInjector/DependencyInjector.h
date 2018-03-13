//
//  DependencyInjector.h
//  PopularImagesFlickr
//
//  Created by Александр Чернов on 09.03.2018.
//  Copyright © 2018 Александр Чернов. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ViewInput.h"



@interface DependencyInjector : NSObject 

+(void) assignView : (id<ViewInput>) view ;

@end
