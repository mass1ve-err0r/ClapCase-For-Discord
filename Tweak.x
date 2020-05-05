#import <UIKit/UIKit.h>

@interface DCDChatInput : UITextView
-(void)didEndEditing:(NSNotification *)arg1;
@end

%hook DCDChatInput
-(void)didEndEditing:(NSNotification *)arg1 {
	if ([self.text hasPrefix:@"/cc "]) {
		self.text = [self.text substringFromIndex:4];
		self.text = [self.text stringByReplacingOccurrencesOfString:@" " withString:@"👏🏼"];
	}
	%orig;
}
%end