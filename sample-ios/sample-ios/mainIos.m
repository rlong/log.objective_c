//  Copyright (c) 2013 Richard Long & HexBeerium
//
//  Released under the MIT license ( http://opensource.org/licenses/MIT )
//



#include <execinfo.h>
#import <UIKit/UIKit.h>

#import "AppDelegateIos.h"
#import "JBLog.h"


int main(int argc, char *argv[])
{
    
    Log_enteredMethod();

    @autoreleasepool {
        
        Log_info(@"setting main thread name to `main`");
        [[NSThread currentThread] setName:@"main"];

        
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegateIos class]));
    }
}
