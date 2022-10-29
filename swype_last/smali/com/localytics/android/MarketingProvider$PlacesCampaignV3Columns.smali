.class final Lcom/localytics/android/MarketingProvider$PlacesCampaignV3Columns;
.super Ljava/lang/Object;
.source "MarketingProvider.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/localytics/android/MarketingProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PlacesCampaignV3Columns"
.end annotation


# static fields
.field static final AB_TEST:Ljava/lang/String; = "ab_test"

.field static final CAMPAIGN_ID:Ljava/lang/String; = "campaign_id"

.field static final CONTROL_GROUP:Ljava/lang/String; = "control_group"

.field static final CREATIVE_ID:Ljava/lang/String; = "creative_id"

.field static final CREATIVE_TYPE:Ljava/lang/String; = "creative_type"

.field static final EXPIRATION:Ljava/lang/String; = "expiration"

.field static final MESSAGE:Ljava/lang/String; = "message"

.field static final RULE_NAME:Ljava/lang/String; = "rule_name"

.field static final SCHEMA_VERSION:Ljava/lang/String; = "schema_version"

.field static final SOUND_FILENAME:Ljava/lang/String; = "sound_filename"

.field static final TABLE_NAME:Ljava/lang/String; = "places_campaigns"

.field static final VERSION:Ljava/lang/String; = "version"


# direct methods
.method private constructor <init>()V
    .registers 3

    .prologue
    .line 1044
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1045
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "This class is non-instantiable"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
