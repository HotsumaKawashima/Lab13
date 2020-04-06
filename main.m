#include <stdlib.h>
#import <Foundation/Foundation.h>

@interface NSString (Additional)

- (NSString *)stringByPigLatinization;

@end

@implementation NSString (Additional)

- (NSString *)stringByPigLatinization
{
    NSMutableArray *array = [[NSMutableArray alloc] init];

    for (NSString* word in [self componentsSeparatedByString:@" "]) {
        [array addObject:
          [
            [NSArray arrayWithObjects:
              [word stringByReplacingCharactersInRange:[word rangeOfString:[[word componentsSeparatedByCharactersInSet:[NSCharacterSet characterSetWithCharactersInString:@"aeiouAEIOU"]] objectAtIndex:0]] withString:@""],
              [[word componentsSeparatedByCharactersInSet:[NSCharacterSet characterSetWithCharactersInString:@"aeiouAEIOU"]] objectAtIndex:0],
              @"ay",
              nil
            ]
            componentsJoinedByString:@""
          ]
        ];
    }

    NSString *sentenceInPigLatin = [array componentsJoinedByString:@" "];
    return sentenceInPigLatin;
}

@end


int main(int argc, const char * argv[]) {
  NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

  NSLog(@"%@", @"");
  NSLog(@"%@", @"1");

  NSLog(@"%@", [@"pig"      stringByPigLatinization]);
  NSLog(@"%@", [[@"pig"     stringByPigLatinization] isEqualToString:@"igpay"] ? @"YES" : @"NO");
  NSLog(@"%@", [@"latin"    stringByPigLatinization]);
  NSLog(@"%@", [[@"latin"   stringByPigLatinization] isEqualToString:@"atinlay"] ? @"YES" : @"NO");
  NSLog(@"%@", [@"banana"   stringByPigLatinization]);
  NSLog(@"%@", [[@"banana"  stringByPigLatinization] isEqualToString:@"ananabay"] ? @"YES" : @"NO");
  NSLog(@"%@", [@"will"     stringByPigLatinization]);
  NSLog(@"%@", [[@"will"    stringByPigLatinization] isEqualToString:@"illway"] ? @"YES" : @"NO");
  NSLog(@"%@", [@"butler"   stringByPigLatinization]);
  NSLog(@"%@", [[@"butler"  stringByPigLatinization] isEqualToString:@"utlerbay"] ? @"YES" : @"NO");
  NSLog(@"%@", [@"happy"    stringByPigLatinization]);
  NSLog(@"%@", [[@"happy"   stringByPigLatinization] isEqualToString:@"appyhay"] ? @"YES" : @"NO");
  NSLog(@"%@", [@"duck"     stringByPigLatinization]);
  NSLog(@"%@", [[@"duck"    stringByPigLatinization] isEqualToString:@"uckday"] ? @"YES" : @"NO");
  NSLog(@"%@", [@"me"       stringByPigLatinization]);
  NSLog(@"%@", [[@"me"      stringByPigLatinization] isEqualToString:@"emay"] ? @"YES" : @"NO");

  NSLog(@"%@", @"");
  NSLog(@"%@", @"2");
  NSLog(@"%@", [@"smile"    stringByPigLatinization]);
  NSLog(@"%@", [[@"smile"   stringByPigLatinization] isEqualToString:@"ilesmay"] ? @"YES" : @"NO");
  NSLog(@"%@", [@"string"   stringByPigLatinization]);
  NSLog(@"%@", [[@"string"  stringByPigLatinization] isEqualToString:@"ingstray"] ? @"YES" : @"NO");
  NSLog(@"%@", [@"stupid"   stringByPigLatinization]);
  NSLog(@"%@", [[@"stupid"  stringByPigLatinization] isEqualToString:@"upidstay"] ? @"YES" : @"NO");
  NSLog(@"%@", [@"glove"    stringByPigLatinization]);
  NSLog(@"%@", [[@"glove"   stringByPigLatinization] isEqualToString:@"overglay"] ? @"YES" : @"NO");
  NSLog(@"%@", [@"trash"    stringByPigLatinization]);
  NSLog(@"%@", [[@"trash"   stringByPigLatinization] isEqualToString:@"ashtray"] ? @"YES" : @"NO");
  NSLog(@"%@", [@"floor"    stringByPigLatinization]);
  NSLog(@"%@", [[@"floor"   stringByPigLatinization] isEqualToString:@"oorflay"] ? @"YES" : @"NO");
  NSLog(@"%@", [@"store"    stringByPigLatinization]);
  NSLog(@"%@", [[@"store"   stringByPigLatinization] isEqualToString:@"orestay"] ? @"YES" : @"NO");

  NSLog(@"%@", @"");
  NSLog(@"%@", @"3");
  NSLog(@"%@", [@"eat"      stringByPigLatinization]);
  NSLog(@"%@", [[@"eat"     stringByPigLatinization] isEqualToString:@"eatay"] ? @"YES" : @"NO");
  NSLog(@"%@", [@"omelet"   stringByPigLatinization]);
  NSLog(@"%@", [[@"omelet"  stringByPigLatinization] isEqualToString:@"omeletay"] ? @"YES" : @"NO");
  NSLog(@"%@", [@"are"      stringByPigLatinization]);
  NSLog(@"%@", [[@"are"     stringByPigLatinization] isEqualToString:@"areay"] ? @"YES" : @"NO");
  NSLog(@"%@", [@"egg"      stringByPigLatinization]);
  NSLog(@"%@", [[@"egg"     stringByPigLatinization] isEqualToString:@"eggay"] ? @"YES" : @"NO");
  NSLog(@"%@", [@"explain"  stringByPigLatinization]);
  NSLog(@"%@", [[@"explain" stringByPigLatinization] isEqualToString:@"explainay"] ? @"YES" : @"NO");
  NSLog(@"%@", [@"always"   stringByPigLatinization]);
  NSLog(@"%@", [[@"always"  stringByPigLatinization] isEqualToString:@"alwaysay"] ? @"YES" : @"NO");
  NSLog(@"%@", [@"ends"     stringByPigLatinization]);
  NSLog(@"%@", [[@"ends"    stringByPigLatinization] isEqualToString:@"endsay"] ? @"YES" : @"NO");
  //NSLog(@"%@", [@"honest"   stringByPigLatinization]);
  //NSLog(@"%@", [[@"honest"  stringByPigLatinization] isEqualToString:@"honestay"] ? @"YES" : @"NO");
  NSLog(@"%@", [@"i"        stringByPigLatinization]);
  NSLog(@"%@", [[@"i"       stringByPigLatinization] isEqualToString:@"iay"] ? @"YES" : @"NO");

  [pool drain];
  return 0;
}
