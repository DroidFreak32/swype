.class public interface abstract Lcom/nuance/connect/api/AccountService;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/connect/api/AccountService$AccountCallback;
    }
.end annotation


# static fields
.field public static final CONNECTION_STATUS_REFRESH_DELAYED:I = 0xc

.field public static final CONNECTION_STATUS_STALLED:I = 0x2

.field public static final STATUS_DELETED_ACCOUNT:I = 0x100

.field public static final STATUS_DEVICE_UNLINKED:I = 0x400

.field public static final STATUS_INVALID_ACCOUNT:I = 0x200

.field public static final STATUS_INVALID_VERIFICATION_CODE:I = 0x300

.field public static final STATUS_REQUEST_IGNORED:I = 0x500


# virtual methods
.method public abstract deleteAccount(Z)V
.end method

.method public abstract getAccount()Lcom/nuance/connect/internal/common/ConnectAccount;
.end method

.method public abstract getDeviceNameFromId(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract isAccountActive()Z
.end method

.method public abstract isAccountKnownAccount(ILjava/lang/String;)Z
.end method

.method public abstract isAccountRegistered()Z
.end method

.method public abstract isAccountRegisteredAndVerified()Z
.end method

.method public abstract isValidEmail(Ljava/lang/String;)Z
.end method

.method public abstract refreshDevices()V
.end method

.method public abstract registerAccount(ILjava/lang/String;Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice$DeviceType;Ljava/lang/String;)V
.end method

.method public abstract registerCallback(Lcom/nuance/connect/api/AccountService$AccountCallback;)V
.end method

.method public abstract sendReverify()V
.end method

.method public abstract unlinkDevice(Ljava/lang/String;)V
.end method

.method public abstract unregisterCallback(Lcom/nuance/connect/api/AccountService$AccountCallback;)V
.end method

.method public abstract unregisterCallbacks()V
.end method

.method public abstract validateAccount(Ljava/lang/String;)V
.end method
