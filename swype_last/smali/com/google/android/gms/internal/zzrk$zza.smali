.class public abstract Lcom/google/android/gms/internal/zzrk$zza;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/gms/internal/zzrk;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzrk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzrk$zza$zza;
    }
.end annotation


# direct methods
.method public static zzea(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzrk;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    const-string/jumbo v0, "com.google.android.gms.common.internal.service.ICommonService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/google/android/gms/internal/zzrk;

    if-eqz v1, :cond_14

    check-cast v0, Lcom/google/android/gms/internal/zzrk;

    goto :goto_3

    :cond_14
    new-instance v0, Lcom/google/android/gms/internal/zzrk$zza$zza;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzrk$zza$zza;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 0
    sparse-switch p1, :sswitch_data_3a

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_8
    return v0

    :sswitch_9
    const-string/jumbo v0, "com.google.android.gms.common.internal.service.ICommonService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v1

    goto :goto_8

    :sswitch_11
    const-string/jumbo v0, "com.google.android.gms.common.internal.service.ICommonService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 1000
    if-nez v2, :cond_23

    const/4 v0, 0x0

    .line 0
    :goto_1e
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzrk$zza;->zza(Lcom/google/android/gms/internal/zzrj;)V

    move v0, v1

    goto :goto_8

    .line 1000
    :cond_23
    const-string/jumbo v0, "com.google.android.gms.common.internal.service.ICommonCallbacks"

    invoke-interface {v2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_33

    instance-of v3, v0, Lcom/google/android/gms/internal/zzrj;

    if-eqz v3, :cond_33

    check-cast v0, Lcom/google/android/gms/internal/zzrj;

    goto :goto_1e

    :cond_33
    new-instance v0, Lcom/google/android/gms/internal/zzrj$zza$zza;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/zzrj$zza$zza;-><init>(Landroid/os/IBinder;)V

    goto :goto_1e

    .line 0
    nop

    :sswitch_data_3a
    .sparse-switch
        0x1 -> :sswitch_11
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
