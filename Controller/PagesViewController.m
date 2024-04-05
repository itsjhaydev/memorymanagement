//
//  PagesViewController.m
//  Memory Management
//
//  Created by Earl Gerald Mendoza on 3/22/24.
//

#import "PagesViewController.h"

@interface PagesViewController ()
@property (retain, nonatomic) IBOutlet UITextField *pageCountTextField;
@end

@implementation PagesViewController



- (void)viewDidLoad
{
    [super viewDidLoad];
    self.pageCountTextField.delegate = self;
}




- (IBAction)getPageCountButton:(id)sender
{
    NSString *stringNumber = [[NSString alloc] initWithFormat:@"%@", self.pageCountTextField.text];
    self.pageCount = [stringNumber intValue];
    self.pageCountTextField.text = @"";
    
    
    
    [self.view endEditing:YES];
    [stringNumber release];
}

- (void)dealloc 
{
    [_pageCountTextField release];
    [super dealloc];
}
@end
