// Generated by Apple Swift version 4.0.3 (swiftlang-900.0.74.1 clang-900.0.39.2)
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wgcc-compat"

#if !defined(__has_include)
# define __has_include(x) 0
#endif
#if !defined(__has_attribute)
# define __has_attribute(x) 0
#endif
#if !defined(__has_feature)
# define __has_feature(x) 0
#endif
#if !defined(__has_warning)
# define __has_warning(x) 0
#endif

#if __has_attribute(external_source_symbol)
# define SWIFT_STRINGIFY(str) #str
# define SWIFT_MODULE_NAMESPACE_PUSH(module_name) _Pragma(SWIFT_STRINGIFY(clang attribute push(__attribute__((external_source_symbol(language="Swift", defined_in=module_name, generated_declaration))), apply_to=any(function, enum, objc_interface, objc_category, objc_protocol))))
# define SWIFT_MODULE_NAMESPACE_POP _Pragma("clang attribute pop")
#else
# define SWIFT_MODULE_NAMESPACE_PUSH(module_name)
# define SWIFT_MODULE_NAMESPACE_POP
#endif

#if __has_include(<swift/objc-prologue.h>)
# include <swift/objc-prologue.h>
#endif

#pragma clang diagnostic ignored "-Wauto-import"
#include <objc/NSObject.h>
#include <stdint.h>
#include <stddef.h>
#include <stdbool.h>

#if !defined(SWIFT_TYPEDEFS)
# define SWIFT_TYPEDEFS 1
# if __has_include(<uchar.h>)
#  include <uchar.h>
# elif !defined(__cplusplus) || __cplusplus < 201103L
typedef uint_least16_t char16_t;
typedef uint_least32_t char32_t;
# endif
typedef float swift_float2  __attribute__((__ext_vector_type__(2)));
typedef float swift_float3  __attribute__((__ext_vector_type__(3)));
typedef float swift_float4  __attribute__((__ext_vector_type__(4)));
typedef double swift_double2  __attribute__((__ext_vector_type__(2)));
typedef double swift_double3  __attribute__((__ext_vector_type__(3)));
typedef double swift_double4  __attribute__((__ext_vector_type__(4)));
typedef int swift_int2  __attribute__((__ext_vector_type__(2)));
typedef int swift_int3  __attribute__((__ext_vector_type__(3)));
typedef int swift_int4  __attribute__((__ext_vector_type__(4)));
typedef unsigned int swift_uint2  __attribute__((__ext_vector_type__(2)));
typedef unsigned int swift_uint3  __attribute__((__ext_vector_type__(3)));
typedef unsigned int swift_uint4  __attribute__((__ext_vector_type__(4)));
#endif

#if !defined(SWIFT_PASTE)
# define SWIFT_PASTE_HELPER(x, y) x##y
# define SWIFT_PASTE(x, y) SWIFT_PASTE_HELPER(x, y)
#endif
#if !defined(SWIFT_METATYPE)
# define SWIFT_METATYPE(X) Class
#endif
#if !defined(SWIFT_CLASS_PROPERTY)
# if __has_feature(objc_class_property)
#  define SWIFT_CLASS_PROPERTY(...) __VA_ARGS__
# else
#  define SWIFT_CLASS_PROPERTY(...)
# endif
#endif

