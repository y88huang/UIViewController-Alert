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
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *action = [UIAlertAction actionWithTitle:buttonTitle ? buttonTitle : @"OK" style:UIAlertActionStyleCancel handler:nil];
    [alertController addAction:action];
    [self presentViewController:alertController animated:YES completion:nil];
}

- (void)showAlertWithTitle:(NSString *)title message:(NSString *)message
{
    [self showAlertWithTitle:title message:message dismissButtonTitle:nil];
}

@end
