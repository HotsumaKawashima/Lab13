#include <stdlib.h>
#import <Foundation/Foundation.h>

@interface NSString (Additional)

- (NSString *)stringByPigLatinization;

@end

@implementation NSString (Additional)

- (NSString *)stringByPigLatinization
{
    return [[NSArray arrayWithObjects:[[NSArray arrayWithObjects:[[[self componentsSeparatedByString:@" "] objectAtIndex:0] stringByReplacingCharactersInRange:[[[self componentsSeparatedByString:@" "] objectAtIndex:0] rangeOfString:[[[[self componentsSeparatedByString:@" "] objectAtIndex:0] componentsSeparatedByCharactersInSet:[NSCharacterSet characterSetWithCharactersInString:@"aeiouAEIOU"]] objectAtIndex:0]] withString:@""], [[[[self componentsSeparatedByString:@" "] objectAtIndex:0] componentsSeparatedByCharactersInSet:[NSCharacterSet characterSetWithCharactersInString:@"aeiouAEIOU"]] objectAtIndex:0], @"ay", nil] componentsJoinedByString:@""], [self componentsSeparatedByString:@" "].count - 1 <= 0 ? nil : [[[[self componentsSeparatedByString:@" "] subarrayWithRange:NSMakeRange(1, [self componentsSeparatedByString:@" "].count - 1)] componentsJoinedByString:@" "] stringByPigLatinization], nil] componentsJoinedByString:@" "];
}

@end


int main(int argc, const char * argv[]) {
  NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

  NSLog(@"%@", [@"I eat banana" stringByPigLatinization]);

  [pool drain];
  return 0;
}
