.class public Lcom/nuance/android/compat/LocalyticsCompat$DummyAnalytics;
.super Lcom/nuance/swype/stats/LocalyticsUtils;
.source "LocalyticsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/android/compat/LocalyticsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DummyAnalytics"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/nuance/swype/stats/LocalyticsUtils;-><init>(Landroid/content/Context;)V

    .line 73
    return-void
.end method
