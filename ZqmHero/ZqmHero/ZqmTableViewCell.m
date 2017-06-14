//
//  ZqmTableViewCell.m
//  ZqmHero
//
//  Created by 张清美 on 2017/5/25.
//  Copyright © 2017年 itheima. All rights reserved.
//

#import "ZqmTableViewCell.h"
#import "UIImageView+WebCache.h"
#import "ZqmHero.h"
@interface ZqmTableViewCell ()
@property (weak, nonatomic) IBOutlet UIImageView *imageName;
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *detaillabel;

@end

@implementation ZqmTableViewCell

-(void)setHero:(ZqmHero *)hero {

    _hero = hero;

    [self.imageName sd_setImageWithURL:[NSURL URLWithString:hero.imageName]];
    

    self.nameLabel.text = hero.name;
    
    self.detaillabel.text = hero.age.description;
}

@end
