//
//  Fraction.m
//  FractionTest
//
//  Created by Steve Kochan on 7/5/08.
//  Copyright 2008 __MyCompanyName__. All rights reserved.
//

#import "Fraction.h"

@implementation Fraction

-(void) print
{
  NSLog (@"%i/%i", numerator, denominator);
}

-(void) setNumerator: (int) n
{
  numerator = n;
}

-(void) setDenominator: (int) d
{
  denominator = d;
}

-(int) numerator
{
  return numerator;
}

-(int) denominator
{
  return denominator;
}

-(double) convertToNum
{
  if (denominator != 0)
    return (double) numerator / denominator;
  else
    return 1.0;
}

@end
