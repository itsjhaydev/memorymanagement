//
//  DetailsViewController.h
//  Memory Management
//
//  Created by Earl Gerald Mendoza on 3/27/24.
//

#import "ViewController.h"
#import "../Model/CharacterModel.h"
NS_ASSUME_NONNULL_BEGIN

@interface DetailsViewController : ViewController
@property (nonatomic, strong) CharacterModel *characterDetails;
@end

NS_ASSUME_NONNULL_END
