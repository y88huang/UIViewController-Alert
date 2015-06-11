//
//  UIViewController+Alert.h
//  TestAlertView
//
//  Created by Ken Huang on 2015-06-10.
//  Copyright (c) 2015 Ken Huang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIViewController (Alert)

- (void)showAlertWithTitle:(NSString *)title message:(NSString *)message;
- (void)showAlertWithTitle:(NSString *)title message:(NSString *)message dismissButtonTitle:(NSString *)buttonTitle;

@end
