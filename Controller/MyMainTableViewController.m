//
//  MyMainTableViewController.m
//  Memory Management
//
//  Created by Earl Gerald Mendoza on 3/26/24.
//

#import "MyMainTableViewController.h"
#import "../Model/CharacterModel.h"
@interface MyMainTableViewController ()

@end

@implementation MyMainTableViewController

- (void)viewDidLoad 
{
    [super viewDidLoad];
    [self fetchDataInPlist];
}


- (void)setCount:(int)count
{
    _count = count;
}


- (void)setCharacters:(NSArray *)characters
{
    _characters = characters;
}



-(void)fetchDataInPlist
{
    NSMutableArray *characterHolder = [[NSMutableArray alloc] init];
    NSString *path = [[NSBundle mainBundle] bundlePath];
    NSString *filePath = [path stringByAppendingPathComponent:@"FamilyMemberData.plist"];
    NSDictionary *dataPlist = [NSDictionary dictionaryWithContentsOfFile:filePath];
    NSString *stringEmpty = [[NSString alloc] initWithString:@""];
    [characterHolder addObject:stringEmpty];
    for( NSString *key in dataPlist ) {
        CharacterModel *characters = [[CharacterModel alloc] initWithDictionary:dataPlist[key]];
        [characterHolder addObject:characters];
    }
    
    self.characters = characterHolder;
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 0;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 0;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath 
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"reuseIdentifier" forIndexPath:indexPath];
    
    // Configure the cell...
    
    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end



//Bernardo
//John
//Larissa
//Mika
//Amelia
//Clara
//Sheldon
//Horatio
//Dewey
//Oscar
//Sabrina
//Penelope
//Elroy
//Kato
//Ellie
//Caleb
//Tom
//Abby
//Zack
//Nadia
