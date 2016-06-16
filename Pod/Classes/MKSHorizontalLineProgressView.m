//
//  MKSHorizontalLineProgressView.m
//  Created by Kamar Shad on 16/06/16.

#import "MKSHorizontalLineProgressView.h"


@implementation MKSHorizontalLineProgressView

#pragma mark - View Life cycle method

- (id)initWithFrame:(CGRect)frame{

    self = [super initWithFrame:frame];
    
    if(self){
     
        [self initalSetup];
    }
    
    return self;}

- (id)initWithCoder:(NSCoder *)aDecoder{

   self = [super initWithCoder:aDecoder];

    if(self){
        [self initalSetup];
    }
    
    return self;
}

- (void) drawRect:(CGRect)rect{
    [self drawProgressView];
}

#pragma mark - Intial Setup
- (void)initalSetup{
    self.barColor = [UIColor redColor];
    self.trackColor = [UIColor redColor];
    self.barThickness = self.frame.size.height;
    self.barPadding = 0.0f;
    self.trackPadding = 0.0f;
    self.progressValue = 0.0f;
    self.progressPercentageTextColor = [UIColor whiteColor];
    self.showPercentageText = NO;
    
    self.progressPercentageFont = [UIFont fontWithName:@"Helvetica" size:14];
}


#pragma mark - DrawLine Progress View

// Draws the progress bar and track
- (void)drawProgressView{
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSaveGState(context);
    
    // Progres Bar Track
    CGContextSetStrokeColorWithColor(context, self.trackColor.CGColor);
    CGContextBeginPath(context);
    CGContextSetLineWidth(context, self.barThickness + self.trackPadding);
    CGContextMoveToPoint(context, self.barPadding, self.frame.size.height / 2);
    CGContextAddLineToPoint(context, self.frame.size.width - self.barPadding, self.frame.size.height / 2);
    CGContextSetLineCap(context, kCGLineCapRound);
    CGContextStrokePath(context);
    
    // Progress Bar
    CGContextSetStrokeColorWithColor(context, self.barColor.CGColor);
    CGContextSetLineWidth(context, self.barThickness);
    CGContextBeginPath(context);
    CGContextMoveToPoint(context, self.barPadding, self.frame.size.height / 2);
    CGContextAddLineToPoint(context, self.barPadding + [self progressPercentage] , self.frame.size.height / 2);
    CGContextSetLineCap(context, kCGLineCapRound);
    CGContextStrokePath(context);
    
    if(self.isShowPercentageText){
        
        int progressValue = [self progressValue];
        int progressStringWidth = [self progressPercentage];
        
        //boundry condition
        if(progressStringWidth >= self.frame.size.width)
            progressStringWidth = self.frame.size.width-10;
        
        CGFloat tentativeProgressStringWidth  = (progressStringWidth>20?progressStringWidth:20);
        
        CGRect textRect = CGRectMake((self.barPadding + [self progressPercentage]-tentativeProgressStringWidth), (self.frame.size.height - 21)/2, progressStringWidth, 21);
    
        NSMutableParagraphStyle* textStyle = NSMutableParagraphStyle.defaultParagraphStyle.mutableCopy;
        textStyle.alignment = NSTextAlignmentRight;
        NSDictionary* textFontAttributes = @{NSFontAttributeName: self.progressPercentageFont, NSForegroundColorAttributeName: self.progressPercentageTextColor, NSParagraphStyleAttributeName: textStyle};
        
        [[NSString stringWithFormat:@"%d %@",progressValue,@"%"] drawInRect: textRect withAttributes: textFontAttributes];
    }
    
    CGContextRestoreGState(context);
    
}

#pragma mark - Progress calculation
- (CGFloat) progressPercentage {
    CGFloat screenWidth = self.frame.size.width - (self.barPadding * 2);
    CGFloat progress = ((self.progressValue / 100) * screenWidth);
    return progress < 0 ? self.barPadding : progress;
}

#pragma mark - Update progress value
- (void)setProgressValue:(CGFloat)progressValue{
    _progressValue = progressValue;
    
    if(progressValue <= 0)
        self.barColor = [self trackColor];

    [self setNeedsDisplay];
}


@end
