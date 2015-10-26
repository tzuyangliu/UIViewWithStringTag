# UIViewWithStringTag
UIView in UIKit only supports number tag. This category give UIView string tag support.

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
