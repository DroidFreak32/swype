.class abstract Lcom/localytics/android/MarketingCallable;
.super Ljava/lang/Object;
.source "MarketingCallable.java"


# static fields
.field static final ON_IN_APP_TEST_CLOSE_CAMPAIGN_LIST:I = 0x9

.field static final ON_IN_APP_TEST_COPY_INSTALL_ID:I = 0xd

.field static final ON_IN_APP_TEST_COPY_PUSH_TOKEN:I = 0xc

.field static final ON_IN_APP_TEST_POPUP_CAMPAIGN_LIST:I = 0x8

.field static final ON_IN_APP_TEST_REFRESH_CAMPAIGN_LIST:I = 0xb

.field static final ON_IN_APP_TEST_SHOW_CAMPAIGN:I = 0xa

.field static final ON_MARKETING_JS_CLOSE_WINDOW:I = 0x3

.field static final ON_MARKETING_JS_GET_ATTRIBUTES:I = 0x6

.field static final ON_MARKETING_JS_GET_CUSTOM_DIMENSIONS:I = 0x5

.field static final ON_MARKETING_JS_GET_IDENTIFIERS:I = 0x4

.field static final ON_MARKETING_JS_NAVIGATE:I = 0x1

.field static final ON_MARKETING_JS_SET_CUSTOM_DIMENSIONS:I = 0x7

.field static final ON_MARKETING_JS_TAG_EVENT:I = 0x2


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract call([Ljava/lang/Object;)Ljava/lang/Object;
.end method
