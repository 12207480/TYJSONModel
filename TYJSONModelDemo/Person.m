//
//  Person.m
//  TYJSONModelDemo
//
//  Created by tany on 16/4/6.
//  Copyright © 2016年 tany. All rights reserved.
//

#import "Person.h"
#import "TYJSONModel.h"

@implementation Person

- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    return [self ty_InitWithCoder:aDecoder];
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{
    [self ty_EncodeWithCoder:aCoder];
}

@end
