.class final Lcom/nuance/swypeconnect/ac/ACAccountService$CallbackWrapper;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/connect/api/AccountService$AccountCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swypeconnect/ac/ACAccountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CallbackWrapper"
.end annotation


# instance fields
.field callbacksArray:[Lcom/nuance/swypeconnect/ac/ACAccountService$ACAccountCallback;


# direct methods
.method private constructor <init>([Lcom/nuance/swypeconnect/ac/ACAccountService$ACAccountCallback;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/nuance/swypeconnect/ac/ACAccountService$ACAccountCallback;

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACAccountService$CallbackWrapper;->callbacksArray:[Lcom/nuance/swypeconnect/ac/ACAccountService$ACAccountCallback;

    invoke-virtual {p0, p1}, Lcom/nuance/swypeconnect/ac/ACAccountService$CallbackWrapper;->updateCallbacks([Lcom/nuance/swypeconnect/ac/ACAccountService$ACAccountCallback;)V

    return-void
.end method

.method synthetic constructor <init>([Lcom/nuance/swypeconnect/ac/ACAccountService$ACAccountCallback;Lcom/nuance/swypeconnect/ac/ACAccountService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nuance/swypeconnect/ac/ACAccountService$CallbackWrapper;-><init>([Lcom/nuance/swypeconnect/ac/ACAccountService$ACAccountCallback;)V

    return-void
.end method


# virtual methods
.method public final created()V
    .locals 4

    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->CUSTOMER:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-static {v0}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v1, "Account successfully created."

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACAccountService$CallbackWrapper;->callbacksArray:[Lcom/nuance/swypeconnect/ac/ACAccountService$ACAccountCallback;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    invoke-interface {v3}, Lcom/nuance/swypeconnect/ac/ACAccountService$ACAccountCallback;->created()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final devicesUpdated([Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice;)V
    .locals 5

    const/4 v1, 0x0

    array-length v0, p1

    new-array v2, v0, [Lcom/nuance/swypeconnect/ac/ACDevice;

    move v0, v1

    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_0

    new-instance v3, Lcom/nuance/swypeconnect/ac/ACDevice;

    aget-object v4, p1, v0

    invoke-direct {v3, v4}, Lcom/nuance/swypeconnect/ac/ACDevice;-><init>(Lcom/nuance/connect/internal/common/ConnectAccount$AccountDevice;)V

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACAccountService$CallbackWrapper;->callbacksArray:[Lcom/nuance/swypeconnect/ac/ACAccountService$ACAccountCallback;

    array-length v3, v0

    :goto_1
    if-ge v1, v3, :cond_1

    aget-object v4, v0, v1

    invoke-interface {v4, v2}, Lcom/nuance/swypeconnect/ac/ACAccountService$ACAccountCallback;->devicesUpdated([Lcom/nuance/swypeconnect/ac/ACDevice;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final linked()V
    .locals 4

    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->CUSTOMER:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-static {v0}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string/jumbo v1, "Account successfully linked."

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACAccountService$CallbackWrapper;->callbacksArray:[Lcom/nuance/swypeconnect/ac/ACAccountService$ACAccountCallback;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    invoke-interface {v3}, Lcom/nuance/swypeconnect/ac/ACAccountService$ACAccountCallback;->linked()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onError(ILjava/lang/String;)V
    .locals 4

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACAccountService$CallbackWrapper;->callbacksArray:[Lcom/nuance/swypeconnect/ac/ACAccountService$ACAccountCallback;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    invoke-interface {v3, p1, p2}, Lcom/nuance/swypeconnect/ac/ACAccountService$ACAccountCallback;->onError(ILjava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final status(ILjava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    const/16 v1, 0x300

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACAccountService$CallbackWrapper;->callbacksArray:[Lcom/nuance/swypeconnect/ac/ACAccountService$ACAccountCallback;

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    invoke-interface {v3}, Lcom/nuance/swypeconnect/ac/ACAccountService$ACAccountCallback;->verifyFailed()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACAccountService$CallbackWrapper;->callbacksArray:[Lcom/nuance/swypeconnect/ac/ACAccountService$ACAccountCallback;

    array-length v2, v1

    :goto_1
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    invoke-interface {v3, p1, p2}, Lcom/nuance/swypeconnect/ac/ACAccountService$ACAccountCallback;->status(ILjava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method final updateCallbacks([Lcom/nuance/swypeconnect/ac/ACAccountService$ACAccountCallback;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/nuance/swypeconnect/ac/ACAccountService$CallbackWrapper;->callbacksArray:[Lcom/nuance/swypeconnect/ac/ACAccountService$ACAccountCallback;

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/nuance/swypeconnect/ac/ACAccountService$ACAccountCallback;

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACAccountService$CallbackWrapper;->callbacksArray:[Lcom/nuance/swypeconnect/ac/ACAccountService$ACAccountCallback;

    goto :goto_0
.end method
