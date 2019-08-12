.class public interface abstract Lcom/nuance/connect/api/ConfigService;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/connect/api/ConfigService$ActiveNetworkState;
    }
.end annotation


# virtual methods
.method public abstract getActiveLanguages()[I
.end method

.method public abstract getActiveLocale()Ljava/util/Locale;
.end method

.method public abstract getBackgroundNetworkState()Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;
.end method

.method public abstract getConnectionConcurrentLimit()I
.end method

.method public abstract getCurrentVersion()Ljava/lang/String;
.end method

.method public abstract getCustomerString()Ljava/lang/String;
.end method

.method public abstract getDeviceId()Ljava/lang/String;
.end method

.method public abstract getDownloadIdleTimeout()I
.end method

.method public abstract getForegroundNetworkState()Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;
.end method

.method public abstract getInitialVersion()Ljava/lang/String;
.end method

.method public abstract getInitializationTimestamp()Ljava/lang/Long;
.end method

.method public abstract getMinimumRefreshInterval()I
.end method

.method public abstract getRefreshInterval()I
.end method

.method public abstract getSwyperId()Ljava/lang/String;
.end method

.method public abstract getUsageDataState()Z
.end method

.method public abstract setActiveLanguages([I)V
.end method

.method public abstract setBackgroundNetworkState(Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;)V
.end method

.method public abstract setConnectionConcurrentLimit(I)V
.end method

.method public abstract setCurrentVersion(Ljava/lang/String;)V
.end method

.method public abstract setCustomerString(Ljava/lang/String;)V
.end method

.method public abstract setDownloadIdleTimeout(I)V
.end method

.method public abstract setForegroundNetworkState(Lcom/nuance/connect/system/NetworkState$NetworkConfiguration;)V
.end method

.method public abstract setInitialVersion(Ljava/lang/String;)V
.end method

.method public abstract setInitializationTimestamp(Ljava/lang/Long;)V
.end method

.method public abstract setLogLevel(I)V
.end method

.method public abstract setRefreshInterval(I)V
.end method

.method public abstract setUsageDataState(Z)V
.end method
