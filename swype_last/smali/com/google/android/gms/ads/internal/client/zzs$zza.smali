.class public abstract Lcom/google/android/gms/ads/internal/client/zzs$zza;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/gms/ads/internal/client/zzs;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/internal/client/zzs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/internal/client/zzs$zza$zza;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.google.android.gms.ads.internal.client.IAdLoaderBuilder"

    invoke-virtual {p0, p0, v0}, Lcom/google/android/gms/ads/internal/client/zzs$zza;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static zzl(Landroid/os/IBinder;)Lcom/google/android/gms/ads/internal/client/zzs;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    const-string/jumbo v0, "com.google.android.gms.ads.internal.client.IAdLoaderBuilder"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/google/android/gms/ads/internal/client/zzs;

    if-eqz v1, :cond_14

    check-cast v0, Lcom/google/android/gms/ads/internal/client/zzs;

    goto :goto_3

    :cond_14
    new-instance v0, Lcom/google/android/gms/ads/internal/client/zzs$zza$zza;

    invoke-direct {v0, p0}, Lcom/google/android/gms/ads/internal/client/zzs$zza$zza;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 0
    sparse-switch p1, :sswitch_data_11e

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_9
    return v0

    :sswitch_a
    const-string/jumbo v0, "com.google.android.gms.ads.internal.client.IAdLoaderBuilder"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v3

    goto :goto_9

    :sswitch_12
    const-string/jumbo v0, "com.google.android.gms.ads.internal.client.IAdLoaderBuilder"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/client/zzs$zza;->zzes()Lcom/google/android/gms/ads/internal/client/zzr;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_2a

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/client/zzr;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_25
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    move v0, v3

    goto :goto_9

    :cond_2a
    move-object v0, v1

    goto :goto_25

    :sswitch_2c
    const-string/jumbo v0, "com.google.android.gms.ads.internal.client.IAdLoaderBuilder"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/client/zzq$zza;->zzj(Landroid/os/IBinder;)Lcom/google/android/gms/ads/internal/client/zzq;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/client/zzs$zza;->zzb(Lcom/google/android/gms/ads/internal/client/zzq;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v3

    goto :goto_9

    :sswitch_42
    const-string/jumbo v0, "com.google.android.gms.ads.internal.client.IAdLoaderBuilder"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 1000
    if-nez v2, :cond_56

    .line 0
    :goto_4e
    invoke-virtual {p0, v1}, Lcom/google/android/gms/ads/internal/client/zzs$zza;->zza(Lcom/google/android/gms/internal/zzeb;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v3

    goto :goto_9

    .line 1000
    :cond_56
    const-string/jumbo v0, "com.google.android.gms.ads.internal.formats.client.IOnAppInstallAdLoadedListener"

    invoke-interface {v2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_67

    instance-of v1, v0, Lcom/google/android/gms/internal/zzeb;

    if-eqz v1, :cond_67

    check-cast v0, Lcom/google/android/gms/internal/zzeb;

    move-object v1, v0

    goto :goto_4e

    :cond_67
    new-instance v1, Lcom/google/android/gms/internal/zzeb$zza$zza;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/zzeb$zza$zza;-><init>(Landroid/os/IBinder;)V

    goto :goto_4e

    .line 0
    :sswitch_6d
    const-string/jumbo v0, "com.google.android.gms.ads.internal.client.IAdLoaderBuilder"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 2000
    if-nez v2, :cond_81

    .line 0
    :goto_79
    invoke-virtual {p0, v1}, Lcom/google/android/gms/ads/internal/client/zzs$zza;->zza(Lcom/google/android/gms/internal/zzec;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v3

    goto :goto_9

    .line 2000
    :cond_81
    const-string/jumbo v0, "com.google.android.gms.ads.internal.formats.client.IOnContentAdLoadedListener"

    invoke-interface {v2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_92

    instance-of v1, v0, Lcom/google/android/gms/internal/zzec;

    if-eqz v1, :cond_92

    check-cast v0, Lcom/google/android/gms/internal/zzec;

    move-object v1, v0

    goto :goto_79

    :cond_92
    new-instance v1, Lcom/google/android/gms/internal/zzec$zza$zza;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/zzec$zza$zza;-><init>(Landroid/os/IBinder;)V

    goto :goto_79

    .line 0
    :sswitch_98
    const-string/jumbo v0, "com.google.android.gms.ads.internal.client.IAdLoaderBuilder"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 3000
    if-nez v2, :cond_b8

    move-object v2, v1

    .line 0
    :goto_a9
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 4000
    if-nez v5, :cond_d0

    .line 0
    :goto_af
    invoke-virtual {p0, v4, v2, v1}, Lcom/google/android/gms/ads/internal/client/zzs$zza;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzee;Lcom/google/android/gms/internal/zzed;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v3

    goto/16 :goto_9

    .line 3000
    :cond_b8
    const-string/jumbo v0, "com.google.android.gms.ads.internal.formats.client.IOnCustomTemplateAdLoadedListener"

    invoke-interface {v2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_c9

    instance-of v5, v0, Lcom/google/android/gms/internal/zzee;

    if-eqz v5, :cond_c9

    check-cast v0, Lcom/google/android/gms/internal/zzee;

    move-object v2, v0

    goto :goto_a9

    :cond_c9
    new-instance v0, Lcom/google/android/gms/internal/zzee$zza$zza;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/zzee$zza$zza;-><init>(Landroid/os/IBinder;)V

    move-object v2, v0

    goto :goto_a9

    .line 4000
    :cond_d0
    const-string/jumbo v0, "com.google.android.gms.ads.internal.formats.client.IOnCustomClickListener"

    invoke-interface {v5, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_e1

    instance-of v1, v0, Lcom/google/android/gms/internal/zzed;

    if-eqz v1, :cond_e1

    check-cast v0, Lcom/google/android/gms/internal/zzed;

    move-object v1, v0

    goto :goto_af

    :cond_e1
    new-instance v1, Lcom/google/android/gms/internal/zzed$zza$zza;

    invoke-direct {v1, v5}, Lcom/google/android/gms/internal/zzed$zza$zza;-><init>(Landroid/os/IBinder;)V

    goto :goto_af

    .line 0
    :sswitch_e7
    const-string/jumbo v0, "com.google.android.gms.ads.internal.client.IAdLoaderBuilder"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_104

    sget-object v0, Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;->CREATOR:Lcom/google/android/gms/ads/internal/formats/zzj;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/ads/internal/formats/zzj;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;

    :goto_fb
    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/client/zzs$zza;->zza(Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v3

    goto/16 :goto_9

    :cond_104
    move-object v0, v1

    goto :goto_fb

    :sswitch_106
    const-string/jumbo v0, "com.google.android.gms.ads.internal.client.IAdLoaderBuilder"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/client/zzy$zza;->zzq(Landroid/os/IBinder;)Lcom/google/android/gms/ads/internal/client/zzy;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/client/zzs$zza;->zzb(Lcom/google/android/gms/ads/internal/client/zzy;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v3

    goto/16 :goto_9

    nop

    :sswitch_data_11e
    .sparse-switch
        0x1 -> :sswitch_12
        0x2 -> :sswitch_2c
        0x3 -> :sswitch_42
        0x4 -> :sswitch_6d
        0x5 -> :sswitch_98
        0x6 -> :sswitch_e7
        0x7 -> :sswitch_106
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
