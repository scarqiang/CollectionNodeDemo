//
//  ViewController.m
//  CollectionNodeDemo
//
//  Created by scarqiang on 2017/10/2.
//  Copyright © 2017年 qiang. All rights reserved.
//

#import "ViewController.h"
#import "AsyncDisplayKit.h"

@interface ViewController ()<ASCollectionDelegate, ASCollectionDataSource>
@property (nonatomic, strong) ASCollectionNode *collection;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    // Do any additional setup after loading the view, typically from a nib.
    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
    layout.scrollDirection = UICollectionViewScrollDirectionHorizontal;
    layout.itemSize = CGSizeMake(120, 50);
    CGFloat w = self.view.frame.size.width;
    CGFloat h = 50;//100就没问题，cell就会显示
    
    self.collection = [[ASCollectionNode alloc] initWithFrame:CGRectMake(0, 64, w, h) collectionViewLayout:layout];
    self.collection.delegate = self;
    self.collection.dataSource = self;
    self.collection.backgroundColor = [UIColor yellowColor];
    [self.view addSubnode:self.collection];
    
}

- (ASCellNode *)collectionNode:(ASCollectionNode *)collectionNode nodeForItemAtIndexPath:(NSIndexPath *)indexPath {
    ASTextCellNode *cell = [[ASTextCellNode alloc] init];
    cell.backgroundColor = [UIColor blueColor];
    cell.text = @"Cell";
    return cell;
}

- (NSInteger)collectionNode:(ASCollectionNode *)collectionNode numberOfItemsInSection:(NSInteger)section {
    return 10;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
