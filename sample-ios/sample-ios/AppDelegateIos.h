//  Copyright (c) 2013 Richard Long & HexBeerium
//
//  Released under the MIT license ( http://opensource.org/licenses/MIT )
//



#import <UIKit/UIKit.h>

@class ViewController;

@interface AppDelegateIos : UIResponder <UIApplicationDelegate> {
    
}

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) UINavigationController* navigationController;


@end
