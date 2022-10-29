.class public final Landroid/support/v4/content/res/ConfigurationHelper;
.super Ljava/lang/Object;
.source "ConfigurationHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/content/res/ConfigurationHelper$JellybeanMr1Impl;,
        Landroid/support/v4/content/res/ConfigurationHelper$HoneycombMr2Impl;,
        Landroid/support/v4/content/res/ConfigurationHelper$DonutImpl;,
        Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;
    }
.end annotation


# static fields
.field private static final IMPL:Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 32
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 33
    .local v0, "sdk":I
    const/16 v1, 0x11

    if-lt v0, v1, :cond_f

    .line 34
    new-instance v1, Landroid/support/v4/content/res/ConfigurationHelper$JellybeanMr1Impl;

    invoke-direct {v1, v2}, Landroid/support/v4/content/res/ConfigurationHelper$JellybeanMr1Impl;-><init>(B)V

    sput-object v1, Landroid/support/v4/content/res/ConfigurationHelper;->IMPL:Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;

    .line 40
    :goto_e
    return-void

    .line 35
    :cond_f
    const/16 v1, 0xd

    if-lt v0, v1, :cond_1b

    .line 36
    new-instance v1, Landroid/support/v4/content/res/ConfigurationHelper$HoneycombMr2Impl;

    invoke-direct {v1, v2}, Landroid/support/v4/content/res/ConfigurationHelper$HoneycombMr2Impl;-><init>(B)V

    sput-object v1, Landroid/support/v4/content/res/ConfigurationHelper;->IMPL:Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;

    goto :goto_e

    .line 38
    :cond_1b
    new-instance v1, Landroid/support/v4/content/res/ConfigurationHelper$DonutImpl;

    invoke-direct {v1, v2}, Landroid/support/v4/content/res/ConfigurationHelper$DonutImpl;-><init>(B)V

    sput-object v1, Landroid/support/v4/content/res/ConfigurationHelper;->IMPL:Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;

    goto :goto_e
.end method

.method public static getScreenHeightDp(Landroid/content/res/Resources;)I
    .registers 2
    .param p0, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 104
    sget-object v0, Landroid/support/v4/content/res/ConfigurationHelper;->IMPL:Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->getScreenHeightDp(Landroid/content/res/Resources;)I

    move-result v0

    return v0
.end method

.method public static getScreenWidthDp(Landroid/content/res/Resources;)I
    .registers 2
    .param p0, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 114
    sget-object v0, Landroid/support/v4/content/res/ConfigurationHelper;->IMPL:Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->getScreenWidthDp(Landroid/content/res/Resources;)I

    move-result v0

    return v0
.end method

.method public static getSmallestScreenWidthDp(Landroid/content/res/Resources;)I
    .registers 2
    .param p0, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 124
    sget-object v0, Landroid/support/v4/content/res/ConfigurationHelper;->IMPL:Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->getSmallestScreenWidthDp(Landroid/content/res/Resources;)I

    move-result v0

    return v0
.end method
