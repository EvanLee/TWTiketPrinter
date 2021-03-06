//
//  GoodsItem.m
//  TWTicketPrinter
//
//  Created by Evan on 16/3/5.
//  Copyright © 2016年 ChangHong. All rights reserved.
//

#import "GoodsItem.h"
#import "GoodsInfo.h"

@interface GoodsItem ()
@property (nonatomic, strong) GoodsInfo  *info;
@property (nonatomic, assign) NSUInteger count;
@end

@implementation GoodsItem

#pragma mark - Instance LifeCycle

- (instancetype)initWithGoodsInfo:(GoodsInfo *)goods {
    self = [super init];
    if (self) {
        self.info = goods;
    }
    return self;
}

#pragma mark - Public Methods

- (void)addOne {
    _count++;
}

- (void)addWithCount:(NSUInteger)count {
    _count += count;
}

#pragma mark - Getters & Setters

- (NSString *)barCode {
    return self.info.barCode;
}

- (NSString *)unitsName {
    return self.info.unitsName;
}

- (NSString *)goodsName {
    return self.info.goodsName;
}


- (CGFloat)price {
    return self.info.price;
}

@end
