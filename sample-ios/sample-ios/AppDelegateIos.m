//  Copyright (c) 2013 Richard Long & HexBeerium
//
//  Released under the MIT license ( http://opensource.org/licenses/MIT )
//






#import "AppDelegateIos.h"
#import "InitialViewController.h"
#import "JBLog.h"
#import "JBSimpleLogConsumer.h"



// vvv http://creativeinaustria.wordpress.com/2008/10/18/crash-reporter-for-iphone-applications/

void logUncaughtException(NSException *exception);
void logUncaughtException(NSException *exception) {
    
    
    Log_errorException( exception );
    
}

// ^^^ http://creativeinaustria.wordpress.com/2008/10/18/crash-reporter-for-iphone-applications/



@implementation AppDelegateIos

- (void)dealloc
{
    [_window release];
    [_navigationController release];
    [super dealloc];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    
    // setup a log consumer to retain log messages
    {
        JBSimpleLogConsumer* logConsumer = [[JBSimpleLogConsumer alloc] init];
        {
            [JBLog setLogConsumer:logConsumer forCaller:__func__];
        }
        [logConsumer release];
        
    }
    Log_enteredMethod();
    
    
    // vvv http://creativeinaustria.wordpress.com/2008/10/18/crash-reporter-for-iphone-applications/
    
    Log_debugPointer( NSGetUncaughtExceptionHandler() );
    
    if( nil == NSGetUncaughtExceptionHandler() ) {
        NSSetUncaughtExceptionHandler(&logUncaughtException);
    }
    
    // ^^^ http://creativeinaustria.wordpress.com/2008/10/18/crash-reporter-for-iphone-applications/
    

    
    self.window = [[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]] autorelease];
    
    InitialViewController* initialViewController = [[[InitialViewController alloc] init] autorelease];
    
    self.navigationController = [[[UINavigationController alloc] initWithRootViewController:initialViewController] autorelease];
    
    self.window.rootViewController = self.navigationController;
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
