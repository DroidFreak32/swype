.class final Lio/fabric/sdk/android/services/common/AdvertisingInfoServiceStrategy$AdvertisingInterface;
.super Ljava/lang/Object;
.source "AdvertisingInfoServiceStrategy.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/fabric/sdk/android/services/common/AdvertisingInfoServiceStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AdvertisingInterface"
.end annotation


# instance fields
.field private final binder:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    iput-object p1, p0, Lio/fabric/sdk/android/services/common/AdvertisingInfoServiceStrategy$AdvertisingInterface;->binder:Landroid/os/IBinder;

    .line 143
    return-void
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 147
    iget-object v0, p0, Lio/fabric/sdk/android/services/common/AdvertisingInfoServiceStrategy$AdvertisingInterface;->binder:Landroid/os/IBinder;

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 151
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 152
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 153
    .local v2, "reply":Landroid/os/Parcel;
    const/4 v1, 0x0

    .line 155
    .local v1, "id":Ljava/lang/String;
    :try_start_9
    const-string/jumbo v3, "com.google.android.gms.ads.identifier.internal.IAdvertisingIdService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 156
    iget-object v3, p0, Lio/fabric/sdk/android/services/common/AdvertisingInfoServiceStrategy$AdvertisingInterface;->binder:Landroid/os/IBinder;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 157
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 158
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_1c} :catch_24
    .catchall {:try_start_9 .. :try_end_1c} :catchall_2f

    move-result-object v1

    .line 163
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 164
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 166
    :goto_23
    return-object v1

    .line 160
    :catch_24
    move-exception v3

    :try_start_25
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_2f

    .line 163
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 164
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_23

    .line 163
    :catchall_2f
    move-exception v3

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 164
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public final isLimitAdTrackingEnabled()Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 170
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 171
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 172
    .local v2, "reply":Landroid/os/Parcel;
    const/4 v1, 0x0

    .line 174
    .local v1, "limitAdTracking":Z
    :try_start_b
    const-string/jumbo v5, "com.google.android.gms.ads.identifier.internal.IAdvertisingIdService"

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 175
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 176
    iget-object v5, p0, Lio/fabric/sdk/android/services/common/AdvertisingInfoServiceStrategy$AdvertisingInterface;->binder:Landroid/os/IBinder;

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-interface {v5, v6, v0, v2, v7}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 177
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 178
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_22} :catch_2f
    .catchall {:try_start_b .. :try_end_22} :catchall_3a

    move-result v5

    if-eqz v5, :cond_2d

    move v1, v3

    .line 184
    :goto_26
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 185
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 187
    :goto_2c
    return v1

    :cond_2d
    move v1, v4

    .line 178
    goto :goto_26

    .line 180
    :catch_2f
    move-exception v3

    :try_start_30
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_3a

    .line 184
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 185
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_2c

    .line 184
    :catchall_3a
    move-exception v3

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 185
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method
