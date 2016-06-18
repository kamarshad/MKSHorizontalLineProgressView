//
//  MKSHorizontalLineProgressView.m
//  Created by Kamar Shad on 16/06/16.


#import <UIKit/UIKit.h>

typedef NS_ENUM(int32_t, MKSLineProgressViewCap) {
    MKSLineProgressViewCapButt ,
    MKSLineProgressViewCapRound ,
    MKSLineProgressViewCapSquare
};


@interface MKSHorizontalLineProgressView : UIView

#pragma mark - Progress Bar
/**
 *  @brief holds the color of bar(which show how much a progress line is filled),default color is red color
 */
@property (nonatomic,copy) UIColor * barColor;

/**
 *  @brief holds color of track (progress base color), black color is default color
 */
@property (nonatomic,copy) UIColor * trackColor;

/**
 *  @brief barThickness is basically hieght of line progress view's progress line
 */
@property (nonatomic,assign) CGFloat  barThickness;

/**
 *  @brief barPadding is basicallyleading space and trailing space relatively to its super view
 */
@property (nonatomic,assign) CGFloat  barPadding;

/**
 *  @brief trackPadding is basically leading space and trailing space relatively to its super view
 */
@property (nonatomic,assign) CGFloat  trackPadding;

/**
 *  @brief it holds the progress value for progress line view
 */
@property (nonatomic,assign) CGFloat  progressValue;

/**
 *  @brief it holds the line cap information, defualt value is MKSLineProgressViewCapRound
 */
@property (nonatomic,assign) MKSLineProgressViewCap  lineCap;


#pragma mark - Progress Text
/**
 *  @brief holds the falg value and Default value is YES. If value is YES a percentage string will be displayed otherwise no percentage string.
 */
@property (nonatomic,assign,getter=isShowPercentageText) BOOL  showPercentageText;

/**
 *  @brief holds color of progress text string, default color is White
 */
@property (nonatomic,copy) UIColor * progressPercentageTextColor;

/**
 *  @brief holds the font name for progress text string
 */
@property (nonatomic,copy) UIFont * progressPercentageTextFont;


@end
