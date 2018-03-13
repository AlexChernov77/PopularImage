//
//  DependencyInjector.m
//  PopularImagesFlickr
//
//  Created by Александр Чернов on 09.03.2018.
//  Copyright © 2018 Александр Чернов. All rights reserved.
//

#import "DependencyInjector.h"
#import "PopularImagePresenter.h"
#import "TableViewController.h"
#import "CollectionVC.h"

@implementation DependencyInjector


+(void) assignView : (id<ViewInput>) view
{
    if ([view isKindOfClass:[TableViewController class]] || [view isKindOfClass:[CollectionVC class]])
    {
        PopularImagePresenter *presenter = [[PopularImagePresenter alloc] init ] ;
        
        [view assign:presenter :presenter] ;
    }
}

@end
