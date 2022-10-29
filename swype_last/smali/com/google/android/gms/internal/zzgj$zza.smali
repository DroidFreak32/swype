.class public abstract Lcom/google/android/gms/internal/zzgj$zza;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/gms/internal/zzgj;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzgj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzgj$zza$zza;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.google.android.gms.ads.internal.mediation.client.IAdapterCreator"

    invoke-virtual {p0, p0, v0}, Lcom/google/android/gms/internal/zzgj$zza;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static zzaj(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzgj;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    const-string/jumbo v0, "com.google.android.gms.ads.internal.mediation.client.IAdapterCreator"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/google/android/gms/internal/zzgj;

    if-eqz v1, :cond_14

    check-cast v0, Lcom/google/android/gms/internal/zzgj;

    goto :goto_3

    :cond_14
    new-instance v0, Lcom/google/android/gms/internal/zzgj$zza$zza;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzgj$zza$zza;-><init>(Landroid/os/IBinder;)V

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

    sparse-switch p1, :sswitch_data_48

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_8
    return v1

    :sswitch_9
    const-string/jumbo v0, "com.google.android.gms.ads.internal.mediation.client.IAdapterCreator"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    :sswitch_10
    const-string/jumbo v0, "com.google.android.gms.ads.internal.mediation.client.IAdapterCreator"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzgj$zza;->zzbm(Ljava/lang/String;)Lcom/google/android/gms/internal/zzgk;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_2b

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzgk;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_27
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto :goto_8

    :cond_2b
    const/4 v0, 0x0

    goto :goto_27

    :sswitch_2d
    const-string/jumbo v0, "com.google.android.gms.ads.internal.mediation.client.IAdapterCreator"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzgj$zza;->zzbn(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_45

    move v0, v1

    :goto_41
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    :cond_45
    const/4 v0, 0x0

    goto :goto_41

    nop

    :sswitch_data_48
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_2d
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
