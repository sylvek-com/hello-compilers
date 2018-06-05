#include <objc/Object.h>
#include <stdio.h>
@interface cato : Object {
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
	[c set:"Hello, Objective-C!"];
	puts([c get]);
	[c free];
	puts("freed!");
	return 0;
}
