//
//  TableViewController.m
//  PopularImagesFlickr
//
//  Created by Александр Чернов on 03.01.2018.
//  Copyright © 2018 Александр Чернов. All rights reserved.
//

#import "TableViewController.h"
#import "PresenterOutPut.h"
#import "PresenterInput.h"
#import "DependencyInjector.h"

@interface TableViewController ()
@property id<PresenterInput> presenterInput;
@property id<PresenterOutPut> presenterOutput;
@property (weak, nonatomic) IBOutlet UITableView *tableView;


@end

@implementation TableViewController



  NSString *kCounterCellReuseIdentifer = @"kCounterCellReuseIdentifer";


- (void)viewDidLoad {
    [super viewDidLoad];
    UINib *kCounterCellNIB = [UINib nibWithNibName:@"CustomTableViewCell" bundle:nil];
    [_tableView registerNib:kCounterCellNIB forCellReuseIdentifier:kCounterCellReuseIdentifer];
    [DependencyInjector assignView:self];
    _tableView.dataSource = self;
}


-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [_presenterOutput numberOfEntities];
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    CustomTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:kCounterCellReuseIdentifer forIndexPath:indexPath];
    
    Post *model = [_presenterOutput entityAt:indexPath];
    [cell configureSelf:model];
    return cell;
}

- (void)assign:(id<PresenterInput>)presenterInput :(id<PresenterOutPut>)presenterOutput
{
    self.presenterInput = presenterInput;
    self.presenterOutput = presenterOutput;
    
    [presenterInput viewLoaded:self];
}

- (void)reloadData
{
    [_tableView reloadData];
}


@end
