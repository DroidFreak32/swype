.class final Lcom/localytics/android/AnalyticsProvider$CustomDimensionsV3Columns;
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
    name = "CustomDimensionsV3Columns"
.end annotation


# static fields
.field static final CUSTOM_DIMENSION_KEY:Ljava/lang/String; = "custom_dimension_key"

.field static final CUSTOM_DIMENSION_VALUE:Ljava/lang/String; = "custom_dimension_value"

.field static final TABLE_NAME:Ljava/lang/String; = "custom_dimensions"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "This class is non-instantiable"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
