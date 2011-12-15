#import "Comparison.h"

@interface Fraction (NSComparisonMethods)
-(BOOL) isEqualTo: (id) object;
-(BOOL) isLessThanOrEqualTo: (id) object;
-(BOOL) isLessThan: (id) object;
-(BOOL) isGreaterThanOrEqualTo: (id) object;
-(BOOL) isGreaterThan: (id) object;
-(BOOL) isNotEqualTo: (id) object;
@end
