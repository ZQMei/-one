//
//  ZqmHero.m
//  ZqmHero
//
//  Created by 张清美 on 2017/5/25.
//  Copyright © 2017年 itheima. All rights reserved.
//

#import "ZqmHero.h"

@implementation ZqmHero
+ (instancetype)ZqmHeroWithDict:(NSDictionary *)dict {
    id obj = [[self alloc] init];
    
    [obj setValuesForKeysWithDictionary:dict];
    
    return obj;
}
@end
