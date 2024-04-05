//
//  MyMainTableViewController.m
//  Memory Management
//
//  Created by Earl Gerald Mendoza on 3/26/24.
//

#import "MyMainTableViewController.h"
#import "../Model/CharacterModel.h"

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


- (void)setArrayOfCharacters:(NSArray *)arrayOfCharacters
{
    _arrayOfCharacters = arrayOfCharacters;
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
        [characters release];
    }
    
    self.arrayOfCharacters = characterHolder;
    
    [stringEmpty release];
    
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


- (void)dealloc
{
    [_arrayOfCharacters release];
    [super dealloc];
}

@end

