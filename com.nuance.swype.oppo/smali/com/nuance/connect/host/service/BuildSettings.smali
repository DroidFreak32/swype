.class public interface abstract Lcom/nuance/connect/host/service/BuildSettings;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/connect/host/service/BuildSettings$Property;
    }
.end annotation


# virtual methods
.method public abstract collectUserProperties()Z
.end method

.method public abstract getAnalyticsLevel()I
.end method

.method public abstract getAppKeyStarts()Ljava/lang/String;
.end method

.method public abstract getApplicationId()Ljava/lang/String;
.end method

.method public abstract getBackgroundNetworkDefault()Ljava/lang/String;
.end method

.method public abstract getBuildExpiration()Ljava/lang/String;
.end method

.method public abstract getBuildPropertiesFilterBlock()Ljava/lang/String;
.end method

.method public abstract getBuildPropertiesFilterPreTos()Ljava/lang/String;
.end method

.method public abstract getBuildTimestamp()Ljava/lang/String;
.end method

.method public abstract getConnectUrl()Ljava/lang/String;
.end method

.method public abstract getCoreVersions()Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDefaultDelay()I
.end method

.method public abstract getDlmSyncDefault()Z
.end method

.method public abstract getForegroundNetworkDefault()Ljava/lang/String;
.end method

.method public abstract getLanguageCoreMap()Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLivingLanguageMaxEventsDefault()I
.end method

.method public abstract getLocationDelay()I
.end method

.method public abstract getLocationDistance()I
.end method

.method public abstract getLocationLevel()I
.end method

.method public abstract getLogLevel()I
.end method

.method public abstract getMinimumRefreshIntervalDefault()I
.end method

.method public abstract getOemId()Ljava/lang/String;
.end method

.method public abstract getUdbAnonymousUpload()Z
.end method

.method public abstract getUpdateLivingLanguageByDefault()Z
.end method

.method public abstract getVersion()Ljava/lang/String;
.end method

.method public abstract isAnonymousBuild()Z
.end method

.method public abstract isChineseCategoryEnabled()Z
.end method

.method public abstract isDeveloperLogEnabled()Z
.end method

.method public abstract isDlmSyncEnabled()Z
.end method

.method public abstract isLivingLanguageEnabled()Z
.end method

.method public abstract isPlatformUpdateEnabled()Z
.end method
