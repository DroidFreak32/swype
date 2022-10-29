.class final Lcom/localytics/android/MarketingProvider$FrequencyCappingDisplayFrequencyV3Columns;
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
    name = "FrequencyCappingDisplayFrequencyV3Columns"
.end annotation


# static fields
.field static final DISPLAY_FREQUENCY_COUNT:Ljava/lang/String; = "count"

.field static final DISPLAY_FREQUENCY_DAYS:Ljava/lang/String; = "days"

.field static final FREQUENCY_ID:Ljava/lang/String; = "frequency_id"

.field static final TABLE_NAME:Ljava/lang/String; = "frequency_capping_display_frequencies"


# direct methods
.method private constructor <init>()V
    .registers 3

    .prologue
    .line 569
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 570
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "This class is non-instantiable"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
