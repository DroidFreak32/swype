.class public Lcom/nuance/swype/connect/Connect$Accounts;
.super Ljava/lang/Object;
.source "Connect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/connect/Connect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Accounts"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/connect/Connect;


# direct methods
.method public constructor <init>(Lcom/nuance/swype/connect/Connect;)V
    .locals 0
    .param p1, "this$0"    # Lcom/nuance/swype/connect/Connect;

    .prologue
    .line 392
    iput-object p1, p0, Lcom/nuance/swype/connect/Connect$Accounts;->this$0:Lcom/nuance/swype/connect/Connect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkAccountExists()Z
    .locals 5

    .prologue
    .line 509
    invoke-virtual {p0}, Lcom/nuance/swype/connect/Connect$Accounts;->getActiveAccount()Lcom/nuance/swypeconnect/ac/ACAccount;

    move-result-object v2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    .line 510
    .local v0, "exists":Z
    :goto_0
    if-nez v0, :cond_1

    .line 511
    iget-object v2, p0, Lcom/nuance/swype/connect/Connect$Accounts;->this$0:Lcom/nuance/swype/connect/Connect;

    invoke-static {v2}, Lcom/nuance/swype/connect/Connect;->access$300(Lcom/nuance/swype/connect/Connect;)Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "com.nuance.swype.connect.store.FilePreference"

    .line 512
    invoke-static {}, Lcom/nuance/dlm/ACAlphaInput;->acAlphaLegacySecretKey()Ljava/lang/String;

    move-result-object v4

    .line 511
    invoke-static {v2, v3, v4}, Lcom/nuance/connect/store/DataStoreFactory;->getDataStore(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/nuance/connect/store/PersistentDataStore;

    move-result-object v1

    .line 513
    .local v1, "store":Lcom/nuance/connect/store/PersistentDataStore;
    const-string/jumbo v2, "account_ACCOUNT"

    invoke-interface {v1, v2}, Lcom/nuance/connect/store/PersistentDataStore;->exists(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "account_ACTIVE_ACCOUNT"

    invoke-interface {v1, v2}, Lcom/nuance/connect/store/PersistentDataStore;->exists(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 514
    :cond_0
    const/4 v0, 0x1

    .line 517
    .end local v1    # "store":Lcom/nuance/connect/store/PersistentDataStore;
    :cond_1
    return v0

    .line 509
    .end local v0    # "exists":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public createAccount(Ljava/lang/String;ZLjava/lang/String;Z)Z
    .locals 4
    .param p1, "email"    # Ljava/lang/String;
    .param p2, "isTablet"    # Z
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "enableSync"    # Z

    .prologue
    const/4 v0, 0x1

    .line 437
    iget-object v1, p0, Lcom/nuance/swype/connect/Connect$Accounts;->this$0:Lcom/nuance/swype/connect/Connect;

    invoke-static {v1}, Lcom/nuance/swype/connect/Connect;->access$1000(Lcom/nuance/swype/connect/Connect;)Lcom/nuance/swypeconnect/ac/ACAccountService;

    .line 438
    iget-object v1, p0, Lcom/nuance/swype/connect/Connect$Accounts;->this$0:Lcom/nuance/swype/connect/Connect;

    invoke-static {v1}, Lcom/nuance/swype/connect/Connect;->access$1100(Lcom/nuance/swype/connect/Connect;)Lcom/nuance/swypeconnect/ac/ACAccountService;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 440
    :try_start_0
    iget-object v1, p0, Lcom/nuance/swype/connect/Connect$Accounts;->this$0:Lcom/nuance/swype/connect/Connect;

    invoke-static {v1}, Lcom/nuance/swype/connect/Connect;->access$1100(Lcom/nuance/swype/connect/Connect;)Lcom/nuance/swypeconnect/ac/ACAccountService;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz p2, :cond_1

    sget-object v1, Lcom/nuance/swypeconnect/ac/ACDevice$ACDeviceType;->TABLET:Lcom/nuance/swypeconnect/ac/ACDevice$ACDeviceType;

    :goto_0
    invoke-virtual {v2, v3, p1, v1, p3}, Lcom/nuance/swypeconnect/ac/ACAccountService;->createAccount(ILjava/lang/String;Lcom/nuance/swypeconnect/ac/ACDevice$ACDeviceType;Ljava/lang/String;)V

    .line 443
    iget-object v1, p0, Lcom/nuance/swype/connect/Connect$Accounts;->this$0:Lcom/nuance/swype/connect/Connect;

    invoke-static {v1}, Lcom/nuance/swype/connect/Connect;->access$1200(Lcom/nuance/swype/connect/Connect;)V

    .line 448
    :cond_0
    :goto_1
    return v0

    .line 440
    :cond_1
    sget-object v1, Lcom/nuance/swypeconnect/ac/ACDevice$ACDeviceType;->PHONE:Lcom/nuance/swypeconnect/ac/ACDevice$ACDeviceType;
    :try_end_0
    .catch Lcom/nuance/swypeconnect/ac/ACAccountService$ACAccountException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 445
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_1
.end method

.method public deleteActiveAccount(Z)V
    .locals 4
    .param p1, "deleteData"    # Z

    .prologue
    .line 460
    iget-object v1, p0, Lcom/nuance/swype/connect/Connect$Accounts;->this$0:Lcom/nuance/swype/connect/Connect;

    invoke-static {v1}, Lcom/nuance/swype/connect/Connect;->access$1000(Lcom/nuance/swype/connect/Connect;)Lcom/nuance/swypeconnect/ac/ACAccountService;

    .line 461
    iget-object v1, p0, Lcom/nuance/swype/connect/Connect$Accounts;->this$0:Lcom/nuance/swype/connect/Connect;

    invoke-static {v1}, Lcom/nuance/swype/connect/Connect;->access$1100(Lcom/nuance/swype/connect/Connect;)Lcom/nuance/swypeconnect/ac/ACAccountService;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 463
    :try_start_0
    iget-object v1, p0, Lcom/nuance/swype/connect/Connect$Accounts;->this$0:Lcom/nuance/swype/connect/Connect;

    invoke-static {v1}, Lcom/nuance/swype/connect/Connect;->access$1100(Lcom/nuance/swype/connect/Connect;)Lcom/nuance/swypeconnect/ac/ACAccountService;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/nuance/swypeconnect/ac/ACAccountService;->deleteAccount(Z)V
    :try_end_0
    .catch Lcom/nuance/swypeconnect/ac/ACAccountService$ACAccountException; {:try_start_0 .. :try_end_0} :catch_0

    .line 468
    :cond_0
    :goto_0
    return-void

    .line 464
    :catch_0
    move-exception v0

    .line 465
    .local v0, "e":Lcom/nuance/swypeconnect/ac/ACAccountService$ACAccountException;
    invoke-static {}, Lcom/nuance/swype/connect/Connect;->access$400()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Error deleting the account: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACAccountService$ACAccountException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public getActiveAccount()Lcom/nuance/swypeconnect/ac/ACAccount;
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect$Accounts;->this$0:Lcom/nuance/swype/connect/Connect;

    invoke-static {v0}, Lcom/nuance/swype/connect/Connect;->access$1000(Lcom/nuance/swype/connect/Connect;)Lcom/nuance/swypeconnect/ac/ACAccountService;

    .line 395
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect$Accounts;->this$0:Lcom/nuance/swype/connect/Connect;

    invoke-static {v0}, Lcom/nuance/swype/connect/Connect;->access$1100(Lcom/nuance/swype/connect/Connect;)Lcom/nuance/swypeconnect/ac/ACAccountService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 396
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect$Accounts;->this$0:Lcom/nuance/swype/connect/Connect;

    invoke-static {v0}, Lcom/nuance/swype/connect/Connect;->access$1100(Lcom/nuance/swype/connect/Connect;)Lcom/nuance/swypeconnect/ac/ACAccountService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACAccountService;->getAccount()Lcom/nuance/swypeconnect/ac/ACAccount;

    move-result-object v0

    .line 398
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDevices()[Lcom/nuance/swypeconnect/ac/ACDevice;
    .locals 1

    .prologue
    .line 452
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect$Accounts;->this$0:Lcom/nuance/swype/connect/Connect;

    invoke-static {v0}, Lcom/nuance/swype/connect/Connect;->access$1000(Lcom/nuance/swype/connect/Connect;)Lcom/nuance/swypeconnect/ac/ACAccountService;

    .line 453
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect$Accounts;->this$0:Lcom/nuance/swype/connect/Connect;

    invoke-static {v0}, Lcom/nuance/swype/connect/Connect;->access$1100(Lcom/nuance/swype/connect/Connect;)Lcom/nuance/swypeconnect/ac/ACAccountService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 454
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect$Accounts;->this$0:Lcom/nuance/swype/connect/Connect;

    invoke-static {v0}, Lcom/nuance/swype/connect/Connect;->access$1100(Lcom/nuance/swype/connect/Connect;)Lcom/nuance/swypeconnect/ac/ACAccountService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACAccountService;->getDevices()[Lcom/nuance/swypeconnect/ac/ACDevice;

    move-result-object v0

    .line 456
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isValidEmail(Ljava/lang/String;)Z
    .locals 2
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 432
    sget-object v0, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    .line 433
    .local v0, "emailPattern":Ljava/util/regex/Pattern;
    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public refreshDevicesList()V
    .locals 1

    .prologue
    .line 482
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect$Accounts;->this$0:Lcom/nuance/swype/connect/Connect;

    invoke-static {v0}, Lcom/nuance/swype/connect/Connect;->access$1000(Lcom/nuance/swype/connect/Connect;)Lcom/nuance/swypeconnect/ac/ACAccountService;

    .line 483
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect$Accounts;->this$0:Lcom/nuance/swype/connect/Connect;

    invoke-static {v0}, Lcom/nuance/swype/connect/Connect;->access$1100(Lcom/nuance/swype/connect/Connect;)Lcom/nuance/swypeconnect/ac/ACAccountService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 484
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect$Accounts;->this$0:Lcom/nuance/swype/connect/Connect;

    invoke-static {v0}, Lcom/nuance/swype/connect/Connect;->access$1100(Lcom/nuance/swype/connect/Connect;)Lcom/nuance/swypeconnect/ac/ACAccountService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACAccountService;->refreshDeviceList()V

    .line 486
    :cond_0
    return-void
.end method

.method public registerCallback(Lcom/nuance/swypeconnect/ac/ACAccountService$ACAccountCallback;)V
    .locals 1
    .param p1, "accountCallback"    # Lcom/nuance/swypeconnect/ac/ACAccountService$ACAccountCallback;

    .prologue
    .line 402
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect$Accounts;->this$0:Lcom/nuance/swype/connect/Connect;

    invoke-static {v0}, Lcom/nuance/swype/connect/Connect;->access$1000(Lcom/nuance/swype/connect/Connect;)Lcom/nuance/swypeconnect/ac/ACAccountService;

    .line 403
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect$Accounts;->this$0:Lcom/nuance/swype/connect/Connect;

    invoke-static {v0}, Lcom/nuance/swype/connect/Connect;->access$1100(Lcom/nuance/swype/connect/Connect;)Lcom/nuance/swypeconnect/ac/ACAccountService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 404
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect$Accounts;->this$0:Lcom/nuance/swype/connect/Connect;

    invoke-static {v0}, Lcom/nuance/swype/connect/Connect;->access$1100(Lcom/nuance/swype/connect/Connect;)Lcom/nuance/swypeconnect/ac/ACAccountService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nuance/swypeconnect/ac/ACAccountService;->registerCallback(Lcom/nuance/swypeconnect/ac/ACAccountService$ACAccountCallback;)V

    .line 406
    :cond_0
    return-void
.end method

.method public reverify()V
    .locals 4

    .prologue
    .line 489
    iget-object v1, p0, Lcom/nuance/swype/connect/Connect$Accounts;->this$0:Lcom/nuance/swype/connect/Connect;

    invoke-static {v1}, Lcom/nuance/swype/connect/Connect;->access$1000(Lcom/nuance/swype/connect/Connect;)Lcom/nuance/swypeconnect/ac/ACAccountService;

    .line 490
    iget-object v1, p0, Lcom/nuance/swype/connect/Connect$Accounts;->this$0:Lcom/nuance/swype/connect/Connect;

    invoke-static {v1}, Lcom/nuance/swype/connect/Connect;->access$1100(Lcom/nuance/swype/connect/Connect;)Lcom/nuance/swypeconnect/ac/ACAccountService;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 492
    :try_start_0
    iget-object v1, p0, Lcom/nuance/swype/connect/Connect$Accounts;->this$0:Lcom/nuance/swype/connect/Connect;

    invoke-static {v1}, Lcom/nuance/swype/connect/Connect;->access$1100(Lcom/nuance/swype/connect/Connect;)Lcom/nuance/swypeconnect/ac/ACAccountService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swypeconnect/ac/ACAccountService;->reverify()V
    :try_end_0
    .catch Lcom/nuance/swypeconnect/ac/ACAccountService$ACAccountException; {:try_start_0 .. :try_end_0} :catch_0

    .line 497
    :cond_0
    :goto_0
    return-void

    .line 493
    :catch_0
    move-exception v0

    .line 494
    .local v0, "e":Lcom/nuance/swypeconnect/ac/ACAccountService$ACAccountException;
    invoke-static {}, Lcom/nuance/swype/connect/Connect;->access$400()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Error on reverify: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACAccountService$ACAccountException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public unlinkDevice(Lcom/nuance/swypeconnect/ac/ACDevice;)V
    .locals 4
    .param p1, "device"    # Lcom/nuance/swypeconnect/ac/ACDevice;

    .prologue
    .line 471
    iget-object v1, p0, Lcom/nuance/swype/connect/Connect$Accounts;->this$0:Lcom/nuance/swype/connect/Connect;

    invoke-static {v1}, Lcom/nuance/swype/connect/Connect;->access$1000(Lcom/nuance/swype/connect/Connect;)Lcom/nuance/swypeconnect/ac/ACAccountService;

    .line 472
    iget-object v1, p0, Lcom/nuance/swype/connect/Connect$Accounts;->this$0:Lcom/nuance/swype/connect/Connect;

    invoke-static {v1}, Lcom/nuance/swype/connect/Connect;->access$1100(Lcom/nuance/swype/connect/Connect;)Lcom/nuance/swypeconnect/ac/ACAccountService;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 474
    :try_start_0
    iget-object v1, p0, Lcom/nuance/swype/connect/Connect$Accounts;->this$0:Lcom/nuance/swype/connect/Connect;

    invoke-static {v1}, Lcom/nuance/swype/connect/Connect;->access$1100(Lcom/nuance/swype/connect/Connect;)Lcom/nuance/swypeconnect/ac/ACAccountService;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/nuance/swypeconnect/ac/ACAccountService;->removeDeviceFromAccount(Lcom/nuance/swypeconnect/ac/ACDevice;)V
    :try_end_0
    .catch Lcom/nuance/swypeconnect/ac/ACAccountService$ACAccountException; {:try_start_0 .. :try_end_0} :catch_0

    .line 479
    :cond_0
    :goto_0
    return-void

    .line 475
    :catch_0
    move-exception v0

    .line 476
    .local v0, "e":Lcom/nuance/swypeconnect/ac/ACAccountService$ACAccountException;
    invoke-static {}, Lcom/nuance/swype/connect/Connect;->access$400()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Error removing a device from the account: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACAccountService$ACAccountException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public unregisterCallback(Lcom/nuance/swypeconnect/ac/ACAccountService$ACAccountCallback;)V
    .locals 1
    .param p1, "accountCallback"    # Lcom/nuance/swypeconnect/ac/ACAccountService$ACAccountCallback;

    .prologue
    .line 409
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect$Accounts;->this$0:Lcom/nuance/swype/connect/Connect;

    invoke-static {v0}, Lcom/nuance/swype/connect/Connect;->access$1000(Lcom/nuance/swype/connect/Connect;)Lcom/nuance/swypeconnect/ac/ACAccountService;

    .line 410
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect$Accounts;->this$0:Lcom/nuance/swype/connect/Connect;

    invoke-static {v0}, Lcom/nuance/swype/connect/Connect;->access$1100(Lcom/nuance/swype/connect/Connect;)Lcom/nuance/swypeconnect/ac/ACAccountService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 411
    iget-object v0, p0, Lcom/nuance/swype/connect/Connect$Accounts;->this$0:Lcom/nuance/swype/connect/Connect;

    invoke-static {v0}, Lcom/nuance/swype/connect/Connect;->access$1100(Lcom/nuance/swype/connect/Connect;)Lcom/nuance/swypeconnect/ac/ACAccountService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nuance/swypeconnect/ac/ACAccountService;->unregisterCallback(Lcom/nuance/swypeconnect/ac/ACAccountService$ACAccountCallback;)V

    .line 413
    :cond_0
    return-void
.end method

.method public verifyAccount(Ljava/lang/String;)Z
    .locals 4
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 416
    iget-object v2, p0, Lcom/nuance/swype/connect/Connect$Accounts;->this$0:Lcom/nuance/swype/connect/Connect;

    invoke-static {v2}, Lcom/nuance/swype/connect/Connect;->access$1000(Lcom/nuance/swype/connect/Connect;)Lcom/nuance/swypeconnect/ac/ACAccountService;

    .line 417
    const/4 v1, 0x0

    .line 419
    .local v1, "processed":Z
    :try_start_0
    iget-object v2, p0, Lcom/nuance/swype/connect/Connect$Accounts;->this$0:Lcom/nuance/swype/connect/Connect;

    invoke-static {v2}, Lcom/nuance/swype/connect/Connect;->access$1100(Lcom/nuance/swype/connect/Connect;)Lcom/nuance/swypeconnect/ac/ACAccountService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 420
    iget-object v2, p0, Lcom/nuance/swype/connect/Connect$Accounts;->this$0:Lcom/nuance/swype/connect/Connect;

    invoke-static {v2}, Lcom/nuance/swype/connect/Connect;->access$1200(Lcom/nuance/swype/connect/Connect;)V

    .line 421
    iget-object v2, p0, Lcom/nuance/swype/connect/Connect$Accounts;->this$0:Lcom/nuance/swype/connect/Connect;

    invoke-static {v2}, Lcom/nuance/swype/connect/Connect;->access$1100(Lcom/nuance/swype/connect/Connect;)Lcom/nuance/swypeconnect/ac/ACAccountService;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/nuance/swypeconnect/ac/ACAccountService;->verifyAccount(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/nuance/swypeconnect/ac/ACAccountService$ACAccountException; {:try_start_0 .. :try_end_0} :catch_0

    .line 422
    const/4 v1, 0x1

    :cond_0
    move v2, v1

    .line 428
    :goto_0
    return v2

    .line 424
    :catch_0
    move-exception v0

    .line 425
    .local v0, "e":Lcom/nuance/swypeconnect/ac/ACAccountService$ACAccountException;
    invoke-static {}, Lcom/nuance/swype/connect/Connect;->access$400()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v2

    const-string/jumbo v3, "Exception while verifying account. "

    invoke-interface {v2, v3, v0}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 426
    const/4 v2, 0x0

    goto :goto_0
.end method
