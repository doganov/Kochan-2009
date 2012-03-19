#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    UILabel *display;
}

@property (strong, nonatomic) IBOutlet UILabel *display;

- (IBAction)click1:(id) sender;

@end
