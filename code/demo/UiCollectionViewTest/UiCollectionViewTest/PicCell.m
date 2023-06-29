//
//  PicCell.m
//  UiCollectionViewTest
//
//  Created by 蒙秋华 on 2023/6/29.
//


#import "PicCell.h"

@implementation PicCell

- (instancetype) initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
//initWithFrame是UIView的方法
        self.imageView = [[UIImageView alloc] initWithFrame:self.contentView.bounds];
        [self.contentView addSubview:self.imageView];
    }
    return self;
}

@end
