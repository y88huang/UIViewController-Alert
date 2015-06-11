# UIViewController-Alert
easy alert display on uiviewcontroller

# How to use
Drag and drop `UIViewController+Alert.h` and `UIViewController+Alert.m` in to your project
Make sure select "copy if needed"

#Common usage

```obj-c
[ProductManager sharedManager] getProductWithID:@abc onSuccess:^(NSArray *products){
   //do something
   } failure:^(AFHTTPRequestOperation *operation, NSError *error){
      [self showAlertWithTitle:[@(error.code) stringValue] 
                       message:error.localizedDescription
            dismissButtonTitle:@"dismiss"];
   }
```
