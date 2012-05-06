//
//  ViewController.m
//  Fraction_Calculator
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize display, displayString;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    firstOperand = YES;
    isNumerator = YES;
    currentNumberIsNegative = NO;
    self.displayString = [NSMutableString stringWithCapacity: 40];
    myCalculator = [[Calculator alloc] init];
}

- (void)processDigit:(int)digit
{
    currentNumber = currentNumber * 10 + digit;
    
    [displayString appendString: [NSString stringWithFormat: @"%i", digit]];
    [display setText: displayString];
}

- (IBAction)clickDigit:(id)sender
{
    int digit = [sender tag];
    [self processDigit:digit];
}

- (void)processOp:(char)theOp
{
    if (![self storeFracPart]) return;
    
    if (!firstOperand)
        [myCalculator performOperation: op];
    
    NSString *opStr;
    
    op = theOp;
    
    switch (theOp) {
        case '+':
            opStr = @" + ";
            break;
        case '-':
            opStr = @" - ";
            break;
        case '*':
            opStr = @" × ";
            break;
        case '/':
            opStr = @" ÷ ";
            break;
    }
    
    firstOperand = NO;
    isNumerator = YES;
    currentNumberIsNegative = NO;
    
    [displayString appendString: opStr];
    [display setText: displayString];
}

- (BOOL)storeFracPart
{
    if (!isNumerator && currentNumber == 0)
    {
        [displayString setString: @"Error"];
        [display setText: displayString];
        return NO;
    }
    
    if (currentNumberIsNegative)
        currentNumber = -currentNumber;
    
    if (firstOperand)
    {
        if (isNumerator)
        {
            myCalculator.operand1.numerator = currentNumber;
            myCalculator.operand1.denominator = 1; // e.g. 3 * 4/5 =
        }
        else
            myCalculator.operand1.denominator = currentNumber;
    }
    else if (isNumerator)
    {
        myCalculator.operand2.numerator = currentNumber;
        myCalculator.operand2.denominator = 1; // e.g. 3/2 * 4 =
    }
    else
    {
        myCalculator.operand2.denominator = currentNumber;
    }
    
    currentNumber = 0;
    currentNumberIsNegative = NO;
    return YES;
}

-(void)negateCurrentNumber
{
    currentNumberIsNegative = YES;
    [displayString appendString: @" -"];
    [display setText: displayString];
}

-(IBAction)clickOver:(id)sender
{
    if ([self storeFracPart])
    {
        isNumerator = NO;
        [displayString appendString: @"/"];
        [display setText: displayString];
    }
}

// Arithmetic Operation keys

-(IBAction)clickPlus:(id)sender
{
    [self processOp: '+'];
}

-(IBAction)clickMinus:(id)sender
{
    if (isNumerator && currentNumber == 0 && !currentNumberIsNegative)
        [self negateCurrentNumber];
    else
        [self processOp: '-'];
}

-(IBAction)clickMultiply:(id)sender
{
    [self processOp: '*'];
}

-(IBAction)clickDivide:(id)sender
{
    [self processOp: '/'];
}

// Misc. Keys

-(IBAction)clickEquals:(id)sender
{
    if (![self storeFracPart]) return;
    
    [myCalculator performOperation: op];
    
    [displayString appendString: @" = "];
    [displayString appendString: [myCalculator.accumulator convertToString]];
    [display setText: displayString];
    
    currentNumber = 0;
    isNumerator = YES;
    firstOperand = NO;
    //[displayString setString: @""];
}

-(IBAction)clickClear:(id)sender
{
    isNumerator = YES;
    firstOperand = YES;
    currentNumber = 0;
    
    [myCalculator clear];
    
    [displayString setString: @""];
    [display setText: displayString];
}

-(IBAction)clickConvert:(id)sender
{
    [displayString setString: [NSString stringWithFormat: @"%lf",
                               [myCalculator.accumulator convertToNum]]];
    [display setText: displayString];
}

-(void)dealloc
{
    [myCalculator release];
    [super dealloc];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
