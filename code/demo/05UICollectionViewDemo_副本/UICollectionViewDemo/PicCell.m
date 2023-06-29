//
//  PicCell.m
//  05UICollectionViewDemo
//
//  Created by 蒙秋华 on 2023/6/29.
//

#import "PicCell.h"

@implementation PicCell

- (instancetype) initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        self.imageView = [[UIImageView alloc] initWithFrame:self.contentView.bounds];
        [self.contentView addSubview:self.imageView];
    }
    return self;
}

@end
