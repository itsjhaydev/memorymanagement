//
//  DetailsViewController.m
//  Memory Management
//
//  Created by Earl Gerald Mendoza on 3/27/24.
//

#import "DetailsViewController.h"
#import "../Model/CharacterModel.h"
@interface DetailsViewController ()
@property (retain, nonatomic) IBOutlet UIImageView *characterImageIcon;
@property (retain, nonatomic) IBOutlet UILabel *characterAge;
@property (retain, nonatomic) IBOutlet UILabel *characterInformation;
@property (retain, nonatomic) IBOutlet UILabel *characterSaying;
@property (retain, nonatomic) IBOutlet UILabel *characterIncome;
@property (retain, nonatomic) IBOutlet UILabel *characterJob;
@property (nonatomic, strong) NSMutableAttributedString *attributedName;
@property (nonatomic, strong) NSMutableAttributedString *attributedAge;
@property (nonatomic, strong) NSMutableAttributedString *attributedInfo;
@property (nonatomic, strong) NSMutableAttributedString *attributedSaying;
@property (nonatomic, strong) NSMutableAttributedString *attributedIncome;
@end

@implementation DetailsViewController

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    self.title = self.characterDetails.name;
    [self updateUI];
}


- (void)updateUI
{
    [self changeTextColor];
    
    self.characterImageIcon.image = [UIImage imageNamed:self.characterDetails.imageName];
    self.characterAge.attributedText = self.attributedAge;
    self.characterInformation.attributedText = self.attributedInfo;
    self.characterSaying.attributedText = self.attributedSaying;
    self.characterIncome.attributedText = self.attributedIncome;
    self.characterJob.attributedText = self.attributedName;
}


- (void)changeTextColor
{
    NSMutableAttributedString *name = [[NSMutableAttributedString alloc] initWithString:self.characterDetails.name];
    NSMutableAttributedString *age = [[NSMutableAttributedString alloc] initWithString:self.characterDetails.age];
//    NSMutableAttributedString *info = [[NSMutableAttributedString alloc] initWithString:self.characterDetails.info];
//    NSMutableAttributedString *saying = [[NSMutableAttributedString alloc] initWithString:self.characterDetails.saying];
    NSMutableAttributedString *coinPayout = [[NSMutableAttributedString alloc] initWithString:self.characterDetails.coinPayout];
    NSMutableAttributedString *slash = [[NSMutableAttributedString alloc] initWithString:@" / "];
    NSMutableAttributedString *payoutTime = [[NSMutableAttributedString alloc] initWithString:self.characterDetails.payoutTime];
    NSMutableAttributedString *income = [[NSMutableAttributedString alloc] init];
    
    [income appendAttributedString:coinPayout];
    [income appendAttributedString:slash];
    [income appendAttributedString:payoutTime];
    
    [name addAttributes:@{
        NSForegroundColorAttributeName : [UIColor blueColor]
    } range:NSMakeRange(0, name.length)];
    
    [age addAttributes:@{
        NSForegroundColorAttributeName : [UIColor blueColor]
    } range:NSMakeRange(0, age.length)];
    
//    [info addAttributes:@{
//        NSForegroundColorAttributeName : [UIColor blueColor]
//    } range:NSMakeRange(0, info.length)];
    
//    [saying addAttributes:@{
//        NSForegroundColorAttributeName : [UIColor blueColor]
//    } range:NSMakeRange(0, saying.length)];
    
    [income addAttributes:@{
        NSForegroundColorAttributeName : [UIColor blueColor]
    } range:NSMakeRange(0, income.length)];
    
    self.attributedName = name;
    self.attributedAge = age;
//    self.attributedInfo = info;
//    self.attributedSaying = saying;
    self.attributedIncome = income;
}


- (void)dealloc {
    [_characterImageIcon release];
    [_characterAge release];
    [_characterInformation release];
    [_characterSaying release];
    [_characterIncome release];
    [_characterJob release];
    [super dealloc];
}
@end
