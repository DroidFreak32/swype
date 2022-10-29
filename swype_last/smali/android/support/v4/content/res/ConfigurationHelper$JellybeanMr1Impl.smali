.class final Landroid/support/v4/content/res/ConfigurationHelper$JellybeanMr1Impl;
.super Landroid/support/v4/content/res/ConfigurationHelper$HoneycombMr2Impl;
.source "ConfigurationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/content/res/ConfigurationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "JellybeanMr1Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 90
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v4/content/res/ConfigurationHelper$HoneycombMr2Impl;-><init>(B)V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .registers 2

    .prologue
    .line 90
    invoke-direct {p0}, Landroid/support/v4/content/res/ConfigurationHelper$JellybeanMr1Impl;-><init>()V

    return-void
.end method
