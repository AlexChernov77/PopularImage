//
//  CollectionVC.h
//  PopularImagesFlickr
//
//  Created by Александр Чернов on 11.03.2018.
//  Copyright © 2018 Александр Чернов. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CollectionViewCell.h"
#import "ViewInput.h"

@interface CollectionVC : UIViewController <UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout, ViewInput>

@end
