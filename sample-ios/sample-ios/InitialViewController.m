//  Copyright (c) 2013 Richard Long & HexBeerium
//
//  Released under the MIT license ( http://opensource.org/licenses/MIT )
//




#import "InitialViewController.h"
#import "InitialView.h"
#import "JBLog.h"
#import "LogViewController.h"

@implementation InitialViewController


-(InitialView*)getTypedView {
    return (InitialView*)[self view];
}


-(NSData*)buildAsciiData {
    NSMutableData* answer = [NSMutableData data];
    for( int i = 0; i < 128; i++ ) {
        UInt8 b = i;
        [answer appendBytes:&b length:1];
    }
    return answer;
}

#pragma mark -
#pragma mark UI/NIB callbacks


- (IBAction)onShowLog:(id)sender {
    
    Log_enteredMethod();
    
    LogViewController* controller = [[LogViewController alloc] init];
    {
        UINavigationController* navigationController = [self navigationController];
        [navigationController pushViewController:controller animated:true];
        
    }
    [controller release];
    
}


- (IBAction)logMessages:(id)sender {

    bool bool1 = true;
    NSData* data1 = [self buildAsciiData];
    double double1 = 2.0;
    float float1 = 3.0;
    int int1 = 4;
    long long1 = 5;
    long long longLong1 = 6;
    NSObject* object1 = nil;
    NSObject* object2 = [NSArray array];
    NSString* string1 = nil;
    NSString* string2 = @"hello world!";

    // debug ...
    {
        Log_debug(@"`debug` messages");
        
        Log_enteredMethod();
        
        Log_debugBool(bool1);
        Log_debugData(data1);
        Log_debugDouble(double1);
        Log_debugFloat(float1);
        Log_debugInt(int1);
        Log_debugLong(long1);
        Log_debugLongLong(longLong1);
        Log_debugPointer(object1);
        Log_debugPointer(object2);
        Log_debugString(string1);
        Log_debugString(string2);
        
    }
    
    // info ...
    {
        
        Log_info(@"`info` messages ...");
        
        Log_infoBool(bool1);
        //Log_infoData(data1); // unimplemented
        Log_infoDouble(double1);
        Log_infoFloat(float1);
        Log_infoInt(int1);
        Log_infoLong(long1);
        Log_infoLongLong(longLong1);
        Log_infoPointer(object1);
        Log_infoPointer(object2);
        Log_infoString(string1);
        Log_infoString(string2);
    }
    
    // warn ...
    {
        Log_warn(@"`warn` messages ...");
        
        Log_warnBool(bool1);
        //Log_warnData(data1); // unimplemented
        Log_warnDouble(double1);
        Log_warnFloat(float1);
        Log_warnInt(int1);
        Log_warnLong(long1);
        Log_warnLongLong(longLong1);
        Log_warnPointer(object1);
        Log_warnPointer(object2);
        Log_warnString(string1);
        Log_warnString(string2);
    }
    
    // error ...
    {
        Log_error(@"`error` messages ...");
        
        Log_errorBool(bool1);
        //Log_errorData(data1); // unimplemented
        Log_errorDouble(double1);
        Log_errorFloat(float1);
        Log_errorInt(int1);
        Log_errorLong(long1);
        Log_errorLongLong(longLong1);
        //Log_errorPointer(object1); // unimplemented
        //Log_errorPointer(object2); // unimplemented
        Log_errorString(string1);
        Log_errorString(string2);
    }
}



- (IBAction)raiseUncaughtException:(id)sender {
    
    Log_enteredMethod();
    
    NSMutableArray* emptyArray = [NSMutableArray array];
    [emptyArray removeObjectAtIndex:0];
    
}



#pragma mark -
#pragma mark UI lifecycle


-(void)viewDidLoad {
    
    [super viewDidLoad];
    
    Log_enteredMethod();
    
    [[self navigationItem] setTitle:@"InitialViewController"];
    
    InitialView* myView = [self getTypedView];
    [[self navigationItem] setRightBarButtonItem:[myView showLog]];
    
}

#pragma mark -
#pragma mark instance lifecycle


-(id)init {
	
	InitialViewController* answer = [super initWithNibName:@"InitialView" bundle:nil];
    
	
	return answer;
}

-(void)dealloc {
	
    
    [super dealloc];
    
}

@end
