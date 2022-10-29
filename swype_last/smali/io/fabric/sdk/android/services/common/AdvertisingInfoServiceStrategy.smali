.class final Lio/fabric/sdk/android/services/common/AdvertisingInfoServiceStrategy;
.super Ljava/lang/Object;
.source "AdvertisingInfoServiceStrategy.java"

# interfaces
.implements Lio/fabric/sdk/android/services/common/AdvertisingInfoStrategy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/fabric/sdk/android/services/common/AdvertisingInfoServiceStrategy$AdvertisingInterface;,
        Lio/fabric/sdk/android/services/common/AdvertisingInfoServiceStrategy$AdvertisingConnection;
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lio/fabric/sdk/android/services/common/AdvertisingInfoServiceStrategy;->context:Landroid/content/Context;

    .line 29
    return-void
.end method


# virtual methods
.method public final getAdvertisingInfo()Lio/fabric/sdk/android/services/common/AdvertisingInfo;
    .registers 10

    .prologue
    const/4 v8, 0x0

    const/4 v4, 0x0

    .line 32
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    if-ne v5, v6, :cond_10

    .line 33
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    .line 78
    :goto_f
    return-object v4

    .line 39
    :cond_10
    :try_start_10
    iget-object v5, p0, Lio/fabric/sdk/android/services/common/AdvertisingInfoServiceStrategy;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 40
    const-string/jumbo v6, "com.android.vending"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_1d} :catch_56

    .line 52
    new-instance v1, Lio/fabric/sdk/android/services/common/AdvertisingInfoServiceStrategy$AdvertisingConnection;

    invoke-direct {v1, v8}, Lio/fabric/sdk/android/services/common/AdvertisingInfoServiceStrategy$AdvertisingConnection;-><init>(B)V

    .line 53
    .local v1, "connection":Lio/fabric/sdk/android/services/common/AdvertisingInfoServiceStrategy$AdvertisingConnection;
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v5, "com.google.android.gms.ads.identifier.service.START"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 54
    .local v3, "intent":Landroid/content/Intent;
    const-string/jumbo v5, "com.google.android.gms"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    :try_start_30
    iget-object v5, p0, Lio/fabric/sdk/android/services/common/AdvertisingInfoServiceStrategy;->context:Landroid/content/Context;

    const/4 v6, 0x1

    invoke-virtual {v5, v3, v1, v6}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_36} :catch_6f

    move-result v5

    if-eqz v5, :cond_7b

    .line 58
    :try_start_39
    new-instance v0, Lio/fabric/sdk/android/services/common/AdvertisingInfoServiceStrategy$AdvertisingInterface;

    invoke-virtual {v1}, Lio/fabric/sdk/android/services/common/AdvertisingInfoServiceStrategy$AdvertisingConnection;->getBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-direct {v0, v5}, Lio/fabric/sdk/android/services/common/AdvertisingInfoServiceStrategy$AdvertisingInterface;-><init>(Landroid/os/IBinder;)V

    .line 60
    .local v0, "adInterface":Lio/fabric/sdk/android/services/common/AdvertisingInfoServiceStrategy$AdvertisingInterface;
    new-instance v5, Lio/fabric/sdk/android/services/common/AdvertisingInfo;

    invoke-virtual {v0}, Lio/fabric/sdk/android/services/common/AdvertisingInfoServiceStrategy$AdvertisingInterface;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lio/fabric/sdk/android/services/common/AdvertisingInfoServiceStrategy$AdvertisingInterface;->isLimitAdTrackingEnabled()Z

    move-result v7

    invoke-direct {v5, v6, v7}, Lio/fabric/sdk/android/services/common/AdvertisingInfo;-><init>(Ljava/lang/String;Z)V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_4f} :catch_5b
    .catchall {:try_start_39 .. :try_end_4f} :catchall_74

    .line 67
    :try_start_4f
    iget-object v6, p0, Lio/fabric/sdk/android/services/common/AdvertisingInfoServiceStrategy;->context:Landroid/content/Context;

    invoke-virtual {v6, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_54
    .catch Ljava/lang/Throwable; {:try_start_4f .. :try_end_54} :catch_6f

    move-object v4, v5

    goto :goto_f

    .line 47
    .end local v0    # "adInterface":Lio/fabric/sdk/android/services/common/AdvertisingInfoServiceStrategy$AdvertisingInterface;
    .end local v1    # "connection":Lio/fabric/sdk/android/services/common/AdvertisingInfoServiceStrategy$AdvertisingConnection;
    .end local v3    # "intent":Landroid/content/Intent;
    :catch_56
    move-exception v5

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    goto :goto_f

    .line 62
    .restart local v1    # "connection":Lio/fabric/sdk/android/services/common/AdvertisingInfoServiceStrategy$AdvertisingConnection;
    .restart local v3    # "intent":Landroid/content/Intent;
    :catch_5b
    move-exception v2

    .line 63
    .local v2, "e":Ljava/lang/Exception;
    :try_start_5c
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v5

    const-string/jumbo v6, "Fabric"

    const-string/jumbo v7, "Exception in binding to Google Play Service to capture AdvertisingId"

    invoke-interface {v5, v6, v7, v2}, Lio/fabric/sdk/android/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_69
    .catchall {:try_start_5c .. :try_end_69} :catchall_74

    .line 67
    :try_start_69
    iget-object v5, p0, Lio/fabric/sdk/android/services/common/AdvertisingInfoServiceStrategy;->context:Landroid/content/Context;

    invoke-virtual {v5, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_6e
    .catch Ljava/lang/Throwable; {:try_start_69 .. :try_end_6e} :catch_6f

    goto :goto_f

    .line 74
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_6f
    move-exception v5

    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    goto :goto_f

    .line 67
    :catchall_74
    move-exception v5

    :try_start_75
    iget-object v6, p0, Lio/fabric/sdk/android/services/common/AdvertisingInfoServiceStrategy;->context:Landroid/content/Context;

    invoke-virtual {v6, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    throw v5

    .line 70
    :cond_7b
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;
    :try_end_7e
    .catch Ljava/lang/Throwable; {:try_start_75 .. :try_end_7e} :catch_6f

    goto :goto_f
.end method
