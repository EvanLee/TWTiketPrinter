//
//  SaleFactorySpec.m
//  TWTicketPrinter
//
//  Created by Evan on 16/3/6.
//  Copyright © 2016年 ChangHong. All rights reserved.
//

#import "Kiwi.h"
#import "SaleFactory.h"

SPEC_BEGIN (SaleFactorySpec)

describe(@"SaleFactorySpec", ^{
    
    context(@"Give a Facotry", ^{
        SaleFactory *factory = [[SaleFactory alloc] initWithFileName:@"SaleStrategies_Rebate.plist"];
        
        it(@"Should be pass testiing", ^{
            [[factory shouldNot] beNil];
            
            NSInteger mapCount = factory.goodsStrategyMap.count;
            [[theValue(mapCount) should] equal:theValue(2)];
        });
    });
});

SPEC_END