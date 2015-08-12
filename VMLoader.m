//
//  VMLoader.m
//  RotateImage
//
//  Created by Velmurugan on 13/08/15.
//  Copyright (c) 2015 Velmurugan. All rights reserved.
//

#import "VMLoader.h"
#define LOADER_WIDTH  40
#define LOADER_HEIGHT  40
@interface VMLoader()
{
    UIView *parenttView;
    UIImageView *imageView;
}
@end
@implementation VMLoader


-(id)initWithView:(UIView *)view
{

    if (self = [super init]) {
        parenttView = view;
        imageView = [[UIImageView alloc] init];
        [self updateFrame];
        imageView.image = [UIImage imageNamed:@"color.png"];
        self.alpha = .4;
        self.backgroundColor = [UIColor blackColor];
        imageView.alpha = .9;
        
        
        imageView.clipsToBounds = YES;
        imageView.layer.cornerRadius = LOADER_HEIGHT/2;
        
        imageView.layer.borderColor = [UIColor grayColor].CGColor;
        imageView.layer.borderWidth = 1;
    }
    return self;
}
-(void)show
{
    [self updateFrame];
    [parenttView addSubview:self];
    [parenttView addSubview:imageView];
    [VMLoader rotateLayerInfinite:imageView.layer];


}
-(void)hide
{
    [self removeFromSuperview];
    [imageView removeFromSuperview];
    [imageView.layer removeAllAnimations];

}
-(void)layoutIfNeeded
{
    [super layoutIfNeeded];
    [self updateFrame];
}
-(void)layoutSubviews
{
    [super layoutSubviews];
    [self updateFrame];
}
-(void)removeMe
{
    [self hide];
    imageView.image = nil;
    imageView = nil;
}
//-(void)animation
//{
//    [UIView animateWithDuration:2.0 delay:.2 usingSpringWithDamping:1 initialSpringVelocity:1.0 options:0 animations:^{
//
//       CGRect optionsFrame = imageView.frame;
//        optionsFrame.origin.x = 0;
//        imageView.frame = optionsFrame;
////        optionsFrame.origin.x = parenttView.bounds.size.width;
////        imageView.frame = optionsFrame;
//        [self updateFrame];
//        
//    } completion:^(BOOL finished) {
//        
//    }];
//}
-(void)updateFrame
{
    self.frame = parenttView.frame;
    imageView.frame = CGRectMake(((self.bounds.size.width/2)-(LOADER_WIDTH/2)), ((self.bounds.size.height/2)-(LOADER_HEIGHT/2)), LOADER_WIDTH, LOADER_HEIGHT);
}
+ (void)rotateLayerInfinite:(CALayer *)layer
{
    CABasicAnimation *rotation;
    rotation = [CABasicAnimation animationWithKeyPath:@"transform.rotation"];
    rotation.fromValue = [NSNumber numberWithFloat:0];
    rotation.toValue = [NSNumber numberWithFloat:(2 * M_PI)];
    rotation.duration = 0.7f; // Speed
    rotation.repeatCount = HUGE_VALF; // Repeat forever. Can be a finite number.
    [layer removeAllAnimations];
    [layer addAnimation:rotation forKey:@"Spin"];
}


@end
