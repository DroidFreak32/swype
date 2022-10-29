.class final Lcom/localytics/android/AnalyticsProvider$ScreensColumns;
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
    name = "ScreensColumns"
.end annotation


# static fields
.field static final NAME:Ljava/lang/String; = "name"

.field static final TABLE_NAME:Ljava/lang/String; = "screens"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 340
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
