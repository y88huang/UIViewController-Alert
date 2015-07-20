//
//  UIViewController+Alert.m
//  TestAlertView
//
//  Created by Ken Huang on 2015-06-10.
//  Copyright (c) 2015 Ken Huang. All rights reserved.
//

#import "UIViewController+Alert.h"

@implementation UIViewController (Alert)

- (void)showAlertWithTitle:(NSString *)title message:(NSString *)message dismissButtonTitle:(NSString *)buttonTitle
{
    [self showAlertWithTitle:title message:message dismissButtonTitle:buttonTitle completion:nil];
}

- (void)showAlertWithTitle:(NSString *)title message:(NSString *)message
{
    [self showAlertWithTitle:title message:message dismissButtonTitle:nil];
}

- (void)showAlertWithTitle:(NSString *)title message:(NSString *)message dismissButtonTitle:(NSString *)buttonTitle completion:(void (^)(UIAlertAction *action))handler
{
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *action = [UIAlertAction actionWithTitle:buttonTitle ? buttonTitle : @"OK" style:UIAlertActionStyleCancel handler:^(UIAlertAction *action) {
        if (handler)
        {
            handler(action);
        }
    }];
    [alertController addAction:action];
    [self presentViewController:alertController animated:YES completion:nil];
}

@end
