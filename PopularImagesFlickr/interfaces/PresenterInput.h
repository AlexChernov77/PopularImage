//
//  PresenterInput.h
//  PopularImagesFlickr
//
//  Created by Александр Чернов on 09.03.2018.
//  Copyright © 2018 Александр Чернов. All rights reserved.
//


#import <Foundation/Foundation.h>
@protocol ViewInput;
@protocol PresenterInput <NSObject>


@required
-(void) viewLoaded: (id<ViewInput>) view;

@end
