//
//  ViewInput.h
//  PopularImagesFlickr
//
//  Created by Александр Чернов on 09.03.2018.
//  Copyright © 2018 Александр Чернов. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PresenterInput.h"
#import "PresenterOutPut.h"

@protocol ViewInput <NSObject>

@required
-(void) reloadData;
-(void) assign: (id<PresenterInput>) presenterInput : (id<PresenterOutPut>) presenterOutput;


@end
