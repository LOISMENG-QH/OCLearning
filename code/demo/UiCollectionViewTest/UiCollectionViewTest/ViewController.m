//
//  ViewController.m
//  UiCollectionViewTest
//
//  Created by 蒙秋华 on 2023/6/29.
//

#import "ViewController.h"
#import "PicCell.h"

#define CELL_ID_1 @"pic_cell"
#define NUMBER 3

@interface ViewController () <UICollectionViewDelegate,  UICollectionViewDataSource>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    //    1.layout
    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc]init];
    layout.scrollDirection = UILayoutConstraintAxisVertical;
    
//    2.collectionView
    UICollectionView *collectionView = [[UICollectionView alloc] initWithFrame:self.view.bounds collectionViewLayout:layout];
    
    collectionView.backgroundColor = UIColor.purpleColor;
    
    collectionView.delegate = self;
    collectionView.dataSource = self;
    
    [collectionView registerClass:[PicCell class] forCellWithReuseIdentifier:CELL_ID_1];
    
    [self.view addSubview:collectionView];
    
}


- (nonnull __kindof UICollectionViewCell *)collectionView:(nonnull UICollectionView *)collectionView cellForItemAtIndexPath:(nonnull NSIndexPath *)indexPath {
    PicCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:CELL_ID_1 forIndexPath:indexPath];
    [cell.imageView setImage: [UIImage imageNamed:@"headicon"]];
    return cell;
}

- (NSInteger)collectionView:(nonnull UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return NUMBER;
}


@end
