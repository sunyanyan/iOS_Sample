//
//  OneDyLibFile1.m
//  OneDyLib
//
//  Created by sunTongSheng on 2020/4/21.
//  Copyright © 2020 sunTongSheng. All rights reserved.
//

#import "OneDyLibFile1.h"

@implementation OneDyLibFile1
+(void)load{
    NSLog(@" load OneDyLibFile1 ");
}
@end


@implementation OneDyLibFile1(TestCate)
+(void)load{
    NSLog(@" load OneDyLibFile1 TestCate");
}
@end