#if __has_attribute(objc_runtime_name)
# define SWIFT_RUNTIME_NAME(X) __attribute__((objc_runtime_name(X)))
#else
# define SWIFT_RUNTIME_NAME(X)
#endif
#if __has_attribute(swift_name)
# define SWIFT_COMPILE_NAME(X) __attribute__((swift_name(X)))
#else
# define SWIFT_COMPILE_NAME(X)
#endif
#if __has_attribute(objc_method_family)
# define SWIFT_METHOD_FAMILY(X) __attribute__((objc_method_family(X)))
#else
# define SWIFT_METHOD_FAMILY(X)
#endif
#if __has_attribute(noescape)
# define SWIFT_NOESCAPE __attribute__((noescape))
#else
# define SWIFT_NOESCAPE
#endif
#if __has_attribute(warn_unused_result)
# define SWIFT_WARN_UNUSED_RESULT __attribute__((warn_unused_result))
#else
# define SWIFT_WARN_UNUSED_RESULT
#endif
#if __has_attribute(noreturn)
# define SWIFT_NORETURN __attribute__((noreturn))
#else
# define SWIFT_NORETURN
#endif
#if !defined(SWIFT_CLASS_EXTRA)
# define SWIFT_CLASS_EXTRA
#endif
#if !defined(SWIFT_PROTOCOL_EXTRA)
# define SWIFT_PROTOCOL_EXTRA
#endif
#if !defined(SWIFT_ENUM_EXTRA)
# define SWIFT_ENUM_EXTRA
#endif
#if !defined(SWIFT_CLASS)
# if __has_attribute(objc_subclassing_restricted)
#  define SWIFT_CLASS(SWIFT_NAME) SWIFT_RUNTIME_NAME(SWIFT_NAME) __attribute__((objc_subclassing_restricted)) SWIFT_CLASS_EXTRA
#  define SWIFT_CLASS_NAMED(SWIFT_NAME) __attribute__((objc_subclassing_restricted)) SWIFT_COMPILE_NAME(SWIFT_NAME) SWIFT_CLASS_EXTRA
# else
#  define SWIFT_CLASS(SWIFT_NAME) SWIFT_RUNTIME_NAME(SWIFT_NAME) SWIFT_CLASS_EXTRA
#  define SWIFT_CLASS_NAMED(SWIFT_NAME) SWIFT_COMPILE_NAME(SWIFT_NAME) SWIFT_CLASS_EXTRA
# endif
#endif

#if !defined(SWIFT_PROTOCOL)
# define SWIFT_PROTOCOL(SWIFT_NAME) SWIFT_RUNTIME_NAME(SWIFT_NAME) SWIFT_PROTOCOL_EXTRA
# define SWIFT_PROTOCOL_NAMED(SWIFT_NAME) SWIFT_COMPILE_NAME(SWIFT_NAME) SWIFT_PROTOCOL_EXTRA
#endif

#if !defined(SWIFT_EXTENSION)
# define SWIFT_EXTENSION(M) SWIFT_PASTE(M##_Swift_, __LINE__)
#endif

#if !defined(OBJC_DESIGNATED_INITIALIZER)
# if __has_attribute(objc_designated_initializer)
#  define OBJC_DESIGNATED_INITIALIZER __attribute__((objc_designated_initializer))
# else
#  define OBJC_DESIGNATED_INITIALIZER
# endif
#endif
#if !defined(SWIFT_ENUM_ATTR)
# if defined(__has_attribute) && __has_attribute(enum_extensibility)
#  define SWIFT_ENUM_ATTR __attribute__((enum_extensibility(open)))
# else
#  define SWIFT_ENUM_ATTR
# endif
#endif
#if !defined(SWIFT_ENUM)
# define SWIFT_ENUM(_type, _name) enum _name : _type _name; enum SWIFT_ENUM_ATTR SWIFT_ENUM_EXTRA _name : _type
# if __has_feature(generalized_swift_name)
#  define SWIFT_ENUM_NAMED(_type, _name, SWIFT_NAME) enum _name : _type _name SWIFT_COMPILE_NAME(SWIFT_NAME); enum SWIFT_COMPILE_NAME(SWIFT_NAME) SWIFT_ENUM_ATTR SWIFT_ENUM_EXTRA _name : _type
# else
#  define SWIFT_ENUM_NAMED(_type, _name, SWIFT_NAME) SWIFT_ENUM(_type, _name)
# endif
#endif
#if !defined(SWIFT_UNAVAILABLE)
# define SWIFT_UNAVAILABLE __attribute__((unavailable))
#endif
#if !defined(SWIFT_UNAVAILABLE_MSG)
# define SWIFT_UNAVAILABLE_MSG(msg) __attribute__((unavailable(msg)))
#endif
#if !defined(SWIFT_AVAILABILITY)
# define SWIFT_AVAILABILITY(plat, ...) __attribute__((availability(plat, __VA_ARGS__)))
#endif
#if !defined(SWIFT_DEPRECATED)
# define SWIFT_DEPRECATED __attribute__((deprecated))
#endif
#if !defined(SWIFT_DEPRECATED_MSG)
# define SWIFT_DEPRECATED_MSG(...) __attribute__((deprecated(__VA_ARGS__)))
#endif
#if __has_feature(attribute_diagnose_if_objc)
# define SWIFT_DEPRECATED_OBJC(Msg) __attribute__((diagnose_if(1, Msg, "warning")))
#else
# define SWIFT_DEPRECATED_OBJC(Msg) SWIFT_DEPRECATED_MSG(Msg)
#endif
#if __has_feature(modules)
@import UIKit;
@import CoreGraphics;
@import ObjectiveC;
#endif

