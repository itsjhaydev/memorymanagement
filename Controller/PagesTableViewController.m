//
//  PagesTableViewController.m
//  Memory Management
//
//  Created by Earl Gerald Mendoza on 3/22/24.
//

#import "PagesTableViewController.h"
#import "CharacterTableViewController.h"
@interface PagesTableViewController ()
@end

@implementation PagesTableViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title = @"Pages";
}



#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.characters count] / self.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath 
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"display_pages_cell" forIndexPath:indexPath];
    
    // Configure the cell...
    NSString *textLabelTitle = [[NSString alloc] initWithFormat:@"Pages %ld", (long)(indexPath.row + 1)];
    
    cell.textLabel.text = textLabelTitle;
    
    [textLabelTitle release];
    
    return cell;
}

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender 
{
    if([segue.identifier isEqualToString:@"show_character"]) {
        NSIndexPath *indexPath = [self.tableView indexPathForCell:sender];
        if(indexPath) {
            if([segue.destinationViewController isKindOfClass:[CharacterTableViewController class]]) {
                CharacterTableViewController *characterTVC = (CharacterTableViewController *)segue.destinationViewController;
                [characterTVC setCharacterCount:self.count];
                [characterTVC setPageNumber:(int)indexPath.row + 1];
            }
        }
    }
}





@end
