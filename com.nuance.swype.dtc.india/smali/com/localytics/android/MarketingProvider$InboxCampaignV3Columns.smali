.class final Lcom/localytics/android/MarketingProvider$InboxCampaignV3Columns;
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
    name = "InboxCampaignV3Columns"
.end annotation


# static fields
.field static final AB_TEST:Ljava/lang/String; = "ab_test"

.field static final CAMPAIGN_ID:Ljava/lang/String; = "campaign_id"

.field static final CREATIVE_LOCATION:Ljava/lang/String; = "creative_location"

.field static final EXPIRATION:Ljava/lang/String; = "expiration"

.field static final LISTING_SUMMARY:Ljava/lang/String; = "listing_summary"

.field static final LISTING_TITLE:Ljava/lang/String; = "listing_title"

.field static final READ:Ljava/lang/String; = "read"

.field static final RECEIVED_DATE:Ljava/lang/String; = "received_date"

.field static final RULE_NAME:Ljava/lang/String; = "rule_name"

.field static final SCHEMA_VERSION:Ljava/lang/String; = "schema_version"

.field static final SORT_ORDER:Ljava/lang/String; = "sort_order"

.field static final TABLE_NAME:Ljava/lang/String; = "inbox_campaigns"

.field static final THUMBNAIL_LOCATION:Ljava/lang/String; = "thumbnail_location"

.field static final VERSION:Ljava/lang/String; = "version"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 894
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 895
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "This class is non-instantiable"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
