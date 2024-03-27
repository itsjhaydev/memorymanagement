//
//  CharacterTableViewCell.m
//  Memory Management
//
//  Created by Earl Gerald Mendoza on 3/27/24.
//

#import "CharacterTableViewCell.h"

@implementation CharacterTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)dealloc {
    [_characterIcon release];
    [_characterName release];
    [_characterSpeech release];
    [super dealloc];
}
@end
