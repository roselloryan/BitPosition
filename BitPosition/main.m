//
//  main.m
//  BitPosition


#import <Foundation/Foundation.h>


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSString  *testString = @"4335,0,4";
        
        NSArray *seperatedString = [testString componentsSeparatedByString:@","];
        
        NSInteger number = [[seperatedString objectAtIndex:0] integerValue];
        NSInteger p1 = [[seperatedString objectAtIndex:1] integerValue];
        NSInteger p2 = [[seperatedString objectAtIndex:2] integerValue];
    
        // stole this. :(
        // Number of bits
        int bits =  sizeof(number) * 8;
            
        // Create mutable string to hold binary result
        NSMutableString *binaryString = [NSMutableString string];
            
        // For each bit, determine if 1 or 0
        // Bitwise shift right to process next number
        for (; bits > 0; bits--, number >>= 1) {
            
            // Use bitwise AND with 1 to get rightmost bit
            // Insert 0 or 1 at front of the string
            [binaryString insertString:((number & 1) ? @"1" : @"0") atIndex:0];
        }
//            
//        NSLog(@"binaryString: %@",(NSString *)binaryString);
//        
//        NSLog(@"p1(%lu): %c", p1, [binaryString characterAtIndex:binaryString.length - 1 - p1]);
//        NSLog(@"p2(%lu): %c", p2, [binaryString characterAtIndex:binaryString.length - 1 - p2]);
        
        if ([binaryString characterAtIndex:binaryString.length - 1 - p1] == [binaryString characterAtIndex:binaryString.length - 1 - p2]) {
            NSLog(@"true");
        }
        else {
            NSLog(@"false");
        }
        
    }
    return 0;
}


