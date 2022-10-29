.class public abstract Lcom/google/android/gms/internal/zznb$zza;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/gms/internal/zznb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zznb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zznb$zza$zza;
    }
.end annotation


# direct methods
.method public static zzcg(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zznb;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    const-string/jumbo v0, "com.google.android.gms.auth.api.internal.IAuthCallbacks"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/google/android/gms/internal/zznb;

    if-eqz v1, :cond_14

    check-cast v0, Lcom/google/android/gms/internal/zznb;

    goto :goto_3

    :cond_14
    new-instance v0, Lcom/google/android/gms/internal/zznb$zza$zza;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zznb$zza$zza;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_42

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_8
    return v0

    :sswitch_9
    const-string/jumbo v0, "com.google.android.gms.auth.api.internal.IAuthCallbacks"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v1

    goto :goto_8

    :sswitch_11
    const-string/jumbo v0, "com.google.android.gms.auth.api.internal.IAuthCallbacks"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2d

    sget-object v0, Lcom/google/android/gms/auth/api/proxy/ProxyResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/api/proxy/ProxyResponse;

    :goto_25
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zznb$zza;->zza(Lcom/google/android/gms/auth/api/proxy/ProxyResponse;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    goto :goto_8

    :cond_2d
    const/4 v0, 0x0

    goto :goto_25

    :sswitch_2f
    const-string/jumbo v0, "com.google.android.gms.auth.api.internal.IAuthCallbacks"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zznb$zza;->zzfn(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    goto :goto_8

    nop

    :sswitch_data_42
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_2f
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
