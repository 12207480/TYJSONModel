//
//  ViewController.m
//  TYJSONModelDemo
//
//  Created by tany on 16/4/6.
//  Copyright © 2016年 tany. All rights reserved.
//

#import "ViewController.h"
#import "TYJSONModel.h"
#import "Person.h"
#import "City.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    testDemo1();
    
    testDemo2();
    
    testDemo3();
    
    testDemo4();
    
    testDemo5();
}


void testDemo1()
{
    Person *person = [[Person alloc]init];
    person.age = 20;
    person.name = @"yester";
    person.sex = @"女";
    person.tag = @(6);
    //person.height = @(168.8);
    person.weight = 46.6;
    
    NSString *path = NSTemporaryDirectory();
    path = [NSString stringWithFormat:@"%@Person.plist",path];
    // 归档
    [NSKeyedArchiver archiveRootObject:person toFile:path];
    NSLog(@"archive path : %@",path);
    
    // 解归档
    Person *person1 = [NSKeyedUnarchiver unarchiveObjectWithFile:path];
    NSLog(@"person: age: %ld, name: %@, sex: %@ tag:%@ height:%@ weight:%f",person1.age,person1.name,person1.sex,person1.tag,person1.height,person1.weight);
}

void testDemo2()
{
    Person *person = [[Person alloc]init];
    person.age = 20;
    person.name = @"yester";
    person.sex = @"女";
    person.tag = @(6);
    //person.height = @(168.8);
    person.weight = 46.6;
    
    NSDictionary *dic = [person ty_ModelToDictonary];
    NSLog(@"person dic : %@",dic);
    
    Person *person1 = [Person ty_ModelWithDictonary:dic];
    NSLog(@"person: age: %ld, name: %@, sex: %@ tag:%@ height:%@ weight:%f",person1.age,person1.name,person1.sex,person1.tag,person1.height,person1.weight);
    
}

void testDemo3()
{
    City *city = [[City alloc]init];
    
    Person *mayor = [[Person alloc]init];
    mayor.age = 20;
    mayor.name = @"maey";
    mayor.sex = @"女";
    mayor.tag = @(6);
    //mayor.height = @(168.8);
    mayor.weight = 46.6;
    
    Person *deputie = [[Person alloc]init];
    deputie.age = 26;
    deputie.name = @"jack";
    deputie.sex = @"男";
    deputie.tag = @(8);
    //deputie.height = @(178.8);
    deputie.weight = 48.6;
    
    Person *deputie1 = [[Person alloc]init];
    deputie1.age = 28;
    deputie1.name = @"mark";
    deputie1.sex = @"男";
    deputie1.tag = @(7);
    //deputie1.height = @(178.8);
    deputie1.weight = 46.8;
    
    city.mayor = mayor;
    city.total = 66666666;
    city.deputies = @[mayor,deputie,deputie1];
    
    city.name = @"hancheng";
    city.level = @(1);
    city.area = 166666.6666;
    
    NSDictionary *dic = [city ty_ModelToDictonary];
    NSLog(@"city dic : %@",dic);
    
    City *city1 = [City ty_ModelWithDictonary:dic];
    NSLog(@"city: mayor: %@, name: %@, deputies: %@ total:%ld level:%@ area:%f",city1.mayor,city1.name,city1.deputies,city1.total,city1.level,city1.area);
    
    NSLog(@"city json: %@",[city ty_ModelToJSONString]);
}

void testDemo4()
{
    City *city = [[City alloc]init];
    
    Person *mayor = [[Person alloc]init];
    mayor.age = 20;
    mayor.name = @"maey";
    mayor.sex = @"女";
    mayor.tag = @(6);
    //mayor.height = @(168.8);
    mayor.weight = 46.6;
    
    Person *deputie = [[Person alloc]init];
    deputie.age = 26;
    deputie.name = @"jack";
    deputie.sex = @"男";
    deputie.tag = @(8);
    //deputie.height = @(178.8);
    deputie.weight = 48.6;
    
    Person *deputie1 = [[Person alloc]init];
    deputie1.age = 28;
    deputie1.name = @"mark";
    deputie1.sex = @"男";
    deputie1.tag = @(7);
    //deputie1.height = @(178.8);
    deputie1.weight = 46.8;
    
    city.mayor = mayor;
    city.total = 66666666;
    city.deputies = @[mayor,deputie,deputie1];
    
    city.name = @"hancheng";
    city.level = @(1);
    city.area = 166666.6666;
    
    NSString *path = NSTemporaryDirectory();
    path = [NSString stringWithFormat:@"%@City.plist",path];
    // 归档
    [NSKeyedArchiver archiveRootObject:city toFile:path];
    NSLog(@"archive path : %@",path);
    
    // 解归档
    City *city1 = [NSKeyedUnarchiver unarchiveObjectWithFile:path];
    NSLog(@"city: mayor: %@, name: %@, deputies: %@ total:%ld level:%@ area:%f",city1.mayor,city1.name,city1.deputies,city1.total,city1.level,city1.area);
    
}

void testDemo5()
{
    NSString *jsonString = @"{\"deputies\":[{\"age\":20,\"sex\":\"女\",\"weight\":46.6,\"name\":\"maey\",\"tag\":6,\"height\":168.8},{\"age\":26,\"sex\":\"男\",\"weight\":48.6,\"name\":\"jack\",\"tag\":8,\"height\":178.8},{\"age\":28,\"sex\":\"男\",\"weight\":46.8,\"name\":\"mark\",\"tag\":7,\"height\":178.8}],\"mayor\":{\"age\":20,\"sex\":\"女\",\"weight\":46.6,\"name\":\"maey\",\"tag\":6,\"height\":168.8},\"area\":166666.6666,\"level\":1,\"total_num\":66666666,\"name\":\"hancheng\"}";
    
    City *city1 = [City ty_ModelWithJSON:jsonString];
    NSLog(@"city: mayor: %@, name: %@, deputies: %@ total:%ld level:%@ area:%f",city1.mayor,city1.name,city1.deputies,city1.total,city1.level,city1.area);
    
    NSLog(@"city : %@",[city1 ty_ModelToJSONString]);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
