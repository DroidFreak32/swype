.class public abstract Lcom/google/android/gms/internal/zzmy$zza;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/gms/internal/zzmy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzmy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzmy$zza$zza;
    }
.end annotation


# direct methods
.method public static zzcb(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzmy;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    const-string/jumbo v0, "com.google.android.gms.auth.api.accountactivationstate.internal.IAccountActivationStateService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/google/android/gms/internal/zzmy;

    if-eqz v1, :cond_14

    check-cast v0, Lcom/google/android/gms/internal/zzmy;

    goto :goto_3

    :cond_14
    new-instance v0, Lcom/google/android/gms/internal/zzmy$zza$zza;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzmy$zza$zza;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 0
    sparse-switch p1, :sswitch_data_52

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_9
    return v0

    :sswitch_a
    const-string/jumbo v0, "com.google.android.gms.auth.api.accountactivationstate.internal.IAccountActivationStateService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v3

    goto :goto_9

    :sswitch_12
    const-string/jumbo v0, "com.google.android.gms.auth.api.accountactivationstate.internal.IAccountActivationStateService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_39

    sget-object v0, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    move-object v1, v0

    :goto_27
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 1000
    if-nez v5, :cond_3b

    .line 0
    :goto_31
    invoke-virtual {p0, v1, v4, v2}, Lcom/google/android/gms/internal/zzmy$zza;->zza(Landroid/accounts/Account;ILcom/google/android/gms/internal/zzmx;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v3

    goto :goto_9

    :cond_39
    move-object v1, v2

    goto :goto_27

    .line 1000
    :cond_3b
    const-string/jumbo v0, "com.google.android.gms.auth.api.accountactivationstate.internal.IAccountActivationStateCallbacks"

    invoke-interface {v5, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_4c

    instance-of v2, v0, Lcom/google/android/gms/internal/zzmx;

    if-eqz v2, :cond_4c

    check-cast v0, Lcom/google/android/gms/internal/zzmx;

    move-object v2, v0

    goto :goto_31

    :cond_4c
    new-instance v2, Lcom/google/android/gms/internal/zzmx$zza$zza;

    invoke-direct {v2, v5}, Lcom/google/android/gms/internal/zzmx$zza$zza;-><init>(Landroid/os/IBinder;)V

    goto :goto_31

    .line 0
    :sswitch_data_52
    .sparse-switch
        0x1 -> :sswitch_12
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
