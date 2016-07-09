# MKSHorizontalLineProgressView

[![CI Status](http://img.shields.io/travis/kamar shad/MKSHorizontalLineProgressView.svg?style=flat)](https://travis-ci.org/kamar shad/MKSHorizontalLineProgressView)
[![Version](https://img.shields.io/cocoapods/v/MKSHorizontalLineProgressView.svg?style=flat)](http://cocoapods.org/pods/MKSHorizontalLineProgressView)
[![License](https://img.shields.io/cocoapods/l/MKSHorizontalLineProgressView.svg?style=flat)](http://cocoapods.org/pods/MKSHorizontalLineProgressView)
[![Platform](https://img.shields.io/cocoapods/p/MKSHorizontalLineProgressView.svg?style=flat)](http://cocoapods.org/pods/MKSHorizontalLineProgressView)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements
 Code run well on version iOS 7 and above !

## How It looks 
 ![cmqyzunweaa_oxg](https://cloud.githubusercontent.com/assets/1333329/16609532/9010aae4-4372-11e6-892e-1bdce1ea9c86.jpg)
 

## Installation

## Using Cocoa Pod

MKSHorizontalLineProgressView is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'MKSHorizontalLineProgressView'
```
And follow the steps mentioned in  `Using it in your iOS app` section

## Manually 

  1. Drag and drop MKSHorizontalLineProgressView classes into your classes group folder 
  2. Follow the steps mentioned in  `Using it in your iOS app` section


## Using it in your iOS app

  1. Import the header `#import "MKSHorizontalLineProgressView.h"`
  2. As It is a subclass of UIView, You have to  create its instance and has to add it over current superview, In this demo we have created the view using `Storyboard`. Create IBOutlet reference in this case 
  
  `@property (weak, nonatomic) IBOutlet MKSHorizontalLineProgressView *horizontalLineProgressView2`

  3. Write the intial setup code according to your need(see the sample invocation)

  - (void)doIntialSetup{
      
      //Horizontal line with percentage text

        self.horizontalLineProgressView1.progressValue = 49.0f;
        self.horizontalLineProgressView1.trackColor = [UIColor colorWithRed:34.0f/255.0f green:34.0f/255.0f blue:34.0f/255.0f alpha:1.0f];
        self.horizontalLineProgressView1.barColor = [UIColor colorWithRed:58.0/255.0 green:170.0/255.0 blue:53.0/255.0 alpha:1];
        self.horizontalLineProgressView1.barThickness = self.horizontalLineProgressView1.frame.size.height;
        self.horizontalLineProgressView1.showPercentageText = YES; 
        
        //Second Horizontal line with percentage text
        self.horizontalLineProgressView2.progressValue = 78.0f;
        self.horizontalLineProgressView2.trackColor = [UIColor blackColor];
        self.horizontalLineProgressView2.barColor = [UIColor colorWithRed:0.0f / 255.0f green:75.0f / 255.0f blue:125.0f / 255.0f alpha:1.0f];
        self.horizontalLineProgressView2.barThickness = self.horizontalLineProgressView2.frame.size.height;
        self.horizontalLineProgressView2.showPercentageText = YES;
        
        //Horizontal line without percentage text
        self.horizontalLineProgressView3.progressValue = 28.0f;
        self.horizontalLineProgressView3.trackColor = [UIColor blackColor];
        self.horizontalLineProgressView3.barColor = [UIColor colorWithRed:200.0f / 255.0f green:16.0f / 255.0f blue:46.0f / 255.0f alpha:1.0f];
        self.horizontalLineProgressView3.barThickness = self.horizontalLineProgressView3.frame.size.height;
  }



## Further enhancement

   Future release to do list ! 
  
  1. Will add vertical line progress in future release
  2. Also provide options to show lineprogress view with smooth animation
  3. Suggestions are most welcome :)

  

## Author

kamar shad, kamarshad0786@gmail.com

It is inspired by the repo @ https://github.com/bphenriques/HorizontalProgressView 

## License

MKSHorizontalLineProgressView is available under the MIT license. See the LICENSE file for more info.
