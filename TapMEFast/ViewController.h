//
//  ViewController.h
//  TapMEFast
//
//  Created by Sol on 3/8/23.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{
    NSTimer *timer;
    
    int scoreInt;
    int timeInt;
    int gameMode;
}
@property (strong, nonatomic) IBOutlet UILabel *timeLabel;
@property (strong, nonatomic) IBOutlet UILabel *scoreLabel;
@property (weak, nonatomic) IBOutlet UIButton *StartButton;

- (IBAction)startGame:(id)sender;

@end

