//
//  City.h
//  TYJSONModelDemo
//
//  Created by tany on 16/4/6.
//  Copyright © 2016年 tany. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

@interface City : NSObject<NSCoding>

@property (nonatomic, strong) Person *mayor;

@property (nonatomic, assign) NSInteger total;

@property (nonatomic, strong) NSArray *deputies;

@property (nonatomic, strong) NSString *name;

@property (nonatomic, strong) NSNumber *level;

@property (nonatomic, assign) double area;

@end
