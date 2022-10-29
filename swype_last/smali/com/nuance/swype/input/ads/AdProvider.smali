.class public abstract Lcom/nuance/swype/input/ads/AdProvider;
.super Ljava/lang/Object;
.source "AdProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/input/ads/AdProvider$OnAdLoadStatusChangeListener;,
        Lcom/nuance/swype/input/ads/AdProvider$AD_LOAD_STATUS;
    }
.end annotation


# static fields
.field public static final log:Lcom/nuance/swype/util/LogManager$Log;


# instance fields
.field private final mAdStatusChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swype/input/ads/AdProvider$OnAdLoadStatusChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field public final mContext:Landroid/content/Context;

.field private mStartLoadTime:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 17
    const-string/jumbo v0, "AdProvider"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/ads/AdProvider;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/ads/AdProvider;->mAdStatusChangeListeners:Ljava/util/List;

    .line 22
    iput-object p1, p0, Lcom/nuance/swype/input/ads/AdProvider;->mContext:Landroid/content/Context;

    .line 23
    return-void
.end method


# virtual methods
.method public addOnAdLoadStatusChangeListener(Lcom/nuance/swype/input/ads/AdProvider$OnAdLoadStatusChangeListener;)V
    .registers 6
    .param p1, "listener"    # Lcom/nuance/swype/input/ads/AdProvider$OnAdLoadStatusChangeListener;

    .prologue
    .line 51
    sget-object v0, Lcom/nuance/swype/input/ads/AdProvider;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "Adding ad status change listener"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 52
    iget-object v0, p0, Lcom/nuance/swype/input/ads/AdProvider;->mAdStatusChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    return-void
.end method

.method public abstract hideAdView()V
.end method

.method public loadAd()V
    .registers 3

    .prologue
    .line 46
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nuance/swype/input/ads/AdProvider;->mStartLoadTime:J

    .line 47
    return-void
.end method

.method public notifyAdLoadStatusChanged(Lcom/nuance/swype/input/ads/AdProvider$AD_LOAD_STATUS;)V
    .registers 8
    .param p1, "status"    # Lcom/nuance/swype/input/ads/AdProvider$AD_LOAD_STATUS;

    .prologue
    .line 56
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/nuance/swype/input/ads/AdProvider;->mStartLoadTime:J

    sub-long v0, v2, v4

    .line 58
    .local v0, "loadTime":J
    invoke-static {p1, v0, v1}, Lcom/nuance/swype/usagedata/UsageData;->recordAdResult$7e29e9d3(Lcom/nuance/swype/input/ads/AdProvider$AD_LOAD_STATUS;J)V

    .line 60
    sget-object v2, Lcom/nuance/swype/input/ads/AdProvider;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "Notifying listeners about the ad status changed to: "

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 61
    iget-object v2, p0, Lcom/nuance/swype/input/ads/AdProvider;->mAdStatusChangeListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_22
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/swype/input/ads/AdProvider$OnAdLoadStatusChangeListener;

    .line 62
    invoke-interface {v2, p1}, Lcom/nuance/swype/input/ads/AdProvider$OnAdLoadStatusChangeListener;->adLoadStatusChanged(Lcom/nuance/swype/input/ads/AdProvider$AD_LOAD_STATUS;)V

    goto :goto_22

    .line 64
    :cond_32
    return-void
.end method

.method public abstract setup(Landroid/view/ViewGroup;)V
.end method

.method public abstract showAdView()V
.end method
