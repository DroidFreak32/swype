.class final Lcom/crashlytics/android/WireFormat;
.super Ljava/lang/Object;
.source "WireFormat.java"


# static fields
.field static final MESSAGE_SET_ITEM_END_TAG:I

.field static final MESSAGE_SET_ITEM_TAG:I

.field static final MESSAGE_SET_MESSAGE_TAG:I

.field static final MESSAGE_SET_TYPE_ID_TAG:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1071
    const/16 v0, 0xb

    .line 156
    sput v0, Lcom/crashlytics/android/WireFormat;->MESSAGE_SET_ITEM_TAG:I

    .line 2071
    const/16 v0, 0xc

    .line 158
    sput v0, Lcom/crashlytics/android/WireFormat;->MESSAGE_SET_ITEM_END_TAG:I

    .line 3071
    const/16 v0, 0x10

    .line 160
    sput v0, Lcom/crashlytics/android/WireFormat;->MESSAGE_SET_TYPE_ID_TAG:I

    .line 4071
    const/16 v0, 0x1a

    .line 162
    sput v0, Lcom/crashlytics/android/WireFormat;->MESSAGE_SET_MESSAGE_TAG:I

    return-void
.end method

.method static makeTag(II)I
    .locals 1
    .param p0, "fieldNumber"    # I
    .param p1, "wireType"    # I

    .prologue
    .line 71
    shl-int/lit8 v0, p0, 0x3

    or-int/2addr v0, p1

    return v0
.end method
