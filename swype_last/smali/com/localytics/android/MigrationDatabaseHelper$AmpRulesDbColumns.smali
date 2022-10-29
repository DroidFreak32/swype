.class final Lcom/localytics/android/MigrationDatabaseHelper$AmpRulesDbColumns;
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
    name = "AmpRulesDbColumns"
.end annotation


# static fields
.field static final AB_TEST:Ljava/lang/String; = "ab_test"

.field static final CAMPAIGN_ID:Ljava/lang/String; = "campaign_id"

.field static final DEVICES:Ljava/lang/String; = "devices"

.field static final DISPLAY_SECONDS:Ljava/lang/String; = "display_seconds"

.field static final DISPLAY_SESSION:Ljava/lang/String; = "display_session"

.field static final EXPIRATION:Ljava/lang/String; = "expiration"

.field static final INTERNET_REQUIRED:Ljava/lang/String; = "internet_required"

.field static final LOCATION:Ljava/lang/String; = "location"

.field static final PHONE_LOCATION:Ljava/lang/String; = "phone_location"

.field static final PHONE_SIZE_HEIGHT:Ljava/lang/String; = "phone_size_height"

.field static final PHONE_SIZE_WIDTH:Ljava/lang/String; = "phone_size_width"

.field static final RULE_NAME:Ljava/lang/String; = "rule_name"

.field static final TABLET_LOCATION:Ljava/lang/String; = "tablet_location"

.field static final TABLET_SIZE_HEIGHT:Ljava/lang/String; = "tablet_size_height"

.field static final TABLET_SIZE_WIDTH:Ljava/lang/String; = "tablet_size_width"

.field static final TABLE_NAME:Ljava/lang/String; = "amp_rules"

.field static final TIME_TO_DISPLAY:Ljava/lang/String; = "time_to_display"

.field static final VERSION:Ljava/lang/String; = "version"


# direct methods
.method private constructor <init>()V
    .registers 3

    .prologue
    .line 1385
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1386
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "This class is non-instantiable"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
