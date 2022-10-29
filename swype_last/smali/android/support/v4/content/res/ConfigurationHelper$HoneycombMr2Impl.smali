.class Landroid/support/v4/content/res/ConfigurationHelper$HoneycombMr2Impl;
.super Landroid/support/v4/content/res/ConfigurationHelper$DonutImpl;
.source "ConfigurationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/content/res/ConfigurationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HoneycombMr2Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v4/content/res/ConfigurationHelper$DonutImpl;-><init>(B)V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .registers 2

    .prologue
    .line 73
    invoke-direct {p0}, Landroid/support/v4/content/res/ConfigurationHelper$HoneycombMr2Impl;-><init>()V

    return-void
.end method


# virtual methods
.method public final getScreenHeightDp(Landroid/content/res/Resources;)I
    .registers 3
    .param p1, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 76
    .line 1026
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 76
    return v0
.end method

.method public final getScreenWidthDp(Landroid/content/res/Resources;)I
    .registers 3
    .param p1, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 81
    .line 1030
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 81
    return v0
.end method

.method public final getSmallestScreenWidthDp(Landroid/content/res/Resources;)I
    .registers 3
    .param p1, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 86
    .line 1034
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 86
    return v0
.end method
