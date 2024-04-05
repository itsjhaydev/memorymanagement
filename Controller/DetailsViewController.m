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
@property (retain, nonatomic) IBOutlet UITextView *characterInformation;
@property (retain, nonatomic) IBOutlet UILabel *characterSaying;
@property (retain, nonatomic) IBOutlet UILabel *characterIncome;
@property (retain, nonatomic) IBOutlet UILabel *characterJob;
@property (nonatomic, retain) NSMutableAttributedString *attributedAge;
@property (nonatomic, retain) NSMutableAttributedString *attributedInfo;
@property (nonatomic, retain) NSMutableAttributedString *attributedSaying;
@property (nonatomic, retain) NSMutableAttributedString *attributedIncome;
@property (nonatomic, retain) NSMutableAttributedString *attributedJob;
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
    
    self.characterImageIcon.image = [UIImage imageNamed:self.characterDetails.detailIcon];
    self.characterAge.attributedText = self.attributedAge;
    self.characterInformation.attributedText = self.attributedInfo;
    self.characterSaying.attributedText = self.attributedSaying;
    self.characterIncome.attributedText = self.attributedIncome;
    self.characterJob.attributedText = self.attributedJob;
    
    
    self.characterInformation.font = [UIFont systemFontOfSize:14];
    self.characterInformation.textAlignment = NSTextAlignmentRight;
}


- (void)changeTextColor
{
    NSMutableAttributedString *job = [[NSMutableAttributedString alloc] initWithString:self.characterDetails.imageName];
    NSMutableAttributedString *age = [[NSMutableAttributedString alloc] initWithString:self.characterDetails.age];
    NSMutableAttributedString *info = [[NSMutableAttributedString alloc] initWithString:self.characterDetails.info];
    NSMutableAttributedString *saying = [[NSMutableAttributedString alloc] initWithString:self.characterDetails.saying];
    NSString *incomeString = [[NSString alloc] initWithFormat:@"%@ / %@", self.characterDetails.coinPayout, self.characterDetails.payoutTime];
    NSMutableAttributedString *income = [[NSMutableAttributedString alloc] initWithString:incomeString];
    
    [job addAttribute:NSForegroundColorAttributeName value:[UIColor blueColor] range:NSMakeRange(0, job.length)];
    
    [age addAttribute:NSForegroundColorAttributeName value:[UIColor blueColor] range:NSMakeRange(0, age.length)];
    
    [info addAttribute:NSForegroundColorAttributeName value:[UIColor blueColor] range:NSMakeRange(0, info.length)];
    
    [saying addAttribute:NSForegroundColorAttributeName value:[UIColor blueColor] range:NSMakeRange(0, saying.length)];
    
    [income addAttribute:NSForegroundColorAttributeName value:[UIColor blueColor] range:NSMakeRange(0, income.length)];
    
    self.attributedJob = job;
    self.attributedAge = age;
    self.attributedInfo = info;
    self.attributedSaying = saying;
    self.attributedIncome = income;
    
    
    [incomeString release];
    [income release];
    [age release];
    [job release];
    [info release];
    [saying release];
}


- (void)dealloc
{
    [_characterImageIcon release];
    [_characterAge release];
    [_characterInformation release];
    [_characterSaying release];
    [_characterIncome release];
    [_characterJob release];
    [_attributedAge release];
    [_attributedInfo release];
    [_attributedSaying release];
    [_attributedIncome release];
    [_attributedJob release];
    [_characterDetails release];
    [super dealloc];
}
@end
