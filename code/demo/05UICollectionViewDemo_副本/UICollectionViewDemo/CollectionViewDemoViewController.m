//
//  CollectionViewDemoViewController.m
//  05UICollectionViewDemo
//
//  Created by 蒙秋华 on 2023/6/25.
//

#import "CollectionViewDemoViewController.h"

#define CELL_ID   @"CollectionViewCellId"
#define HEADER_ID @"CollectionViewHeadId"
#define FOOTER_ID @"CollectionViewFootId"
#define SPACE 20
#define NUM 3

#define RANDOM_COLOR [UIColor colorWithRed:arc4random()%256/255.f green:arc4random()%256/255.f blue:arc4random()%256/255.f alpha:1.f]

@interface CollectionViewDemoViewController () <UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout>
//1.声明变量UICollectionView和对应layout
@property(nonatomic)UICollectionView *collectionView;
@property(nonatomic)UICollectionViewFlowLayout *collectionViewFlowLayout;

@end

@implementation CollectionViewDemoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
//    2.对layout做初始化
    self.collectionViewFlowLayout = [[UICollectionViewFlowLayout alloc]init];
    
    
//    3.对collectionView做初始化
    self.collectionView = [[UICollectionView alloc]initWithFrame:self.view.bounds collectionViewLayout:self.collectionViewFlowLayout];
//    [self.collectionView setBackgroundColor:UIColor.blueColor];
    [self.collectionView setBackgroundColor:UIColor.purpleColor];
    self.collectionView.delegate = self;
    self.collectionView.dataSource = self;
//    通过id注册 实现复用
    [self.collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:CELL_ID];
    
//    4.将collectionView加到父view
    [self.view addSubview:self.collectionView];
    
}

- (void)viewDidLayoutSubviews {
//    更改collectionView的高度 使其于导航栏下部对齐
    CGRect frame = self.view.frame;
    frame.origin.y = [self.view safeAreaInsets].top;
    
    frame.size.height -= frame.origin.y;
    frame.size.height -= [self.view safeAreaInsets].bottom;
    
    self.collectionView.frame = frame;
}
//通过协议实现来定制
#pragma mark - UICollectionViewDataSource
//数据来源data source
- (nonnull __kindof UICollectionViewCell *)collectionView:(nonnull UICollectionView *)collectionView cellForItemAtIndexPath:(nonnull NSIndexPath *)indexPath {
//    The cell that is returned must be retrieved from a call to -dequeueReusableCellWithReuseIdentifier:forIndexPath:
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:CELL_ID forIndexPath:indexPath];
    
    cell.backgroundColor = RANDOM_COLOR;
    NSLog(@"%@",NSStringFromCGRect(cell.frame));
    return cell;
}
//指定有多少个seciton
- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return NUM;
}

//指定一个section中有多少个cell，这里的cell也成为Item
- (NSInteger)collectionView:(nonnull UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return NUM;
}

#pragma mark - UICollectionViewDelegate
//是否允许选中
- (BOOL)collectionView:(UICollectionView *)collectionView shouldSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    return YES;
}

//点击选中一个cell的事件，这里可以做业务逻辑比如页面跳转
-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"(section,row) = (%ld,%ld)",indexPath.section,indexPath.row);
}



#pragma mark - UICollectionViewDelegateFlowLayout
//根据indexPath 指定itemSize大小
- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath;
{
//    平均分成n份
    return CGSizeMake(([UIScreen mainScreen].bounds.size.width - SPACE*(NUM+2))/NUM, (self.collectionView.frame.size.height - SPACE*(NUM+2))/NUM);
}

//根据indexPath 指定section的padding
- (UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout insetForSectionAtIndex:(NSInteger)section
{
    return UIEdgeInsetsMake(SPACE/2, SPACE, SPACE, SPACE);
}

//指定最小item间上下间距
- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout minimumLineSpacingForSectionAtIndex:(NSInteger)section
{
    return SPACE;
}

//指定最小item间左右间距
- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout minimumInteritemSpacingForSectionAtIndex:(NSInteger)section
{
    return SPACE;
}


@end


