.class interface abstract Lcom/localytics/android/LocalyticsDao;
.super Ljava/lang/Object;
.source "LocalyticsDao.java"


# virtual methods
.method public abstract areNotificationsDisabled()Z
.end method

.method public abstract getAndroidVersionInt()I
.end method

.method public abstract getAppContext()Landroid/content/Context;
.end method

.method public abstract getAppKey()Ljava/lang/String;
.end method

.method public abstract getCachedCustomDimensions()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCachedIdentifiers()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCalendar()Ljava/util/Calendar;
.end method

.method public abstract getCurrentTimeMillis()J
.end method

.method public abstract getCustomDimension(I)Ljava/lang/String;
.end method

.method public abstract getCustomerIdFuture()Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getInstallationId()Ljava/lang/String;
.end method

.method public abstract getProxy()Ljava/net/Proxy;
.end method

.method public abstract getPushRegistrationId()Ljava/lang/String;
.end method

.method public abstract getTimeStringForSQLite()Ljava/lang/String;
.end method

.method public abstract isAppInForeground()Z
.end method

.method public abstract isAutoIntegrate()Z
.end method

.method public abstract isUsingNewCreativeLocation()Z
.end method

.method public abstract setCustomDimension(ILjava/lang/String;)V
.end method

.method public abstract setTestModeEnabled(Z)V
.end method

.method public abstract stoppedMonitoringAllGeofences()V
.end method

.method public abstract tagEvent(Ljava/lang/String;)V
.end method

.method public abstract tagEvent(Ljava/lang/String;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract tagEvent(Ljava/lang/String;Ljava/util/Map;J)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation
.end method

.method public abstract upload()V
.end method

.method public abstract useNewCreativeLocation(Z)V
.end method
