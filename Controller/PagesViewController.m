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

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}



- (IBAction)getPageCountButton:(id)sender
{
    NSString *stringNumber = [[NSString alloc] initWithFormat:@"%@", self.pageCountTextField.text];
    self.pageCount = [stringNumber intValue];
    self.pageCountTextField.text = @"";
}






- (void)dealloc 
{
    [_pageCountTextField release];
    [super dealloc];
}
@end
