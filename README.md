# UIViewWithStringTag
UIView in UIKit only supports number tag. This category give UIView string tag support.

Based on associated object of Objective-C.

# Usage
```
// Import header
#import "UIView+StringTag.h"

// Set tag
view.tagString = @"AStringTag";

// Get the view with specific tag
targetView = [self.view viewWithStringTag:@"AStringTag"];
```
# 
