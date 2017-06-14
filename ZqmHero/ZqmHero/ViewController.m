//
//  ViewController.m
//  ZqmHero
//
//  Created by 张清美 on 2017/5/25.
//  Copyright © 2017年 itheima. All rights reserved.
//

#import "ViewController.h"
#import "AFNetworking.h"
#import "ZqmHero.h"
#import "ZqmTableViewCell.h"
@interface ViewController ()
@property (nonatomic, strong) NSArray *heroArr;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
  
    [self loadData];
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return _heroArr.count;

}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {


    ZqmHero * hero = self.heroArr[indexPath.row];

    ZqmTableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:@"cell"forIndexPath:indexPath];
    
    cell.hero = hero;
    
    return cell;

}
- (void)loadData {
  
    
    AFHTTPSessionManager * manger = [AFHTTPSessionManager manager];
    
    [manger GET:@"https://raw.githubusercontent.com/hitheima/HMContacts/master/contacts.json" parameters:nil progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
      
        NSArray * dictArr = responseObject;
        
        NSMutableArray * arrM = [NSMutableArray arrayWithCapacity:dictArr.count];
        for (NSDictionary  * dict in dictArr) {
            
            ZqmHero * hero = [ZqmHero ZqmHeroWithDict:dict];
            
            [arrM addObject:hero];
            
            
        }
        
        _heroArr = arrM.copy;
        
        [self.tableView reloadData];
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        
        NSLog(@"%@",error);
    }];

}
@end
