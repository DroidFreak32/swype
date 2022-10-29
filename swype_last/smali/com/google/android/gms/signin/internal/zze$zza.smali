.class public abstract Lcom/google/android/gms/signin/internal/zze$zza;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/gms/signin/internal/zze;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/signin/internal/zze;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/signin/internal/zze$zza$zza;
    }
.end annotation


# direct methods
.method public static zzkv(Landroid/os/IBinder;)Lcom/google/android/gms/signin/internal/zze;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    const-string/jumbo v0, "com.google.android.gms.signin.internal.ISignInService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/google/android/gms/signin/internal/zze;

    if-eqz v1, :cond_14

    check-cast v0, Lcom/google/android/gms/signin/internal/zze;

    goto :goto_3

    :cond_14
    new-instance v0, Lcom/google/android/gms/signin/internal/zze$zza$zza;

    invoke-direct {v0, p0}, Lcom/google/android/gms/signin/internal/zze$zza$zza;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 0
    sparse-switch p1, :sswitch_data_162

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_a
    return v2

    :sswitch_b
    const-string/jumbo v0, "com.google.android.gms.signin.internal.ISignInService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_a

    :sswitch_12
    const-string/jumbo v0, "com.google.android.gms.signin.internal.ISignInService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_35

    sget-object v0, Lcom/google/android/gms/common/internal/AuthAccountRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/internal/AuthAccountRequest;

    :goto_26
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/signin/internal/zzd$zza;->zzku(Landroid/os/IBinder;)Lcom/google/android/gms/signin/internal/zzd;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/signin/internal/zze$zza;->zza(Lcom/google/android/gms/common/internal/AuthAccountRequest;Lcom/google/android/gms/signin/internal/zzd;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_a

    :cond_35
    move-object v0, v1

    goto :goto_26

    :sswitch_37
    const-string/jumbo v0, "com.google.android.gms.signin.internal.ISignInService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_52

    sget-object v0, Lcom/google/android/gms/signin/internal/CheckServerAuthResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/signin/internal/CheckServerAuthResult;

    :goto_4b
    invoke-virtual {p0, v0}, Lcom/google/android/gms/signin/internal/zze$zza;->zza(Lcom/google/android/gms/signin/internal/CheckServerAuthResult;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_a

    :cond_52
    move-object v0, v1

    goto :goto_4b

    :sswitch_54
    const-string/jumbo v1, "com.google.android.gms.signin.internal.ISignInService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_61

    move v0, v2

    :cond_61
    invoke-virtual {p0, v0}, Lcom/google/android/gms/signin/internal/zze$zza;->zzcf(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_a

    :sswitch_68
    const-string/jumbo v0, "com.google.android.gms.signin.internal.ISignInService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_8a

    sget-object v0, Lcom/google/android/gms/common/internal/ResolveAccountRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/internal/ResolveAccountRequest;

    move-object v3, v0

    :goto_7d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 1000
    if-nez v4, :cond_8c

    .line 0
    :goto_83
    invoke-virtual {p0, v3, v1}, Lcom/google/android/gms/signin/internal/zze$zza;->zza(Lcom/google/android/gms/common/internal/ResolveAccountRequest;Lcom/google/android/gms/common/internal/zzw;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_a

    :cond_8a
    move-object v3, v1

    goto :goto_7d

    .line 1000
    :cond_8c
    const-string/jumbo v0, "com.google.android.gms.common.internal.IResolveAccountCallbacks"

    invoke-interface {v4, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_9d

    instance-of v1, v0, Lcom/google/android/gms/common/internal/zzw;

    if-eqz v1, :cond_9d

    check-cast v0, Lcom/google/android/gms/common/internal/zzw;

    move-object v1, v0

    goto :goto_83

    :cond_9d
    new-instance v1, Lcom/google/android/gms/common/internal/zzw$zza$zza;

    invoke-direct {v1, v4}, Lcom/google/android/gms/common/internal/zzw$zza$zza;-><init>(Landroid/os/IBinder;)V

    goto :goto_83

    .line 0
    :sswitch_a3
    const-string/jumbo v0, "com.google.android.gms.signin.internal.ISignInService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/signin/internal/zze$zza;->zzza(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :sswitch_b5
    const-string/jumbo v0, "com.google.android.gms.signin.internal.ISignInService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_dd

    sget-object v0, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    :goto_cd
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/signin/internal/zzd$zza;->zzku(Landroid/os/IBinder;)Lcom/google/android/gms/signin/internal/zzd;

    move-result-object v1

    invoke-virtual {p0, v3, v0, v1}, Lcom/google/android/gms/signin/internal/zze$zza;->zza(ILandroid/accounts/Account;Lcom/google/android/gms/signin/internal/zzd;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :cond_dd
    move-object v0, v1

    goto :goto_cd

    :sswitch_df
    const-string/jumbo v1, "com.google.android.gms.signin.internal.ISignInService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzq$zza;->zzdp(Landroid/os/IBinder;)Lcom/google/android/gms/common/internal/zzq;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_f8

    move v0, v2

    :cond_f8
    invoke-virtual {p0, v1, v3, v0}, Lcom/google/android/gms/signin/internal/zze$zza;->zza(Lcom/google/android/gms/common/internal/zzq;IZ)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :sswitch_100
    const-string/jumbo v0, "com.google.android.gms.signin.internal.ISignInService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_124

    sget-object v0, Lcom/google/android/gms/signin/internal/RecordConsentRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/signin/internal/RecordConsentRequest;

    :goto_114
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/signin/internal/zzd$zza;->zzku(Landroid/os/IBinder;)Lcom/google/android/gms/signin/internal/zzd;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/signin/internal/zze$zza;->zza(Lcom/google/android/gms/signin/internal/RecordConsentRequest;Lcom/google/android/gms/signin/internal/zzd;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :cond_124
    move-object v0, v1

    goto :goto_114

    :sswitch_126
    const-string/jumbo v0, "com.google.android.gms.signin.internal.ISignInService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/signin/internal/zzd$zza;->zzku(Landroid/os/IBinder;)Lcom/google/android/gms/signin/internal/zzd;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/signin/internal/zze$zza;->zzb(Lcom/google/android/gms/signin/internal/zzd;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :sswitch_13c
    const-string/jumbo v0, "com.google.android.gms.signin.internal.ISignInService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_160

    sget-object v0, Lcom/google/android/gms/signin/internal/SignInRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/signin/internal/SignInRequest;

    :goto_150
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/signin/internal/zzd$zza;->zzku(Landroid/os/IBinder;)Lcom/google/android/gms/signin/internal/zzd;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/signin/internal/zze$zza;->zza(Lcom/google/android/gms/signin/internal/SignInRequest;Lcom/google/android/gms/signin/internal/zzd;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :cond_160
    move-object v0, v1

    goto :goto_150

    :sswitch_data_162
    .sparse-switch
        0x2 -> :sswitch_12
        0x3 -> :sswitch_37
        0x4 -> :sswitch_54
        0x5 -> :sswitch_68
        0x7 -> :sswitch_a3
        0x8 -> :sswitch_b5
        0x9 -> :sswitch_df
        0xa -> :sswitch_100
        0xb -> :sswitch_126
        0xc -> :sswitch_13c
        0x5f4e5446 -> :sswitch_b
    .end sparse-switch
.end method
