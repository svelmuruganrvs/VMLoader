//
//  VMLoader.h
//  RotateImage
//
//  Created by Velmurugan on 13/08/15.
//  Copyright (c) 2015 Velmurugan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface VMLoader : UIView
//Init With the parentview where to added.
-(id)initWithView:(UIView *)view;
///Show the activity indicator.
-(void)show;
///Hide the Indicator
-(void)hide;
///Remove the Objects
-(void)removeMe;
@end
