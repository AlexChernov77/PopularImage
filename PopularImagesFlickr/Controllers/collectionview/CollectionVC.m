//
//  CollectionVC.m
//  PopularImagesFlickr
//
//  Created by Александр Чернов on 11.03.2018.
//  Copyright © 2018 Александр Чернов. All rights reserved.
//

#import "CollectionVC.h"
#import "PresenterOutPut.h"
#import "PresenterInput.h"
#import "DependencyInjector.h"

@interface CollectionVC ()
@property id<PresenterInput> presenterInput;
@property id<PresenterOutPut> presenterOutput;
@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;

@end

@implementation CollectionVC

    NSString *kCounterReuseIdentifer = @"kCellReuseIdentifer";

- (void)viewDidLoad
{
    [super viewDidLoad];
    UINib *kCounterCellNIB = [UINib nibWithNibName:@"CollectionViewCell" bundle:nil];
    [_collectionView registerNib:kCounterCellNIB forCellWithReuseIdentifier:kCounterReuseIdentifer];
    [DependencyInjector assignView:self];
    _collectionView.dataSource = self;
    _collectionView.delegate = self;
    
}

- (void)assign:(id<PresenterInput>)presenterInput :(id<PresenterOutPut>)presenterOutput
{
    self.presenterInput = presenterInput;
    self.presenterOutput = presenterOutput;
    
    [presenterInput viewLoaded: self];
}

- (void)reloadData
{
    [_collectionView reloadData];
}

-(NSInteger) collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
     return [_presenterOutput numberOfEntities];
}

-(UICollectionViewCell*) collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    CollectionViewCell *cell = [_collectionView dequeueReusableCellWithReuseIdentifier:kCounterReuseIdentifer forIndexPath:indexPath];
    
    Post *model = [_presenterOutput entityAt:indexPath];
    [cell configureSelf:model];
    return cell;
}

//MARK: - Cell size and borders
- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout minimumLineSpacingForSectionAtIndex:(NSInteger)section
{
    return 1;
}

- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout minimumInteritemSpacingForSectionAtIndex:(NSInteger)section
{
    return 1;
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath: (NSIndexPath *)indexPath
{
    return CGSizeMake((CGRectGetWidth(_collectionView.frame) - 2.0) / 3, (CGRectGetWidth(_collectionView.frame) - 2.0) / 3);
}
@end
