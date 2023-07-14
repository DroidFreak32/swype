.class final Lcom/localytics/android/MarketingProvider$FrequencyCappingBlackoutWeekdayV3Columns;
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
    name = "FrequencyCappingBlackoutWeekdayV3Columns"
.end annotation


# static fields
.field static final DAY:Ljava/lang/String; = "day"

.field static final FREQUENCY_ID:Ljava/lang/String; = "frequency_id"

.field static final RULE_GROUP_ID:Ljava/lang/String; = "rule_group_id"

.field static final TABLE_NAME:Ljava/lang/String; = "frequency_capping_blackout_weekdays"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 671
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 672
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "This class is non-instantiable"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
