#import <libactivator/libactivator.h>

//You need to copy the files that I put in "./include" to "/opt/theos/include"

#import <libPass/libPass.h>

@interface ByPass : NSObject<LAListener>
{}
@end

@implementation ByPass

//isPasscodeForced is a mandatory protocol - set it to "YES" if you ever want to require the password when using libPass, otherwise it just defaults to "NO"

//Even if you don't use it, just assign it to a dummy property, the compiler gets mad otherwise.

//Wont have any adverse affects because bools are dynamically cleaned during runtime.



//Activator Action

-(void)activator:(LAActivator *)activator receiveEvent:(LAEvent *)event
{

	//Tells libPass to unlock the device

	[[libPass sharedInstance] unlockWithCodeEnabled:NO];

	//Tells Activator to ignore the default phone's action

	//[event setHandled:YES];



}


+(void)load
{
	//Loads the Action into Activator

	if (![[[NSBundle mainBundle] bundleIdentifier] isEqualToString:@"com.apple.springboard"]) {return;}
	NSAutoreleasePool *p = [[NSAutoreleasePool alloc] init];
	[[LAActivator sharedInstance] registerListener:[self new] forName:@"com.bd452.bypass"];
	[p release];
}

@end

%ctor
{
	if (![[[NSBundle mainBundle] bundleIdentifier] isEqualToString:@"com.apple.springboard"]){return;}
}
