//
//  ViewController.m
//  ZqmHero
//
//  Created by 张清美 on 2017/5/25.
//  Copyright © 2017年 itheima. All rights reserved.
//

#import "ViewController.h"
#import "AFNetworking.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
  
    [self loadData];
}

- (void)loadData {
  
    
    AFHTTPSessionManager * manger = [AFHTTPSessionManager manager];
    
    [manger GET:@"https://raw.githubusercontent.com/MapleMei/-one/master/contacts.json" parameters:nil progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        
        NSLog(@"%@",responseObject);
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        
        
    }];

}
@end
