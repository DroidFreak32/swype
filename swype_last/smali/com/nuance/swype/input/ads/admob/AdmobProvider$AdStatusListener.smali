.class Lcom/nuance/swype/input/ads/admob/AdmobProvider$AdStatusListener;
.super Lcom/google/android/gms/ads/AdListener;
.source "AdmobProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/ads/admob/AdmobProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdStatusListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/ads/admob/AdmobProvider;


# direct methods
.method private constructor <init>(Lcom/nuance/swype/input/ads/admob/AdmobProvider;)V
    .registers 2

    .prologue
    .line 83
    iput-object p1, p0, Lcom/nuance/swype/input/ads/admob/AdmobProvider$AdStatusListener;->this$0:Lcom/nuance/swype/input/ads/admob/AdmobProvider;

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nuance/swype/input/ads/admob/AdmobProvider;Lcom/nuance/swype/input/ads/admob/AdmobProvider$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/nuance/swype/input/ads/admob/AdmobProvider;
    .param p2, "x1"    # Lcom/nuance/swype/input/ads/admob/AdmobProvider$1;

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/ads/admob/AdmobProvider$AdStatusListener;-><init>(Lcom/nuance/swype/input/ads/admob/AdmobProvider;)V

    return-void
.end method


# virtual methods
.method public onAdFailedToLoad(I)V
    .registers 6
    .param p1, "errorCode"    # I

    .prologue
    .line 87
    # getter for: Lcom/nuance/swype/input/ads/admob/AdmobProvider;->log:Lcom/nuance/swype/util/LogManager$Log;
    invoke-static {}, Lcom/nuance/swype/input/ads/admob/AdmobProvider;->access$100()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "Ad load failed. Error code: "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 88
    invoke-super {p0, p1}, Lcom/google/android/gms/ads/AdListener;->onAdFailedToLoad(I)V

    .line 89
    iget-object v0, p0, Lcom/nuance/swype/input/ads/admob/AdmobProvider$AdStatusListener;->this$0:Lcom/nuance/swype/input/ads/admob/AdmobProvider;

    iget-object v1, p0, Lcom/nuance/swype/input/ads/admob/AdmobProvider$AdStatusListener;->this$0:Lcom/nuance/swype/input/ads/admob/AdmobProvider;

    # invokes: Lcom/nuance/swype/input/ads/admob/AdmobProvider;->getProviderIndependentErrorCode(I)Lcom/nuance/swype/input/ads/AdProvider$AD_LOAD_STATUS;
    invoke-static {v1, p1}, Lcom/nuance/swype/input/ads/admob/AdmobProvider;->access$200(Lcom/nuance/swype/input/ads/admob/AdmobProvider;I)Lcom/nuance/swype/input/ads/AdProvider$AD_LOAD_STATUS;

    move-result-object v1

    # invokes: Lcom/nuance/swype/input/ads/admob/AdmobProvider;->notifyAdLoadStatusChanged(Lcom/nuance/swype/input/ads/AdProvider$AD_LOAD_STATUS;)V
    invoke-static {v0, v1}, Lcom/nuance/swype/input/ads/admob/AdmobProvider;->access$300(Lcom/nuance/swype/input/ads/admob/AdmobProvider;Lcom/nuance/swype/input/ads/AdProvider$AD_LOAD_STATUS;)V

    .line 90
    return-void
.end method

.method public onAdLoaded()V
    .registers 5

    .prologue
    .line 94
    # getter for: Lcom/nuance/swype/input/ads/admob/AdmobProvider;->log:Lcom/nuance/swype/util/LogManager$Log;
    invoke-static {}, Lcom/nuance/swype/input/ads/admob/AdmobProvider;->access$400()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "Ad loaded successfully!"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 95
    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->onAdLoaded()V

    .line 96
    iget-object v0, p0, Lcom/nuance/swype/input/ads/admob/AdmobProvider$AdStatusListener;->this$0:Lcom/nuance/swype/input/ads/admob/AdmobProvider;

    # getter for: Lcom/nuance/swype/input/ads/admob/AdmobProvider;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/nuance/swype/input/ads/admob/AdmobProvider;->access$500(Lcom/nuance/swype/input/ads/admob/AdmobProvider;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getAdSessionTracker()Lcom/nuance/swype/input/ads/BillboardSessionTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/ads/BillboardSessionTracker;->wasShown()V

    .line 97
    iget-object v0, p0, Lcom/nuance/swype/input/ads/admob/AdmobProvider$AdStatusListener;->this$0:Lcom/nuance/swype/input/ads/admob/AdmobProvider;

    sget-object v1, Lcom/nuance/swype/input/ads/AdProvider$AD_LOAD_STATUS;->SUCCESS:Lcom/nuance/swype/input/ads/AdProvider$AD_LOAD_STATUS;

    # invokes: Lcom/nuance/swype/input/ads/admob/AdmobProvider;->notifyAdLoadStatusChanged(Lcom/nuance/swype/input/ads/AdProvider$AD_LOAD_STATUS;)V
    invoke-static {v0, v1}, Lcom/nuance/swype/input/ads/admob/AdmobProvider;->access$600(Lcom/nuance/swype/input/ads/admob/AdmobProvider;Lcom/nuance/swype/input/ads/AdProvider$AD_LOAD_STATUS;)V

    .line 99
    return-void
.end method
