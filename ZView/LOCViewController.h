//
//  LOCViewController.h
//  ZView
//
//  Created by HARAPRASAD SENAPATI on 09/03/13.
//  Copyright (c) 2013 HARAPRASAD SENAPATI. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LOCViewController : UIViewController
{
    
    UIImageView *imgView;
    UIImageView *tb;
    UIButton *dload;
    UITapGestureRecognizer *tap;
}

@property(nonatomic, retain) UIImageView *imgView;
@property(nonatomic, retain) UIImageView *tb;
@property(nonatomic, retain) UIButton *dload;
@property(nonatomic, retain) UITapGestureRecognizer *tap;

-(void)doAnimation:(CGPoint)pos;

@end
