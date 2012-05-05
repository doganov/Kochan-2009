//
//  ViewController.h
//  Fraction_Calculator
//

#import <UIKit/UIKit.h>
#import "Calculator.h"

@interface ViewController : UIViewController
{
    UILabel *display;
    char op;
    
    int currentNumber;
    NSMutableString *displayString;
    BOOL firstOperand, isNumerator;
    Calculator *myCalculator;
}

@property (nonatomic, retain) IBOutlet UILabel *display;
@property (nonatomic, retain) NSMutableString *displayString;

-(void) processDigit: (int) digit;
-(void) processOp: (char) theOp;
-(void) storeFracPart;

// Numeric keys

-(IBAction)clickDigit:(id)sender;

// Arithmetic Operation keys

-(IBAction)clickPlus:(id)sender;
-(IBAction)clickMinus:(id)sender;
-(IBAction)clickMultiply:(id)sender;
-(IBAction)clickDivide:(id)sender;

// Misc. Keys

-(IBAction)clickOver:(id)sender;
-(IBAction)clickEquals:(id)sender;
-(IBAction)clickClear:(id)sender;

@end
