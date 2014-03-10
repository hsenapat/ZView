//
//  MyGradientView.h
//  ShoppingCartApproval
//
//  Created by Haraprasad.Senapati on 11/02/13.
//  Copyright (c) 2013 Wipro Technology. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>

@interface MyGradientView : UIView
{
    NSArray *colors;
}

@property(strong, nonatomic) NSArray *colors;
+ (Class)layerClass;
- (id)initWithFrame:(CGRect)frame:(NSArray *)myArray;
@end
