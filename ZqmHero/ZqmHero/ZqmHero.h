//
//  ZqmHero.h
//  ZqmHero
//
//  Created by 张清美 on 2017/5/25.
//  Copyright © 2017年 itheima. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ZqmHero : NSObject

@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *imageName;

@property (nonatomic, strong) NSNumber *age;

+ (instancetype)ZqmHeroWithDict:(NSDictionary *)dict;
@end