#pragma clang diagnostic ignored "-Wproperty-attribute-mismatch"
#pragma clang diagnostic ignored "-Wduplicate-method-arg"
#if __has_warning("-Wpragma-clang-attribute")
# pragma clang diagnostic ignored "-Wpragma-clang-attribute"
#endif
#pragma clang diagnostic ignored "-Wunknown-pragmas"
#pragma clang diagnostic ignored "-Wnullability"

SWIFT_MODULE_NAMESPACE_PUSH("ImageSlideshow")
@class ImageSlideshow;
@class UIButton;
@protocol InputSource;
@class UIColor;
@class NSBundle;
@class NSCoder;

SWIFT_CLASS("_TtC14ImageSlideshow33FullScreenSlideshowViewController")
@interface FullScreenSlideshowViewController : UIViewController
@property (nonatomic, strong) ImageSlideshow * _Nonnull slideshow;
/// Close button
@property (nonatomic, strong) UIButton * _Nonnull closeButton;
/// Closure called on page selection
@property (nonatomic, copy) void (^ _Nullable pageSelected)(NSInteger);
/// Index of initial image
@property (nonatomic) NSInteger initialPage;
/// Input sources to
@property (nonatomic, copy) NSArray<id <InputSource>> * _Nullable inputs;
/// Background color
@property (nonatomic, strong) UIColor * _Nonnull backgroundColor;
/// Enables/disable zoom
@property (nonatomic) BOOL zoomEnabled;
- (void)viewDidLoad;
@property (nonatomic, readonly) BOOL prefersStatusBarHidden;
- (void)viewWillAppear:(BOOL)animated;
- (void)viewWillDisappear:(BOOL)animated;
- (void)viewDidLayoutSubviews;
- (nonnull instancetype)initWithNibName:(NSString * _Nullable)nibNameOrNil bundle:(NSBundle * _Nullable)nibBundleOrNil OBJC_DESIGNATED_INITIALIZER;
- (nullable instancetype)initWithCoder:(NSCoder * _Nonnull)aDecoder OBJC_DESIGNATED_INITIALIZER;
@end

@class UIScrollView;
@class UIPageControl;
@class ImageSlideshowItem;
@class ZoomAnimatedTransitioningDelegate;

