.class public final Lcom/nuance/swypeconnect/ac/ACAccountService;
.super Lcom/nuance/swypeconnect/ac/ACService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swypeconnect/ac/ACAccountService$1;,
        Lcom/nuance/swypeconnect/ac/ACAccountService$ACAccountException;,
        Lcom/nuance/swypeconnect/ac/ACAccountService$CallbackWrapper;,
        Lcom/nuance/swypeconnect/ac/ACAccountService$ACAccountCallback;
    }
.end annotation


# static fields
.field public static final ACCOUNT_TYPE_EMAIL:I = 0x1

.field public static final ACCOUNT_TYPE_GMAIL_AUTH:I = 0x2

.field public static final CONNECTION_STATUS_REFRESH_DELAYED:I = 0xc

.field public static final CONNECTION_STATUS_STALLED:I = 0x2

.field public static final STATUS_DELETED_ACCOUNT:I = 0x100

.field public static final STATUS_DEVICE_UNLINKED:I = 0x400

.field public static final STATUS_INVALID_ACCOUNT:I = 0x200

.field public static final STATUS_INVALID_VERIFICATION_CODE:I = 0x300

.field public static final STATUS_REQUEST_IGNORED:I = 0x500


# instance fields
.field private accountService:Lcom/nuance/connect/api/AccountService;

.field private final callbacks:Lcom/nuance/connect/util/ConcurrentCallbackSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nuance/connect/util/ConcurrentCallbackSet",
            "<",
            "Lcom/nuance/swypeconnect/ac/ACAccountService$ACAccountCallback;",
            ">;"
        }
    .end annotation
.end field

.field private customerLog:Lcom/nuance/connect/util/Logger$Log;

.field private oemLog:Lcom/nuance/connect/util/Logger$Log;

.field private serviceCallback:Lcom/nuance/swypeconnect/ac/ACAccountService$CallbackWrapper;


# direct methods
.method constructor <init>(Lcom/nuance/connect/api/AccountService;)V
    .registers 3

    invoke-direct {p0}, Lcom/nuance/swypeconnect/ac/ACService;-><init>()V

    new-instance v0, Lcom/nuance/connect/util/ConcurrentCallbackSet;

    invoke-direct {v0}, Lcom/nuance/connect/util/ConcurrentCallbackSet;-><init>()V

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACAccountService;->callbacks:Lcom/nuance/connect/util/ConcurrentCallbackSet;

    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->OEM:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-static {v0}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACAccountService;->oemLog:Lcom/nuance/connect/util/Logger$Log;

    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->CUSTOMER:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-static {v0}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACAccountService;->customerLog:Lcom/nuance/connect/util/Logger$Log;

    iput-object p1, p0, Lcom/nuance/swypeconnect/ac/ACAccountService;->accountService:Lcom/nuance/connect/api/AccountService;

    return-void
.end method


