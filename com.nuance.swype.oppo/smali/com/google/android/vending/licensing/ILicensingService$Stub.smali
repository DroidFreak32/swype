.class public abstract Lcom/google/android/vending/licensing/ILicensingService$Stub;
.super Landroid/os/Binder;
.source "ILicensingService.java"

# interfaces
.implements Lcom/google/android/vending/licensing/ILicensingService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/licensing/ILicensingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/vending/licensing/ILicensingService$Stub$Proxy;
    }
.end annotation


# direct methods
.method public static asInterface(Landroid/os/IBinder;)Lcom/google/android/vending/licensing/ILicensingService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 29
    if-nez p0, :cond_0

    .line 30
    const/4 v0, 0x0

    .line 36
    :goto_0
    return-object v0

    .line 32
    :cond_0
    const-string v1, "com.android.vending.licensing.ILicensingService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 33
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/google/android/vending/licensing/ILicensingService;

    if-eqz v1, :cond_1

    .line 34
    check-cast v0, Lcom/google/android/vending/licensing/ILicensingService;

    goto :goto_0

    .line 36
    :cond_1
    new-instance v0, Lcom/google/android/vending/licensing/ILicensingService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/google/android/vending/licensing/ILicensingService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 8
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 44
    sparse-switch p1, :sswitch_data_0

    .line 64
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 48
    :sswitch_0
    const-string v4, "com.android.vending.licensing.ILicensingService"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v4, v5

    .line 49
    goto :goto_0

    .line 53
    :sswitch_1
    const-string v4, "com.android.vending.licensing.ILicensingService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 57
    .local v0, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 59
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    if-nez v6, :cond_0

    const/4 v3, 0x0

    .line 60
    .local v3, "_arg2":Lcom/google/android/vending/licensing/ILicenseResultListener;
    :goto_1
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/android/vending/licensing/ILicensingService$Stub;->checkLicense(JLjava/lang/String;Lcom/google/android/vending/licensing/ILicenseResultListener;)V

    move v4, v5

    .line 61
    goto :goto_0

    .line 59
    .end local v3    # "_arg2":Lcom/google/android/vending/licensing/ILicenseResultListener;
    :cond_0
    const-string v4, "com.android.vending.licensing.ILicenseResultListener"

    invoke-interface {v6, v4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v4

    if-eqz v4, :cond_1

    instance-of v7, v4, Lcom/google/android/vending/licensing/ILicenseResultListener;

    if-eqz v7, :cond_1

    check-cast v4, Lcom/google/android/vending/licensing/ILicenseResultListener;

    move-object v3, v4

    goto :goto_1

    :cond_1
    new-instance v3, Lcom/google/android/vending/licensing/ILicenseResultListener$Stub$Proxy;

    invoke-direct {v3, v6}, Lcom/google/android/vending/licensing/ILicenseResultListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_1

    .line 44
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
