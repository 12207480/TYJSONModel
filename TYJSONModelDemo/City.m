//
//  City.m
//  TYJSONModelDemo
//
//  Created by tany on 16/4/6.
//  Copyright © 2016年 tany. All rights reserved.
//

#import "City.h"
#import "TYJSONModel.h"

@implementation City

+ (NSDictionary *)modelClassInArrayOrDictonary
{
    return @{@"deputies" : [Person class]};
}

+ (NSDictionary *)modelPropertyMapper
{
    return @{@"total":@"total_num"};
}

//+ (NSArray *)ignoreModelProperties
//{
//    return @[@"level"];
//}

- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    return [self ty_InitWithCoder:aDecoder];
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{
    [self ty_EncodeWithCoder:aCoder];
}

@end
