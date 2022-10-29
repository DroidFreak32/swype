.class public Lcom/facebook/appevents/internal/AppEventUtility;
.super Ljava/lang/Object;
.source "AppEventUtility.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static assertIsMainThread()V
    .registers 0

    .prologue
    .line 43
    return-void
.end method

.method public static assertIsNotMainThread()V
    .registers 0

    .prologue
    .line 35
    return-void
.end method

.method private static isMainThread()Z
    .registers 2

    .prologue
    .line 46
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method
