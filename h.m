#include <stdio.h>
#ifdef APPLE
#include <Foundation/Foundation.h>
@interface cato : NSObject {
#else
#include <objc/Object.h>
@interface cato : Object {
#endif
	const char *str;
}
- (void)set:(const char*)val; 
- (const char*)get;
@end
@implementation cato
- (id)init {
	[super init];
	str = NULL;
	return self;
}
- (void)set:(const char*)val {
	str = val;
}
- (const char *)get {
	return str;
}
@end
int main(int ac,char **av)
{
	cato *c = [cato alloc];
	puts("alloced!");
	[c init];
	puts("inited!");
	[c set:"Hello, world!"];
	puts([c get]);
#ifdef APPLE
	[c release];
	puts("released!");
#else
	[c free];
	puts("freed!");
#endif
	return 0;
}
