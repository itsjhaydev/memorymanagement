//
//  MyMainTableViewController.h
//  Memory Management
//
//  Created by Earl Gerald Mendoza on 3/26/24.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface MyMainTableViewController : UITableViewController
@property(nonatomic) int count;
@property (nonatomic, retain) NSArray *arrayOfCharacters;
@end

NS_ASSUME_NONNULL_END
