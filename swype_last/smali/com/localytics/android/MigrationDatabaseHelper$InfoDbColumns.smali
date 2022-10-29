.class final Lcom/localytics/android/MigrationDatabaseHelper$InfoDbColumns;
.super Ljava/lang/Object;
.source "MigrationDatabaseHelper.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/localytics/android/MigrationDatabaseHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "InfoDbColumns"
.end annotation


# static fields
.field static final FB_ATTRIBUTION:Ljava/lang/String; = "fb_attribution"

.field static final FIRST_ADVERTISING_ID:Ljava/lang/String; = "first_advertising_id"

.field static final FIRST_ANDROID_ID:Ljava/lang/String; = "first_android_id"

.field static final FIRST_RUN:Ljava/lang/String; = "first_run"

.field static final FIRST_TELEPHONY_ID:Ljava/lang/String; = "first_telephony_id"

.field static final LAST_SESSION_OPEN_TIME:Ljava/lang/String; = "last_session_open_time"

.field static final PACKAGE_NAME:Ljava/lang/String; = "package_name"

.field static final PLAY_ATTRIBUTION:Ljava/lang/String; = "play_attribution"

.field static final PUSH_DISABLED:Ljava/lang/String; = "push_disabled"

.field static final REGISTRATION_ID:Ljava/lang/String; = "registration_id"

.field static final REGISTRATION_VERSION:Ljava/lang/String; = "registration_version"

.field static final SENDER_ID:Ljava/lang/String; = "sender_id"

.field static final TABLE_NAME:Ljava/lang/String; = "info"


# direct methods
.method private constructor <init>()V
    .registers 3

    .prologue
    .line 520
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 521
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "This class is non-instantiable"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