/// Main view containing the Image Slideshow
SWIFT_CLASS("_TtC14ImageSlideshow14ImageSlideshow")
@interface ImageSlideshow : UIView
/// Scroll View to wrap the slideshow
@property (nonatomic, readonly, strong) UIScrollView * _Nonnull scrollView;
/// Page Control shown in the slideshow
@property (nonatomic, readonly, strong) UIPageControl * _Nonnull pageControl;
/// Current page
@property (nonatomic, readonly) NSInteger currentPage;
/// Called on each currentPage change
@property (nonatomic, copy) void (^ _Nullable currentPageChanged)(NSInteger);
/// Called on scrollViewWillBeginDragging
@property (nonatomic, copy) void (^ _Nullable willBeginDragging)(void);
/// Called on scrollViewDidEndDecelerating
@property (nonatomic, copy) void (^ _Nullable didEndDecelerating)(void);
/// Currenlty displayed slideshow item
@property (nonatomic, readonly, strong) ImageSlideshowItem * _Nullable currentSlideshowItem;
/// Current scroll view page. This may differ from <code>currentPage</code> as circular slider has two more dummy pages at indexes 0 and n-1 to provide fluent scrolling between first and last item.
@property (nonatomic, readonly) NSInteger scrollViewPage;
/// Input Sources loaded to slideshow
@property (nonatomic, readonly, copy) NSArray<id <InputSource>> * _Nonnull images;
/// Image Slideshow Items loaded to slideshow
@property (nonatomic, readonly, copy) NSArray<ImageSlideshowItem *> * _Nonnull slideshowItems;
/// Enables/disables infinite scrolling between images
@property (nonatomic) BOOL circular;
/// Enables/disables user interactions
@property (nonatomic) BOOL draggingEnabled;
/// Enables/disables zoom
@property (nonatomic) BOOL zoomEnabled;
/// Maximum zoom scale
@property (nonatomic) CGFloat maximumScale;
/// Image change interval, zero stops the auto-scrolling
@property (nonatomic) double slideshowInterval;
/// Content mode of each image in the slideshow
@property (nonatomic) UIViewContentMode contentScaleMode;
/// Transitioning delegate to manage the transition to full screen controller
@property (nonatomic, readonly, strong) ZoomAnimatedTransitioningDelegate * _Nullable slideshowTransitioningDelegate;
- (nonnull instancetype)initWithFrame:(CGRect)frame OBJC_DESIGNATED_INITIALIZER;
- (nonnull instancetype)init SWIFT_UNAVAILABLE;
- (nullable instancetype)initWithCoder:(NSCoder * _Nonnull)aDecoder OBJC_DESIGNATED_INITIALIZER;
- (void)removeFromSuperview;
- (void)layoutSubviews;
- (void)layoutPageControl;
/// Set image inputs into the image slideshow
/// \param inputs Array of InputSource instances.
///
- (void)setImageInputs:(NSArray<id <InputSource>> * _Nonnull)inputs;
/// Change the current page
/// \param newPage new page
///
/// \param animated true if animate the change
///
- (void)setCurrentPage:(NSInteger)newPage animated:(BOOL)animated;
/// Change the scroll view page. This may differ from <code>setCurrentPage</code> as circular slider has two more dummy pages at indexes 0 and n-1 to provide fluent scrolling between first and last item.
/// \param newScrollViewPage new scroll view page
///
/// \param animated true if animate the change
///
- (void)setScrollViewPage:(NSInteger)newScrollViewPage animated:(BOOL)animated;
/// Stops slideshow timer
- (void)pauseTimer;
/// Restarts slideshow timer
- (void)unpauseTimer;
- (void)pauseTimerIfNeeded SWIFT_DEPRECATED_MSG("use pauseTimer instead");
- (void)unpauseTimerIfNeeded SWIFT_DEPRECATED_MSG("use unpauseTimer instead");
/// Open full screen slideshow
/// \param controller Controller to present the full screen controller from
///
///
/// returns:
/// FullScreenSlideshowViewController instance
- (FullScreenSlideshowViewController * _Nonnull)presentFullScreenControllerFrom:(UIViewController * _Nonnull)controller;
@end


@interface ImageSlideshow (SWIFT_EXTENSION(ImageSlideshow)) <UIScrollViewDelegate>
- (void)scrollViewWillBeginDragging:(UIScrollView * _Nonnull)scrollView;
- (void)scrollViewDidEndDecelerating:(UIScrollView * _Nonnull)scrollView;
- (void)scrollViewDidScroll:(UIScrollView * _Nonnull)scrollView;
@end

@class UIImageView;
@class UITapGestureRecognizer;

/// Used to wrap a single slideshow item and allow zooming on it
SWIFT_CLASS("_TtC14ImageSlideshow18ImageSlideshowItem")
@interface ImageSlideshowItem : UIScrollView <UIScrollViewDelegate>
/// Image view to hold the image
@property (nonatomic, readonly, strong) UIImageView * _Nonnull imageView;
/// Input Source for the item
@property (nonatomic, readonly, strong) id <InputSource> _Nonnull image;
/// Guesture recognizer to detect double tap to zoom
@property (nonatomic, strong) UITapGestureRecognizer * _Nullable gestureRecognizer;
/// Holds if the zoom feature is enabled
@property (nonatomic, readonly) BOOL zoomEnabled;
/// If set to true image is initially zoomed in
@property (nonatomic) BOOL zoomInInitially;
/// Maximum zoom scale
@property (nonatomic) CGFloat maximumScale;
- (nullable instancetype)initWithCoder:(NSCoder * _Nonnull)aDecoder OBJC_DESIGNATED_INITIALIZER;
- (void)layoutSubviews;
/// Request to load Image Source to Image View
- (void)loadImage;
- (void)cancelPendingLoad;
- (void)scrollViewDidZoom:(UIScrollView * _Nonnull)scrollView;
- (UIView * _Nullable)viewForZoomingInScrollView:(UIScrollView * _Nonnull)scrollView SWIFT_WARN_UNUSED_RESULT;
- (nonnull instancetype)initWithFrame:(CGRect)frame SWIFT_UNAVAILABLE;
@end

@class UIImage;

