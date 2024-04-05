//
//  ViewController.m
//  Memory Management
//
//  Created by Earl Gerald Mendoza on 3/22/24.
//

#import "ViewController.h"
#import "PagesViewController.h"
#import "PagesTableViewController.h"

@implementation ViewController


- (void)setPageCount:(int)pageCount
{
    _pageCount = pageCount;
}


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if([segue.identifier isEqualToString:@"show_pages"]) {
        if([segue.destinationViewController isKindOfClass:[PagesTableViewController class]]) {
            PagesTableViewController *pagesViewController = (PagesTableViewController *)segue.destinationViewController;
            [pagesViewController setCount:self.pageCount];
        }
    }
}




- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender
{
    if ([identifier isEqualToString:@"show_pages"]) {
        if ([self isValidationSuccessful]) {
            return YES;
        } else {
            return NO;
        }
    }
    return YES;
}

static int MINIMUM_NUMBER = 1;
static int MAXIMUM_NUMBER = 20;


- (BOOL)isValidationSuccessful
{
    if( self.pageCount >= MINIMUM_NUMBER && self.pageCount <= MAXIMUM_NUMBER ) {
        return YES;
    }
    else {
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Invalid Input" message:@"" preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *action = [UIAlertAction actionWithTitle:@"Ok" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            NSLog(@"Ok pressed!");
        }];
        
        [alert addAction:action];
        [self presentViewController:alert animated:YES completion:nil];
        return NO;
    }
}

@end
