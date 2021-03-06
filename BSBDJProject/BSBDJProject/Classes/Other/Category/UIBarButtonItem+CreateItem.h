//
//  UIBarButtonItem+CreateItem.h
//  BSBDJProject
//
//  Created by Coulson_Wang on 2017/6/25.
//  Copyright © 2017年 Coulson_Wang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (CreateItem)

+ (instancetype)itemWithImage:(UIImage *)image highLightImage:(UIImage *)highLightImage target:(id)target action:(SEL)action;

+ (instancetype)itemWithImage:(UIImage *)image highLightImage:(UIImage *)highLightImage selectedImage:(UIImage *)selectedImage target:(id)target action:(SEL)action;

+ (instancetype)backItemWithImage:(UIImage *)image highLightImage:(UIImage *)highLightImage target:(id)target action:(SEL)action title:(NSString *)title;

@end