/// A protocol that can be adapted by different Input Source providers
SWIFT_PROTOCOL("_TtP14ImageSlideshow11InputSource_")
@protocol InputSource
/// Load image from the source to image view.
/// \param imageView Image view to load the image into.
///
/// \param callback Callback called after image was set to the image view.
///
/// \param image Image that was set to the image view.
///
- (void)loadTo:(UIImageView * _Nonnull)imageView with:(void (^ _Nonnull)(UIImage * _Nullable))callback;
@optional
/// Cancel image load on the image view
/// \param imageView Image view that is loading the image
///
- (void)cancelLoadOn:(UIImageView * _Nonnull)imageView;
@end


/// Input Source to load plain UIImage
SWIFT_CLASS("_TtC14ImageSlideshow11ImageSource")
@interface ImageSource : NSObject <InputSource>
/// Initializes a new Image Source with UIImage
/// \param image Image to be loaded
///
- (nonnull instancetype)initWithImage:(UIImage * _Nonnull)image OBJC_DESIGNATED_INITIALIZER;
/// Initializes a new Image Source with an image name from the main bundle
/// \param imageString name of the file in the application’s main bundle
///
- (nullable instancetype)initWithImageString:(NSString * _Nonnull)imageString OBJC_DESIGNATED_INITIALIZER;
- (void)loadTo:(UIImageView * _Nonnull)imageView with:(void (^ _Nonnull)(UIImage * _Nullable))callback;
- (nonnull instancetype)init SWIFT_UNAVAILABLE;
@end








@protocol UIViewControllerAnimatedTransitioning;
@protocol UIViewControllerInteractiveTransitioning;

SWIFT_CLASS("_TtC14ImageSlideshow33ZoomAnimatedTransitioningDelegate")
@interface ZoomAnimatedTransitioningDelegate : NSObject <UIViewControllerTransitioningDelegate>
/// parent image view used for animated transition
@property (nonatomic, strong) UIImageView * _Nullable referenceImageView;
/// parent slideshow view used for animated transition
@property (nonatomic, strong) ImageSlideshow * _Nullable referenceSlideshowView;
/// Enables or disables swipe-to-dismiss interactive transition
@property (nonatomic) BOOL slideToDismissEnabled;
/// Init the transitioning delegate with a source ImageSlideshow
/// \param slideshowView ImageSlideshow instance to animate the transition from
///
/// \param slideshowController FullScreenViewController instance to animate the transition to
///
- (nonnull instancetype)initWithSlideshowView:(ImageSlideshow * _Nonnull)slideshowView slideshowController:(FullScreenSlideshowViewController * _Nonnull)slideshowController OBJC_DESIGNATED_INITIALIZER;
/// Init the transitioning delegate with a source ImageView
/// \param imageView UIImageView instance to animate the transition from
///
/// \param slideshowController FullScreenViewController instance to animate the transition to
///
- (nonnull instancetype)initWithImageView:(UIImageView * _Nonnull)imageView slideshowController:(FullScreenSlideshowViewController * _Nonnull)slideshowController OBJC_DESIGNATED_INITIALIZER;
- (id <UIViewControllerAnimatedTransitioning> _Nullable)animationControllerForPresentedController:(UIViewController * _Nonnull)presented presentingController:(UIViewController * _Nonnull)presenting sourceController:(UIViewController * _Nonnull)source SWIFT_WARN_UNUSED_RESULT;
- (id <UIViewControllerAnimatedTransitioning> _Nullable)animationControllerForDismissedController:(UIViewController * _Nonnull)dismissed SWIFT_WARN_UNUSED_RESULT;
- (id <UIViewControllerInteractiveTransitioning> _Nullable)interactionControllerForPresentation:(id <UIViewControllerAnimatedTransitioning> _Nonnull)animator SWIFT_WARN_UNUSED_RESULT;
- (id <UIViewControllerInteractiveTransitioning> _Nullable)interactionControllerForDismissal:(id <UIViewControllerAnimatedTransitioning> _Nonnull)animator SWIFT_WARN_UNUSED_RESULT;
- (nonnull instancetype)init SWIFT_UNAVAILABLE;
@end

@class UIGestureRecognizer;

@interface ZoomAnimatedTransitioningDelegate (SWIFT_EXTENSION(ImageSlideshow)) <UIGestureRecognizerDelegate>
- (BOOL)gestureRecognizerShouldBegin:(UIGestureRecognizer * _Nonnull)gestureRecognizer SWIFT_WARN_UNUSED_RESULT;
@end

SWIFT_MODULE_NAMESPACE_POP
#pragma clang diagnostic pop
