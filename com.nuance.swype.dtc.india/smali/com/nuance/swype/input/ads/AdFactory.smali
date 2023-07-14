.class public Lcom/nuance/swype/input/ads/AdFactory;
.super Ljava/lang/Object;
.source "AdFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createAdForCandidatesView(Landroid/content/Context;)Lcom/nuance/swype/input/ads/AdProvider;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 16
    new-instance v0, Lcom/nuance/swype/input/ads/admob/AdmobProvider;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/ads/admob/AdmobProvider;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
