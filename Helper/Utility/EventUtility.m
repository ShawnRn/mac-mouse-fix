//
// --------------------------------------------------------------------------
// EventUtility.m
// Created for Mac Mouse Fix (https://github.com/noah-nuebling/mac-mouse-fix)
// Licensed under the MMF License (https://github.com/noah-nuebling/mac-mouse-fix/blob/master/License)
// --------------------------------------------------------------------------
//

#import "EventUtility.h"

#if IS_HELPER
#import "Mac_Mouse_Fix_Helper-Swift.h"
#else
#import "Mac_Mouse_Fix-Swift.h"
#endif

@implementation EventUtility

int64_t fixedScrollDelta(double scrollDelta) {
    return [MFEventUtility fixedScrollDelta:scrollDelta];
}

bool CGEvent_IsWacomEvent(CGEventRef event) {
    return [MFEventUtility CGEvent_IsWacomEvent:event];
}

IOHIDDeviceRef _Nullable CGEventGetSendingDevice(CGEventRef cgEvent) {
    return [MFEventUtility CGEventGetSendingDevice:cgEvent];
}

IOHIDDeviceRef _Nullable getSendingDeviceWithSenderID(uint64_t senderID) {
    return [MFEventUtility getSendingDeviceWithSenderID:senderID];
}

CFTimeInterval CGEventGetTimestampInSeconds(CGEventRef event) {
    return [MFEventUtility CGEventGetTimestampInSeconds:event];
}

NSString *scrollEventDescription(CGEventRef scrollEvent) {
    return [MFEventUtility scrollEventDescription:scrollEvent];
}

NSString *scrollEventDescriptionWithOptions(CGEventRef scrollEvent, BOOL allDeltas, BOOL phases) {
    return [MFEventUtility scrollEventDescriptionWithOptions:scrollEvent allDeltas:allDeltas phases:phases];
}

@end
