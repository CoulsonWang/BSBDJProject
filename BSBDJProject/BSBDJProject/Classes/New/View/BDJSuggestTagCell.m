//
//  BDJSuggestTagCell.m
//  BSBDJProject
//
//  Created by Coulson_Wang on 2017/6/26.
//  Copyright © 2017年 Coulson_Wang. All rights reserved.
//

#import "BDJSuggestTagCell.h"
#import <UIImageView+WebCache.h>

@interface BDJSuggestTagCell ()

@property (nonatomic, weak) IBOutlet UIImageView *iconView;
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *numLabel;

@end

@implementation BDJSuggestTagCell

- (void)awakeFromNib {
    [super awakeFromNib];
    self.iconView.layer.cornerRadius = self.iconView.YY_width * 0.5;
    self.iconView.layer.masksToBounds = YES;
    self.separatorInset = UIEdgeInsetsZero;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

}



- (void)setItem:(BDJSuggestTapItem *)item {
    _item = item;
    self.nameLabel.text = item.theme_name;
    self.numLabel.text = [self getNumberString:item.sub_number];
    [self.iconView sd_setImageWithURL:[NSURL URLWithString:item.image_list] placeholderImage:[UIImage imageNamed:@"defaultUserIcon"]];
}

//处理“万人”数字
- (NSString *)getNumberString:(NSString *)originalString {
    NSInteger num = [originalString integerValue];
    NSString *resultString;
    if (num < 10000) {
        resultString = [NSString stringWithFormat:@"%@人订阅",originalString];
    } else {
        resultString = [NSString stringWithFormat:@"%.1f万人订阅",num / 10000.0];
        //如果以.0结尾则删去.0
        [resultString stringByReplacingOccurrencesOfString:@".0" withString:@""];
    }
    return resultString;
}

@end
