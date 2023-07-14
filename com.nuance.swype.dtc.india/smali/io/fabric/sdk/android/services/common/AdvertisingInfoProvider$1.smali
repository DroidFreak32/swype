.class final Lio/fabric/sdk/android/services/common/AdvertisingInfoProvider$1;
.super Lio/fabric/sdk/android/services/common/BackgroundPriorityRunnable;
.source "AdvertisingInfoProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/fabric/sdk/android/services/common/AdvertisingInfoProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/fabric/sdk/android/services/common/AdvertisingInfoProvider;

.field final synthetic val$advertisingInfo:Lio/fabric/sdk/android/services/common/AdvertisingInfo;


# direct methods
.method constructor <init>(Lio/fabric/sdk/android/services/common/AdvertisingInfoProvider;Lio/fabric/sdk/android/services/common/AdvertisingInfo;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lio/fabric/sdk/android/services/common/AdvertisingInfoProvider$1;->this$0:Lio/fabric/sdk/android/services/common/AdvertisingInfoProvider;

    iput-object p2, p0, Lio/fabric/sdk/android/services/common/AdvertisingInfoProvider$1;->val$advertisingInfo:Lio/fabric/sdk/android/services/common/AdvertisingInfo;

    invoke-direct {p0}, Lio/fabric/sdk/android/services/common/BackgroundPriorityRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public final onRun()V
    .locals 2

    .prologue
    .line 53
    iget-object v1, p0, Lio/fabric/sdk/android/services/common/AdvertisingInfoProvider$1;->this$0:Lio/fabric/sdk/android/services/common/AdvertisingInfoProvider;

    .line 1011
    invoke-virtual {v1}, Lio/fabric/sdk/android/services/common/AdvertisingInfoProvider;->getAdvertisingInfoFromStrategies()Lio/fabric/sdk/android/services/common/AdvertisingInfo;

    move-result-object v0

    .line 54
    .local v0, "infoToStore":Lio/fabric/sdk/android/services/common/AdvertisingInfo;
    iget-object v1, p0, Lio/fabric/sdk/android/services/common/AdvertisingInfoProvider$1;->val$advertisingInfo:Lio/fabric/sdk/android/services/common/AdvertisingInfo;

    invoke-virtual {v1, v0}, Lio/fabric/sdk/android/services/common/AdvertisingInfo;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 55
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    .line 57
    iget-object v1, p0, Lio/fabric/sdk/android/services/common/AdvertisingInfoProvider$1;->this$0:Lio/fabric/sdk/android/services/common/AdvertisingInfoProvider;

    .line 2011
    invoke-virtual {v1, v0}, Lio/fabric/sdk/android/services/common/AdvertisingInfoProvider;->storeInfoToPreferences(Lio/fabric/sdk/android/services/common/AdvertisingInfo;)V

    .line 59
    :cond_0
    return-void
.end method
