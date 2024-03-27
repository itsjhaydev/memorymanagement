//
//  CharacterTableViewController.m
//  Memory Management
//
//  Created by Earl Gerald Mendoza on 3/26/24.
//

#import "CharacterTableViewController.h"
#import "../Model/CharacterModel.h"
#import "CharacterTableViewCell.h"
#import "DetailsViewController.h"

@implementation CharacterTableViewController

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    self.title = @"Characters";
}

- (void)setCharacterCount:(int)characterCount
{
    _characterCount = characterCount;
}


- (void)setPageNumber:(int)pageNumber
{
    _pageNumber = pageNumber;
}



#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView 
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.characterCount;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath 
{
    CharacterTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"character_cell" forIndexPath:indexPath];
    
    // Configure the cell...
    
    long index = self.pageNumber * self.characterCount - self.characterCount + indexPath.row + 1;
    
    CharacterModel *character = self.characters[index];
    
    int randomNumber = [self randomNumber:(int)character.speech.count];
    
    cell.characterIcon.image = [UIImage imageNamed:character.imageName];
    cell.characterName.text = character.name;
    cell.characterSpeech.text = character.speech[randomNumber];

    return cell;
}


- (int)randomNumber:(int)number
{
    number = arc4random_uniform(number);
    return number;
}



#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender 
{
    if([segue.identifier isEqualToString:@"show_details"]) {
        NSIndexPath *indexPath = [self.tableView indexPathForCell:sender];
        if(indexPath) {
            if([segue.destinationViewController isKindOfClass:[DetailsViewController class]]) {
                DetailsViewController *detailsVC = (DetailsViewController *)segue.destinationViewController;
                detailsVC.characterDetails = self.characters[self.pageNumber * self.characterCount - self.characterCount + indexPath.row + 1];
            }
        }
    }
}


@end
