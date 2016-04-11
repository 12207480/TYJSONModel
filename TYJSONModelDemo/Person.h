//
//  Person.h
//  TYJSONModelDemo
//
//  Created by tany on 16/4/6.
//  Copyright © 2016年 tany. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject<NSCoding>

@property (nonatomic, strong) NSString *name;

@property (nonatomic, assign) NSInteger age;

@property (nonatomic, strong) NSString *sex;

@property (nonatomic, strong) NSNumber *tag;

@property (nonatomic, strong,readonly) NSNumber *height;

@property (nonatomic, assign) double weight;

@end
