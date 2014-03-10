//
//  MyGradientView.m
//  ShoppingCartApproval
//
//  Created by Haraprasad.Senapati on 11/02/13.
//  Copyright (c) 2013 Wipro Technology. All rights reserved.
//

#import "MyGradientView.h"

@implementation MyGradientView
@synthesize colors;

+ (Class)layerClass
{
	return [CAGradientLayer class];
}

//think for future
//-(id)initWithColors:(NSArray *)customColors
//{
//    self = [super init];
//    if (self)
//    {
//    colors = [[NSArray alloc] init];
//    colors = customColors;
//    }
//    
//    return  self;
//    
//}
- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        CAGradientLayer *gradientLayer = (CAGradientLayer *)self.layer;//[CAGradientLayer layer];
        gradientLayer.colors = [NSArray arrayWithObjects:(id) [[UIColor clearColor] CGColor], (id) [[UIColor colorWithRed:130 green:191 blue:71 alpha:1.0] CGColor], nil];
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
