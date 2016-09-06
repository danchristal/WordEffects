//
//  main.m
//  WordEffects
//
//  Created by Dan Christal on 2016-09-05.
//  Copyright © 2016 Dan Christal. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        char inputChars[255];
        char play = 'y';
        int choice;
        
        do {
            printf("Input a string: ");
            fgets(inputChars, 255, stdin);
            printf("Your string is %s\n", inputChars);
            char whiteSpace;
            
            NSString *inputString = [NSString stringWithUTF8String:inputChars];
            
            
            printf("\nHow would you like to manipulate your string?\n");
            printf("1. UPPERCASE my string.\n");
            printf("2. lowercase my string.\n");
            printf("3. Numberize my string.\n");
            printf("4. Canadianize my string, eh.\n");
            printf("5. Respond to my string?\n");
            printf("6. De-Space-my-string.\n");
            
            scanf(" %d", &choice);
            scanf("%c", &whiteSpace);
            
            switch(choice) {
                case 1:
                    NSLog(@"Your UPPERCASE string is: %@\n", [inputString uppercaseString]);
                    break;
                case 2:
                    NSLog(@"Your lowercase string is: %@\n", [inputString lowercaseString]);
                case 3:
                    NSLog(@"Your string as a number is: %ld\n", (long)[inputString integerValue]);
                    break;
                case 4:
                    NSLog(@"Your Canaidanized string is: %@",
                          [[inputString stringByTrimmingCharactersInSet:[NSCharacterSet newlineCharacterSet]]stringByAppendingString:@", eh?"]);
                    break;
                case 5:
                    if([inputString containsString:@"?"]){
                        NSLog(@"I don't know.\n");
                    } else if([inputString containsString:@"!"]){
                        NSLog(@"Whoa, calm down!\n");
                    }
                    break;
                case 6:
                    NSLog(@"%@\n", [inputString stringByReplacingOccurrencesOfString:@" " withString:@"-"]);
                    break;
                default:
                    break;
            }
           
            
            printf("Would you like to enter another string (y/n)?\n");;
            scanf(" %c", &play);
            scanf("%c", &whiteSpace); //ignore following newline character
            
        } while(play == 'y');
        
        
        
        
    }
    return 0;
}
