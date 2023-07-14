.class final Lcom/localytics/android/AnalyticsProvider$InfoV3Columns;
.super Ljava/lang/Object;
.source "AnalyticsProvider.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/localytics/android/AnalyticsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "InfoV3Columns"
.end annotation


# static fields
.field static final API_KEY:Ljava/lang/String; = "api_key"

.field static final APP_VERSION:Ljava/lang/String; = "app_version"

.field static final CREATED_TIME:Ljava/lang/String; = "created_time"

.field static final CURRENT_SESSION_UUID:Ljava/lang/String; = "current_session_uuid"

.field static final CUSTOMER_ID:Ljava/lang/String; = "customer_id"

.field static final FB_ATTRIBUTION:Ljava/lang/String; = "fb_attribution"

.field static final FIRST_ANDROID_ID:Ljava/lang/String; = "first_android_id"

.field static final FIRST_OPEN_EVENT_BLOB:Ljava/lang/String; = "first_open_event_blob"

.field static final LAST_SESSION_CLOSE_TIME:Ljava/lang/String; = "last_session_close_time"

.field static final LAST_SESSION_OPEN_TIME:Ljava/lang/String; = "last_session_open_time"

.field static final LEGACY_ADVERTISING_ID:Ljava/lang/String; = "first_advertising_id"

.field static final NEXT_HEADER_NUMBER:Ljava/lang/String; = "next_header_number"

.field static final NEXT_SESSION_NUMBER:Ljava/lang/String; = "next_session_number"

.field static final NOTIFICATIONS_DISABLED:Ljava/lang/String; = "push_disabled"

.field static final OPT_OUT:Ljava/lang/String; = "opt_out"

.field static final PACKAGE_NAME:Ljava/lang/String; = "package_name"

.field static final PLAY_ATTRIBUTION:Ljava/lang/String; = "play_attribution"

.field static final QUEUED_CLOSE_SESSION_BLOB:Ljava/lang/String; = "queued_close_session_blob"

.field static final QUEUED_CLOSE_SESSION_BLOB_UPLOAD_FORMAT:Ljava/lang/String; = "queued_close_session_blob_upload_format"

.field static final REGISTRATION_ID:Ljava/lang/String; = "registration_id"

.field static final REGISTRATION_VERSION:Ljava/lang/String; = "registration_version"

.field static final SENDER_ID:Ljava/lang/String; = "sender_id"

.field static final TABLE_NAME:Ljava/lang/String; = "info"

.field static final USER_TYPE:Ljava/lang/String; = "user_type"

.field static final UUID:Ljava/lang/String; = "uuid"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 335
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 336
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "This class is non-instantiable"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
