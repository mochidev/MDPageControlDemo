MDPageControl Demo
==================

![Screenshot](https://github.com/mochidev/MDPageControlDemo/raw/master/Artwork/Screenshot.png)

Purpose
-------

`MDPageControl` is a rewrite of `UIPageControl` that focusses on animating the
change between pages, and providing an easier way to connect to a `UIScrollView`.
In addition, it provides a myriad of customizable properties that all adhere
to `UIAppearance`. Please visit the [MDPageControl](https://github.com/mochidev/MDPageControl)
repository for the actual code :)

If you use `MDPageControl` in your app, please add it to the
[list](https://github.com/mochidev/MDPageControlDemo/wiki/Apps-That-Use-MDPageControl)!

Installation
------------

```bash
$ git clone https://github.com/mochidev/MDPageControlDemo --recursive
```

To include it into your own projects either download the
[source](https://github.com/mochidev/MDPageControl), or run the following
on your git repo:

```bash
$ cd <your_repo>
$ git submodule add git@github.com:mochidev/MDPageControl.git <local_subpath>
```

This will allow you to update it at anytime by running `$ git submodule update`.

Usage
-----

Simply add the
[MDPageControl](https://github.com/mochidev/MDPageControl) submodule to
your project, and add an `MDPageControl` to your view, either in Interface Builder,
or in code:

```obj-c
MDPageControl *pageControl = [[MDPageControl alloc] initWithRect:CGRectMake(0, 0, 320, 36)];
```

Note that if you add it in Interface Builder, be sure to set the view's
`backgroundColor` to clear.

To attach the page control to a scroll view, set its scrollView outlet to
the `UIScrollView` in question in InterfaceBuilder, or set the property in code:

```obj-c
pageControl.scrollView = aScrollView;
```

Doing so will allow the page control to automatically calculate the number of
pages, and animate the current page as the scroll view is updated. Additionally,
the page control will also change the scroll view's `contentOffset` when it is
tapped, so no further configuration is required on your part.

Note that the scroll view's `delegate` is untouched, so any custom code you
have there will continue to opperate just fine.

Alternatively, you can set the number of pages and current page manually via
the `numberOfPages` and `currentPage` properties on `MDPageControl`.

Customization
-------------

To customize the image used as an indicator, the `pageIndicatorImage` property can be set. For convenience, the class method `+ (UIImage *)roundPageIndicatorWithSize:(CGSize)size;` on `MDPageControl` can be used to generate a circular image of a particular size. For best results, use a black image with an alpha channel so masks can be correctly configured.

To customize the image used as an indicator for a particular page, use the methods below:

```obj-c
- (void)setImage:(UIImage *)anImage forPage:(NSUInteger)page;
- (UIImage *)imageForPage:(NSUInteger)page;
```

To customize the color, change `pageIndicatorTintColor` for the normal indicator
color, and `currentPageIndicatorTintColor` for the current page's indicator color.
Note that the current page indicator color is drawn on top of the normal indicator
color, so it is best to use an opaque color. Additionally, the shadow can be
customized using `pageIndicatorShadowTintColor` and `pageIndicatorShadowOffset`.

Finally, `pageIndicatorSpacing` can be used to modify how far apart the centers
of indicators are from one another.

If you want all `MDPageControl`'s to look identical in your application, you can
use the `appearance` proxy on `UIAppearance`:

```obj-c
[[MDPageControl appearance] setPageIndicatorSpacing:50];
[[MDPageControl appearance] setPageIndicatorImage:[MDPageControl roundPageIndicatorWithSize:CGSizeMake(12, 12)]];
[[MDPageControl appearance] setPageIndicatorTintColor:[UIColor brownColor]];
[[MDPageControl appearance] setCurrentPageIndicatorTintColor:[UIColor redColor]];
[[MDPageControl appearance] setPageIndicatorShadowTintColor:[UIColor blackColor]];
[[MDPageControl appearance] setPageIndicatorShadowOffset:CGSizeMake(0, -1)];
```

To Do
-----

- Make `currentPage` and `numberOfPages` animatable
- Add a vertical option
- Color Indicators?

Coding Style Guidelines
-----------------------

Please see https://mochidev.com/codestyle

License
-------

Copyright (c) 2013 Dimitri Bouniol, Mochi Development, Inc.

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software, associated artwork, and documentation files (the "Software"),
to deal in the Software without restriction, including without limitation the
rights to use, copy, modify, merge, publish, distribute, sublicense, and/or
sell copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

1. The above copyright notice and this permission notice shall be included in
   all copies or substantial portions of the Software.
2. Neither the name of Mochi Development, Inc. nor the names of its
   contributors or products may be used to endorse or promote products
   derived from this software without specific prior written permission.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.

Mochi Dev, and the Mochi Development logo are copyright Mochi Development, Inc.

Credits
-------

- Created by [Dimitri Bouniol](http://twitter.com/dimitribouniol) for [Mochi Development, Inc.](http://mochidev.com/)
