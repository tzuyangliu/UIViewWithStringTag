# UIViewWithStringTag
UIView 框架默认只支持数字 Tag，这个扩展是为了满足使用 NSString 作为 Tag 的需求。

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
