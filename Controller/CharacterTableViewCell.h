//
//  CharacterTableViewCell.h
//  Memory Management
//
//  Created by Earl Gerald Mendoza on 3/27/24.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface CharacterTableViewCell : UITableViewCell
@property (retain, nonatomic) IBOutlet UIImageView *characterIcon;
@property (retain, nonatomic) IBOutlet UILabel *characterName;
@property (retain, nonatomic) IBOutlet UILabel *characterSpeech;

@end

NS_ASSUME_NONNULL_END
