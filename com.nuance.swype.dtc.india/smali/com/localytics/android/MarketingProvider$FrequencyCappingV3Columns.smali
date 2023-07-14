.class final Lcom/localytics/android/MarketingProvider$FrequencyCappingV3Columns;
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
    name = "FrequencyCappingV3Columns"
.end annotation


# static fields
.field static final CAMPAIGN_ID:Ljava/lang/String; = "campaign_id"

.field static final IGNORE_GLOBAL:Ljava/lang/String; = "ignore_global"

.field static final MAX_DISPLAY_COUNT:Ljava/lang/String; = "max_display_count"

.field static final TABLE_NAME:Ljava/lang/String; = "frequency_capping_rules"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 522
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 523
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "This class is non-instantiable"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
