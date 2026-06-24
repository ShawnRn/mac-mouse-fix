//
// --------------------------------------------------------------------------
// Modifiers.m
// Created for Mac Mouse Fix (https://github.com/noah-nuebling/mac-mouse-fix)
// Licensed under the MMF License (https://github.com/noah-nuebling/mac-mouse-fix/blob/master/License)
// --------------------------------------------------------------------------
//

#import "Modifiers.h"

#if IS_HELPER
#import "Mac_Mouse_Fix_Helper-Swift.h"
#else
#import "Mac_Mouse_Fix-Swift.h"
#endif

@implementation Modifiers

+ (void)load_Manual {
    [MFModifiers load_Manual];
}

+ (void)setKeyboardModifierPriority:(MFModifierPriority)priority {
    [MFModifiers setKeyboardModifierPriority:priority];
}

+ (void)setButtonModifierPriority:(MFModifierPriority)priority {
    [MFModifiers setButtonModifierPriority:priority];
}

+ (NSDictionary *)modifiersWithEvent:(CGEventRef _Nullable)event {
    return [MFModifiers modifiersWithEvent:event];
}

+ (void)buttonModsChangedTo:(ButtonModifierState)newModifiers {
    [MFModifiers buttonModsChangedTo:newModifiers];
}

+ (void)handleModificationHasBeenUsed {
    [MFModifiers handleModificationHasBeenUsed];
}

+ (MFModifierPriority)kbModPriority {
    return [MFModifiers kbModPriority];
}

+ (MFModifierPriority)btnModPriority {
    return [MFModifiers btnModPriority];
}

@end
