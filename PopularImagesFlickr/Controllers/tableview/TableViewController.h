//
//  TableViewController.h
//  PopularImagesFlickr
//
//  Created by Александр Чернов on 03.01.2018.
//  Copyright © 2018 Александр Чернов. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CustomTableViewCell.h"
#import "ViewInput.h"

@interface TableViewController : UIViewController <UITableViewDataSource, UITableViewDelegate, ViewInput>

@end
