.class public abstract Lcom/google/android/gms/ads/internal/reward/client/zzb$zza;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/gms/ads/internal/reward/client/zzb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/internal/reward/client/zzb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/internal/reward/client/zzb$zza$zza;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.google.android.gms.ads.internal.reward.client.IRewardedVideoAd"

    invoke-virtual {p0, p0, v0}, Lcom/google/android/gms/ads/internal/reward/client/zzb$zza;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static zzbf(Landroid/os/IBinder;)Lcom/google/android/gms/ads/internal/reward/client/zzb;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    const-string/jumbo v0, "com.google.android.gms.ads.internal.reward.client.IRewardedVideoAd"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/google/android/gms/ads/internal/reward/client/zzb;

    if-eqz v1, :cond_14

    check-cast v0, Lcom/google/android/gms/ads/internal/reward/client/zzb;

    goto :goto_3

    :cond_14
    new-instance v0, Lcom/google/android/gms/ads/internal/reward/client/zzb$zza$zza;

    invoke-direct {v0, p0}, Lcom/google/android/gms/ads/internal/reward/client/zzb$zza$zza;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_e2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_8
    return v1

    :sswitch_9
    const-string/jumbo v0, "com.google.android.gms.ads.internal.reward.client.IRewardedVideoAd"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    :sswitch_10
    const-string/jumbo v0, "com.google.android.gms.ads.internal.reward.client.IRewardedVideoAd"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2b

    sget-object v0, Lcom/google/android/gms/ads/internal/reward/client/RewardedVideoAdRequestParcel;->CREATOR:Lcom/google/android/gms/ads/internal/reward/client/zzh;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/ads/internal/reward/client/zzh;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/internal/reward/client/RewardedVideoAdRequestParcel;

    :goto_24
    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/reward/client/zzb$zza;->zza(Lcom/google/android/gms/ads/internal/reward/client/RewardedVideoAdRequestParcel;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    :cond_2b
    const/4 v0, 0x0

    goto :goto_24

    :sswitch_2d
    const-string/jumbo v0, "com.google.android.gms.ads.internal.reward.client.IRewardedVideoAd"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/reward/client/zzb$zza;->show()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    :sswitch_3a
    const-string/jumbo v0, "com.google.android.gms.ads.internal.reward.client.IRewardedVideoAd"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/reward/client/zzd$zza;->zzbh(Landroid/os/IBinder;)Lcom/google/android/gms/ads/internal/reward/client/zzd;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/reward/client/zzb$zza;->zza(Lcom/google/android/gms/ads/internal/reward/client/zzd;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    :sswitch_4f
    const-string/jumbo v0, "com.google.android.gms.ads.internal.reward.client.IRewardedVideoAd"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/reward/client/zzb$zza;->setUserId(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    :sswitch_60
    const-string/jumbo v0, "com.google.android.gms.ads.internal.reward.client.IRewardedVideoAd"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/reward/client/zzb$zza;->isLoaded()Z

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_74

    move v0, v1

    :goto_70
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    :cond_74
    const/4 v0, 0x0

    goto :goto_70

    :sswitch_76
    const-string/jumbo v0, "com.google.android.gms.ads.internal.reward.client.IRewardedVideoAd"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/reward/client/zzb$zza;->pause()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    :sswitch_83
    const-string/jumbo v0, "com.google.android.gms.ads.internal.reward.client.IRewardedVideoAd"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/reward/client/zzb$zza;->resume()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    :sswitch_91
    const-string/jumbo v0, "com.google.android.gms.ads.internal.reward.client.IRewardedVideoAd"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/reward/client/zzb$zza;->destroy()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    :sswitch_9f
    const-string/jumbo v0, "com.google.android.gms.ads.internal.reward.client.IRewardedVideoAd"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/zzd$zza;->zzfc(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/reward/client/zzb$zza;->zzf(Lcom/google/android/gms/dynamic/zzd;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    :sswitch_b5
    const-string/jumbo v0, "com.google.android.gms.ads.internal.reward.client.IRewardedVideoAd"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/zzd$zza;->zzfc(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/reward/client/zzb$zza;->zzg(Lcom/google/android/gms/dynamic/zzd;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    :sswitch_cb
    const-string/jumbo v0, "com.google.android.gms.ads.internal.reward.client.IRewardedVideoAd"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/zzd$zza;->zzfc(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/reward/client/zzb$zza;->zzh(Lcom/google/android/gms/dynamic/zzd;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    nop

    :sswitch_data_e2
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_2d
        0x3 -> :sswitch_3a
        0x4 -> :sswitch_4f
        0x5 -> :sswitch_60
        0x6 -> :sswitch_76
        0x7 -> :sswitch_83
        0x8 -> :sswitch_91
        0x9 -> :sswitch_9f
        0xa -> :sswitch_b5
        0xb -> :sswitch_cb
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
