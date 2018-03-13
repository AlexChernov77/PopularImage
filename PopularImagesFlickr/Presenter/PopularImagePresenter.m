//
//  PopularImagePresenter.m
//  PopularImagesFlickr
//
//  Created by Александр Чернов on 09.03.2018.
//  Copyright © 2018 Александр Чернов. All rights reserved.
//

#import "PopularImagePresenter.h"
#import "DataLayer.h"
#import "ViewInput.h"
#import "Post.h"

@interface PopularImagePresenter ()
@property NSArray* dataSource ;
@property id<ViewInput> view;
@end

@implementation PopularImagePresenter



- (void)viewLoaded:(id<ViewInput>)view
{
    self.view = view;
    [self getData];
}

- (id)entityAt:(NSIndexPath *)indexPath
{

    long long int index = [indexPath row];
    if ([_dataSource count] - 1 < index)
    {
        return nil;
    }
    else
    {
        return _dataSource[index];
    }
}

-(long long int)numberOfEntities
{
    return [ _dataSource count];
}

- (id)photoNumber:(int)index
{
    return _dataSource[index];
}

-(void) getData
{
    [DataLayer getData:^(NSArray * array)
    {
        dispatch_async(dispatch_get_main_queue(),
       ^{
            _dataSource = array;
            [_view reloadData];
        });
    }];
}
@end