# virtual methods
.method public final createAccount(ILjava/lang/String;Lcom/nuance/swypeconnect/ac/ACDevice$ACDeviceType;Ljava/lang/String;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/swypeconnect/ac/ACAccountService$ACAccountException;
        }
    .end annotation

    const/16 v3, 0xc8

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACAccountService;->customerLog:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "Creating Account"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACAccountService;->oemLog:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "Account identifier: "

    const-string/jumbo v2, " device name: "

    invoke-interface {v0, v1, p2, v2, p4}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACAccountService;->accountService:Lcom/nuance/connect/api/AccountService;

    invoke-interface {v0}, Lcom/nuance/connect/api/AccountService;->getAccount()Lcom/nuance/connect/internal/common/ConnectAccount;

    move-result-object v0

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACAccountService;->accountService:Lcom/nuance/connect/api/AccountService;

    invoke-interface {v0}, Lcom/nuance/connect/api/AccountService;->isAccountRegisteredAndVerified()Z

    move-result v0

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACAccountService;->oemLog:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "Trying to create an account when one already exists."

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACAccountService$ACAccountException;

    const/16 v1, 0xcc

    const-string/jumbo v2, "Account creation exception.  Account has already been created."

    invoke-direct {v0, v1, v2}, Lcom/nuance/swypeconnect/ac/ACAccountService$ACAccountException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_38
    if-nez p3, :cond_4d

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACAccountService;->oemLog:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "Must supply a valid Device Type"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACAccountService$ACAccountException;

    const/16 v1, 0xcf

    const-string/jumbo v2, "Account creation exception.  Unspecified device type"

    invoke-direct {v0, v1, v2}, Lcom/nuance/swypeconnect/ac/ACAccountService$ACAccountException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_4d
    if-eqz p4, :cond_55

    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_68

    :cond_55
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACAccountService;->oemLog:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "Must supply a valid Device Name"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACAccountService$ACAccountException;

    const/16 v1, 0xce

    const-string/jumbo v2, "Account creation exception.  Unspecified device name."

    invoke-direct {v0, v1, v2}, Lcom/nuance/swypeconnect/ac/ACAccountService$ACAccountException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_68
    const/4 v0, 0x1

    if-ne p1, v0, :cond_99

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACAccountService;->accountService:Lcom/nuance/connect/api/AccountService;

    invoke-interface {v0, p2}, Lcom/nuance/connect/api/AccountService;->isValidEmail(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_84

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACAccountService;->oemLog:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "Account creation exception.  Invalid email format"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACAccountService$ACAccountException;

    const-string/jumbo v1, "The email address supplied is invalid"

    invoke-direct {v0, v3, v1}, Lcom/nuance/swypeconnect/ac/ACAccountService$ACAccountException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_84
    invoke-virtual {p3}, Lcom/nuance/swypeconnect/ac/ACDevice$ACDeviceType;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice$DeviceType;->valueOf(Ljava/lang/String;)Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice$DeviceType;

    invoke-virtual {p3}, Lcom/nuance/swypeconnect/ac/ACDevice$ACDeviceType;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice$DeviceType;->valueOf(Ljava/lang/String;)Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice$DeviceType;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACAccountService;->accountService:Lcom/nuance/connect/api/AccountService;

    invoke-interface {v1, p1, p2, v0, p4}, Lcom/nuance/connect/api/AccountService;->registerAccount(ILjava/lang/String;Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice$DeviceType;Ljava/lang/String;)V

    :goto_98
    return-void

    :cond_99
    const/4 v0, 0x2

    if-ne p1, v0, :cond_ca

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACAccountService;->accountService:Lcom/nuance/connect/api/AccountService;

    invoke-interface {v0, p2}, Lcom/nuance/connect/api/AccountService;->isValidEmail(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b5

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACAccountService;->oemLog:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "Account creation exception.  Invalid email format"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACAccountService$ACAccountException;

    const-string/jumbo v1, "The gmail address supplied is invalid"

    invoke-direct {v0, v3, v1}, Lcom/nuance/swypeconnect/ac/ACAccountService$ACAccountException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_b5
    invoke-virtual {p3}, Lcom/nuance/swypeconnect/ac/ACDevice$ACDeviceType;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice$DeviceType;->valueOf(Ljava/lang/String;)Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice$DeviceType;

    invoke-virtual {p3}, Lcom/nuance/swypeconnect/ac/ACDevice$ACDeviceType;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice$DeviceType;->valueOf(Ljava/lang/String;)Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice$DeviceType;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACAccountService;->accountService:Lcom/nuance/connect/api/AccountService;

    invoke-interface {v1, p1, p2, v0, p4}, Lcom/nuance/connect/api/AccountService;->registerAccount(ILjava/lang/String;Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice$DeviceType;Ljava/lang/String;)V

    goto :goto_98

    :cond_ca
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACAccountService;->oemLog:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "unsupported type exception"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACAccountService$ACAccountException;

    const/16 v1, 0xca

    const-string/jumbo v2, "Account creation exception.  Unsupported account type"

    invoke-direct {v0, v1, v2}, Lcom/nuance/swypeconnect/ac/ACAccountService$ACAccountException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public final deleteAccount(Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/swypeconnect/ac/ACAccountService$ACAccountException;
        }
    .end annotation

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACAccountService;->customerLog:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "Deleting account."

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACAccountService;->accountService:Lcom/nuance/connect/api/AccountService;

    invoke-interface {v0}, Lcom/nuance/connect/api/AccountService;->isAccountActive()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACAccountService;->accountService:Lcom/nuance/connect/api/AccountService;

    invoke-interface {v0, p1}, Lcom/nuance/connect/api/AccountService;->deleteAccount(Z)V

    return-void

    :cond_16
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACAccountService;->oemLog:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "Account Exception deleting account.  No account found."

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACAccountService$ACAccountException;

    const/16 v1, 0xc9

    const-string/jumbo v2, "Account not found."

    invoke-direct {v0, v1, v2}, Lcom/nuance/swypeconnect/ac/ACAccountService$ACAccountException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public final getAccount()Lcom/nuance/swypeconnect/ac/ACAccount;
    .registers 3

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACAccountService;->accountService:Lcom/nuance/connect/api/AccountService;

    invoke-interface {v0}, Lcom/nuance/connect/api/AccountService;->getAccount()Lcom/nuance/connect/internal/common/ConnectAccount;

    move-result-object v1

    if-eqz v1, :cond_e

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACAccount;

    invoke-direct {v0, v1}, Lcom/nuance/swypeconnect/ac/ACAccount;-><init>(Lcom/nuance/connect/internal/common/ConnectAccount;)V

    :goto_d
    return-object v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public final getDevices()[Lcom/nuance/swypeconnect/ac/ACDevice;
    .registers 3

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACAccountService;->accountService:Lcom/nuance/connect/api/AccountService;

    invoke-interface {v0}, Lcom/nuance/connect/api/AccountService;->getAccount()Lcom/nuance/connect/internal/common/ConnectAccount;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACAccountService;->accountService:Lcom/nuance/connect/api/AccountService;

    invoke-interface {v1}, Lcom/nuance/connect/api/AccountService;->isAccountRegisteredAndVerified()Z

    move-result v1

    if-eqz v1, :cond_1a

    new-instance v1, Lcom/nuance/swypeconnect/ac/ACAccount;

    invoke-direct {v1, v0}, Lcom/nuance/swypeconnect/ac/ACAccount;-><init>(Lcom/nuance/connect/internal/common/ConnectAccount;)V

    invoke-virtual {v1}, Lcom/nuance/swypeconnect/ac/ACAccount;->getDevices()[Lcom/nuance/swypeconnect/ac/ACDevice;

    move-result-object v0

    :goto_19
    return-object v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method final getName()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "ACCOUNT"

    return-object v0
.end method

.method public final refreshDeviceList()V
    .registers 2

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACAccountService;->accountService:Lcom/nuance/connect/api/AccountService;

    invoke-interface {v0}, Lcom/nuance/connect/api/AccountService;->refreshDevices()V

    return-void
.end method

.method public final registerCallback(Lcom/nuance/swypeconnect/ac/ACAccountService$ACAccountCallback;)V
    .registers 6

    if-eqz p1, :cond_29

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACAccountService;->callbacks:Lcom/nuance/connect/util/ConcurrentCallbackSet;

    monitor-enter v1

    :try_start_5
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACAccountService;->callbacks:Lcom/nuance/connect/util/ConcurrentCallbackSet;

    invoke-virtual {v0, p1}, Lcom/nuance/connect/util/ConcurrentCallbackSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACAccountService;->serviceCallback:Lcom/nuance/swypeconnect/ac/ACAccountService$CallbackWrapper;

    if-nez v0, :cond_2a

    new-instance v2, Lcom/nuance/swypeconnect/ac/ACAccountService$CallbackWrapper;

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACAccountService;->callbacks:Lcom/nuance/connect/util/ConcurrentCallbackSet;

    const/4 v3, 0x0

    new-array v3, v3, [Lcom/nuance/swypeconnect/ac/ACAccountService$ACAccountCallback;

    invoke-virtual {v0, v3}, Lcom/nuance/connect/util/ConcurrentCallbackSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/swypeconnect/ac/ACAccountService$ACAccountCallback;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/nuance/swypeconnect/ac/ACAccountService$CallbackWrapper;-><init>([Lcom/nuance/swypeconnect/ac/ACAccountService$ACAccountCallback;Lcom/nuance/swypeconnect/ac/ACAccountService$1;)V

    iput-object v2, p0, Lcom/nuance/swypeconnect/ac/ACAccountService;->serviceCallback:Lcom/nuance/swypeconnect/ac/ACAccountService$CallbackWrapper;

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACAccountService;->accountService:Lcom/nuance/connect/api/AccountService;

    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACAccountService;->serviceCallback:Lcom/nuance/swypeconnect/ac/ACAccountService$CallbackWrapper;

    invoke-interface {v0, v2}, Lcom/nuance/connect/api/AccountService;->registerCallback(Lcom/nuance/connect/api/AccountService$AccountCallback;)V

    :goto_28
    monitor-exit v1

    :cond_29
    return-void

    :cond_2a
    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACAccountService;->serviceCallback:Lcom/nuance/swypeconnect/ac/ACAccountService$CallbackWrapper;

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACAccountService;->callbacks:Lcom/nuance/connect/util/ConcurrentCallbackSet;

    const/4 v3, 0x0

    new-array v3, v3, [Lcom/nuance/swypeconnect/ac/ACAccountService$ACAccountCallback;

    invoke-virtual {v0, v3}, Lcom/nuance/connect/util/ConcurrentCallbackSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/swypeconnect/ac/ACAccountService$ACAccountCallback;

    invoke-virtual {v2, v0}, Lcom/nuance/swypeconnect/ac/ACAccountService$CallbackWrapper;->updateCallbacks([Lcom/nuance/swypeconnect/ac/ACAccountService$ACAccountCallback;)V

    goto :goto_28

    :catchall_3b
    move-exception v0

    monitor-exit v1
    :try_end_3d
    .catchall {:try_start_5 .. :try_end_3d} :catchall_3b

    throw v0
.end method

.method public final removeDeviceFromAccount(Lcom/nuance/swypeconnect/ac/ACDevice;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/swypeconnect/ac/ACAccountService$ACAccountException;
        }
    .end annotation

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACAccountService;->customerLog:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "Removing device."

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACAccountService;->accountService:Lcom/nuance/connect/api/AccountService;

    invoke-interface {v0}, Lcom/nuance/connect/api/AccountService;->getAccount()Lcom/nuance/connect/internal/common/ConnectAccount;

    move-result-object v0

    if-nez v0, :cond_23

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACAccountService;->oemLog:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "Account Exception removing device.  No account found."

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACAccountService$ACAccountException;

    const/16 v1, 0xc9

    const-string/jumbo v2, "Account not found."

    invoke-direct {v0, v1, v2}, Lcom/nuance/swypeconnect/ac/ACAccountService$ACAccountException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_23
    invoke-virtual {v0}, Lcom/nuance/connect/internal/common/ConnectAccount;->getDevices()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Lcom/nuance/swypeconnect/ac/ACDevice;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_44

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACAccountService;->oemLog:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "Account Exception removing device.  No matching device found."

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACAccountService$ACAccountException;

    const/16 v1, 0xcb

    const-string/jumbo v2, "Device not found, perhaps it was already deleted."

    invoke-direct {v0, v1, v2}, Lcom/nuance/swypeconnect/ac/ACAccountService$ACAccountException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_44
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACAccountService;->accountService:Lcom/nuance/connect/api/AccountService;

    invoke-virtual {p1}, Lcom/nuance/swypeconnect/ac/ACDevice;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/api/AccountService;->unlinkDevice(Ljava/lang/String;)V

    return-void
.end method

.method final requiresDocument(I)Z
    .registers 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public final reverify()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/swypeconnect/ac/ACAccountService$ACAccountException;
        }
    .end annotation

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACAccountService;->oemLog:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "reverify"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACAccountService;->accountService:Lcom/nuance/connect/api/AccountService;

    invoke-interface {v0}, Lcom/nuance/connect/api/AccountService;->getAccount()Lcom/nuance/connect/internal/common/ConnectAccount;

    move-result-object v0

    if-eqz v0, :cond_28

    invoke-virtual {v0}, Lcom/nuance/connect/internal/common/ConnectAccount;->getAccountState()Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;

    move-result-object v1

    sget-object v2, Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;->UNREGISTERED:Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;

    invoke-virtual {v1, v2}, Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_28

    invoke-virtual {v0}, Lcom/nuance/connect/internal/common/ConnectAccount;->getAccountState()Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;

    move-result-object v1

    sget-object v2, Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;->PENDING_DELETE:Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;

    invoke-virtual {v1, v2}, Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    :cond_28
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACAccountService;->oemLog:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "Account Exception reverifying.  No account found."

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACAccountService$ACAccountException;

    const/16 v1, 0xc9

    const-string/jumbo v2, "Account not found."

    invoke-direct {v0, v1, v2}, Lcom/nuance/swypeconnect/ac/ACAccountService$ACAccountException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_3b
    invoke-virtual {v0}, Lcom/nuance/connect/internal/common/ConnectAccount;->getAccountState()Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;->VERIFIED:Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5a

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACAccountService;->oemLog:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "Account Exception reverifying.  Account is already linked."

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACAccountService$ACAccountException;

    const/16 v1, 0xcd

    const-string/jumbo v2, "Reverify is not allowed on an account that has been linked."

    invoke-direct {v0, v1, v2}, Lcom/nuance/swypeconnect/ac/ACAccountService$ACAccountException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_5a
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACAccountService;->accountService:Lcom/nuance/connect/api/AccountService;

    invoke-interface {v0}, Lcom/nuance/connect/api/AccountService;->sendReverify()V

    return-void
.end method

.method final shutdown()V
    .registers 1

    invoke-virtual {p0}, Lcom/nuance/swypeconnect/ac/ACAccountService;->unregisterCallbacks()V

    return-void
.end method

.method final start()V
    .registers 1

    return-void
.end method

.method public final unregisterCallback(Lcom/nuance/swypeconnect/ac/ACAccountService$ACAccountCallback;)V
    .registers 6

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACAccountService;->callbacks:Lcom/nuance/connect/util/ConcurrentCallbackSet;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACAccountService;->callbacks:Lcom/nuance/connect/util/ConcurrentCallbackSet;

    invoke-virtual {v0, p1}, Lcom/nuance/connect/util/ConcurrentCallbackSet;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACAccountService;->serviceCallback:Lcom/nuance/swypeconnect/ac/ACAccountService$CallbackWrapper;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACAccountService;->callbacks:Lcom/nuance/connect/util/ConcurrentCallbackSet;

    invoke-virtual {v0}, Lcom/nuance/connect/util/ConcurrentCallbackSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACAccountService;->accountService:Lcom/nuance/connect/api/AccountService;

    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACAccountService;->serviceCallback:Lcom/nuance/swypeconnect/ac/ACAccountService$CallbackWrapper;

    invoke-interface {v0, v2}, Lcom/nuance/connect/api/AccountService;->unregisterCallback(Lcom/nuance/connect/api/AccountService$AccountCallback;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACAccountService;->serviceCallback:Lcom/nuance/swypeconnect/ac/ACAccountService$CallbackWrapper;

    :cond_1e
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACAccountService;->serviceCallback:Lcom/nuance/swypeconnect/ac/ACAccountService$CallbackWrapper;

    if-eqz v0, :cond_32

    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACAccountService;->serviceCallback:Lcom/nuance/swypeconnect/ac/ACAccountService$CallbackWrapper;

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACAccountService;->callbacks:Lcom/nuance/connect/util/ConcurrentCallbackSet;

    const/4 v3, 0x0

    new-array v3, v3, [Lcom/nuance/swypeconnect/ac/ACAccountService$ACAccountCallback;

    invoke-virtual {v0, v3}, Lcom/nuance/connect/util/ConcurrentCallbackSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/swypeconnect/ac/ACAccountService$ACAccountCallback;

    invoke-virtual {v2, v0}, Lcom/nuance/swypeconnect/ac/ACAccountService$CallbackWrapper;->updateCallbacks([Lcom/nuance/swypeconnect/ac/ACAccountService$ACAccountCallback;)V

    :cond_32
    monitor-exit v1

    return-void

    :catchall_34
    move-exception v0

    monitor-exit v1
    :try_end_36
    .catchall {:try_start_3 .. :try_end_36} :catchall_34

    throw v0
.end method

.method public final unregisterCallbacks()V
    .registers 3

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACAccountService;->callbacks:Lcom/nuance/connect/util/ConcurrentCallbackSet;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACAccountService;->accountService:Lcom/nuance/connect/api/AccountService;

    invoke-interface {v0}, Lcom/nuance/connect/api/AccountService;->unregisterCallbacks()V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACAccountService;->callbacks:Lcom/nuance/connect/util/ConcurrentCallbackSet;

    invoke-virtual {v0}, Lcom/nuance/connect/util/ConcurrentCallbackSet;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACAccountService;->serviceCallback:Lcom/nuance/swypeconnect/ac/ACAccountService$CallbackWrapper;

    monitor-exit v1

    return-void

    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public final verifyAccount(Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/swypeconnect/ac/ACAccountService$ACAccountException;
        }
    .end annotation

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACAccountService;->accountService:Lcom/nuance/connect/api/AccountService;

    invoke-interface {v0}, Lcom/nuance/connect/api/AccountService;->getAccount()Lcom/nuance/connect/internal/common/ConnectAccount;

    move-result-object v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACAccountService;->oemLog:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "No account found to verify."

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACAccountService$ACAccountException;

    const/16 v1, 0xc9

    const-string/jumbo v2, "Account verification exception.  Account not found."

    invoke-direct {v0, v1, v2}, Lcom/nuance/swypeconnect/ac/ACAccountService$ACAccountException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_1b
    invoke-virtual {v0}, Lcom/nuance/connect/internal/common/ConnectAccount;->getAccountState()Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;

    move-result-object v0

    sget-object v1, Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;->REGISTERED:Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/internal/common/ConnectAccount$AccountState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACAccountService;->oemLog:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "Account verification exception.  Account is already linked."

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACAccountService$ACAccountException;

    const/16 v1, 0xcd

    const-string/jumbo v2, "The account is already verified and the device is linked."

    invoke-direct {v0, v1, v2}, Lcom/nuance/swypeconnect/ac/ACAccountService$ACAccountException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_3a
    if-nez p1, :cond_4f

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACAccountService;->oemLog:Lcom/nuance/connect/util/Logger$Log;

    const-string/jumbo v1, "The verification string is null"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACAccountService$ACAccountException;

    const/16 v1, 0xd0

    const-string/jumbo v2, "The verification code supplied is not valid."

    invoke-direct {v0, v1, v2}, Lcom/nuance/swypeconnect/ac/ACAccountService$ACAccountException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_4f
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACAccountService;->accountService:Lcom/nuance/connect/api/AccountService;

    invoke-interface {v0, p1}, Lcom/nuance/connect/api/AccountService;->validateAccount(Ljava/lang/String;)V

    return-void
.end method
