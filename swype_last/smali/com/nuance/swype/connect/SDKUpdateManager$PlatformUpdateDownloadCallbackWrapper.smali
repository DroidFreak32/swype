.class Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper;
.super Ljava/lang/Object;
.source "SDKUpdateManager.java"

# interfaces
.implements Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateDownloadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/connect/SDKUpdateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PlatformUpdateDownloadCallbackWrapper"
.end annotation


# static fields
.field private static final MAX_RETRIES:I = 0x3


# instance fields
.field private autoResume:Z

.field callback:Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateDownloadCallback;

.field private connection:Lcom/nuance/swype/connect/ConnectedStatus;

.field downloading:Z

.field final parent:Lcom/nuance/swype/connect/SDKUpdateManager;

.field progress:I

.field private retryCount:I


# direct methods
.method constructor <init>(Lcom/nuance/swype/connect/SDKUpdateManager;Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateDownloadCallback;)V
    .registers 5
    .param p1, "updateManager"    # Lcom/nuance/swype/connect/SDKUpdateManager;
    .param p2, "callback"    # Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateDownloadCallback;

    .prologue
    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 273
    iput-object p1, p0, Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper;->parent:Lcom/nuance/swype/connect/SDKUpdateManager;

    .line 274
    iput-object p2, p0, Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper;->callback:Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateDownloadCallback;

    .line 275
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper;->downloading:Z

    .line 276
    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper;->progress:I

    .line 277
    new-instance v0, Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper$1;

    iget-object v1, p0, Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper;->parent:Lcom/nuance/swype/connect/SDKUpdateManager;

    # getter for: Lcom/nuance/swype/connect/SDKUpdateManager;->connect:Lcom/nuance/swype/connect/Connect;
    invoke-static {v1}, Lcom/nuance/swype/connect/SDKUpdateManager;->access$000(Lcom/nuance/swype/connect/SDKUpdateManager;)Lcom/nuance/swype/connect/Connect;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/connect/Connect;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper$1;-><init>(Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper;->connection:Lcom/nuance/swype/connect/ConnectedStatus;

    .line 303
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper;->connection:Lcom/nuance/swype/connect/ConnectedStatus;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/ConnectedStatus;->register()V

    .line 304
    return-void
.end method

.method static synthetic access$200(Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper;)Z
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper;

    .prologue
    .line 262
    iget-boolean v0, p0, Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper;->autoResume:Z

    return v0
.end method

.method static synthetic access$202(Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper;
    .param p1, "x1"    # Z

    .prologue
    .line 262
    iput-boolean p1, p0, Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper;->autoResume:Z

    return p1
.end method

.method static synthetic access$500(Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper;)V
    .registers 1
    .param p0, "x0"    # Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper;

    .prologue
    .line 262
    invoke-direct {p0}, Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper;->finish()V

    return-void
.end method

.method private finish()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 391
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper;->callback:Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateDownloadCallback;

    .line 392
    iput-boolean v1, p0, Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper;->downloading:Z

    .line 393
    iput-boolean v1, p0, Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper;->autoResume:Z

    .line 394
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper;->parent:Lcom/nuance/swype/connect/SDKUpdateManager;

    # setter for: Lcom/nuance/swype/connect/SDKUpdateManager;->isOutOfSpace:Z
    invoke-static {v0, v1}, Lcom/nuance/swype/connect/SDKUpdateManager;->access$602(Lcom/nuance/swype/connect/SDKUpdateManager;Z)Z

    .line 395
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper;->connection:Lcom/nuance/swype/connect/ConnectedStatus;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/ConnectedStatus;->unregister()V

    .line 396
    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 2

    .prologue
    .line 382
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper;->parent:Lcom/nuance/swype/connect/SDKUpdateManager;

    # invokes: Lcom/nuance/swype/connect/SDKUpdateManager;->getUpdateService()Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService;
    invoke-static {v0}, Lcom/nuance/swype/connect/SDKUpdateManager;->access$300(Lcom/nuance/swype/connect/SDKUpdateManager;)Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService;

    .line 383
    iget-boolean v0, p0, Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper;->autoResume:Z

    if-eqz v0, :cond_e

    .line 384
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper;->downloadStopped(I)V

    .line 388
    :cond_d
    :goto_d
    return-void

    .line 385
    :cond_e
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper;->parent:Lcom/nuance/swype/connect/SDKUpdateManager;

    # getter for: Lcom/nuance/swype/connect/SDKUpdateManager;->updateService:Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService;
    invoke-static {v0}, Lcom/nuance/swype/connect/SDKUpdateManager;->access$400(Lcom/nuance/swype/connect/SDKUpdateManager;)Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 386
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper;->parent:Lcom/nuance/swype/connect/SDKUpdateManager;

    # getter for: Lcom/nuance/swype/connect/SDKUpdateManager;->updateService:Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService;
    invoke-static {v0}, Lcom/nuance/swype/connect/SDKUpdateManager;->access$400(Lcom/nuance/swype/connect/SDKUpdateManager;)Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService;->cancelDownload()V

    goto :goto_d
.end method

.method public downloadComplete(Ljava/io/File;)V
    .registers 7
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 366
    # getter for: Lcom/nuance/swype/connect/SDKUpdateManager;->log:Lcom/nuance/swype/util/LogManager$Log;
    invoke-static {}, Lcom/nuance/swype/connect/SDKUpdateManager;->access$100()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "downloadComplete("

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, ")"

    aput-object v4, v2, v3

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 367
    iget-object v1, p0, Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper;->parent:Lcom/nuance/swype/connect/SDKUpdateManager;

    invoke-virtual {v1, p1}, Lcom/nuance/swype/connect/SDKUpdateManager;->downloadComplete(Ljava/io/File;)V

    .line 368
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper;->callback:Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateDownloadCallback;

    .line 369
    .local v0, "c":Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateDownloadCallback;
    invoke-direct {p0}, Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper;->finish()V

    .line 370
    invoke-interface {v0, p1}, Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateDownloadCallback;->downloadComplete(Ljava/io/File;)V

    .line 371
    return-void
.end method

.method public downloadFailed(I)V
    .registers 10
    .param p1, "reasonCode"    # I

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 350
    # getter for: Lcom/nuance/swype/connect/SDKUpdateManager;->log:Lcom/nuance/swype/util/LogManager$Log;
    invoke-static {}, Lcom/nuance/swype/connect/SDKUpdateManager;->access$100()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/Object;

    const-string/jumbo v3, "downloadFailed("

    aput-object v3, v2, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    const/4 v3, 0x2

    const-string/jumbo v4, ")"

    aput-object v4, v2, v3

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 351
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper;->callback:Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateDownloadCallback;

    .line 352
    .local v0, "c":Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateDownloadCallback;
    iget v1, p0, Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper;->retryCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper;->retryCount:I

    if-ge v1, v7, :cond_41

    .line 353
    # getter for: Lcom/nuance/swype/connect/SDKUpdateManager;->log:Lcom/nuance/swype/util/LogManager$Log;
    invoke-static {}, Lcom/nuance/swype/connect/SDKUpdateManager;->access$100()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "autoResume"

    aput-object v3, v2, v5

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 354
    iput-boolean v6, p0, Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper;->autoResume:Z

    .line 355
    iput v5, p0, Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper;->progress:I

    .line 356
    iget-object v1, p0, Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper;->callback:Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateDownloadCallback;

    iget v2, p0, Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper;->progress:I

    invoke-interface {v1, v2}, Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateDownloadCallback;->downloadPercentage(I)V

    .line 362
    :goto_40
    return-void

    .line 358
    :cond_41
    invoke-direct {p0}, Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper;->finish()V

    .line 359
    iput v5, p0, Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper;->progress:I

    .line 360
    invoke-interface {v0, p1}, Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateDownloadCallback;->downloadFailed(I)V

    goto :goto_40
.end method

.method public downloadPercentage(I)V
    .registers 8
    .param p1, "percent"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 333
    # getter for: Lcom/nuance/swype/connect/SDKUpdateManager;->log:Lcom/nuance/swype/util/LogManager$Log;
    invoke-static {}, Lcom/nuance/swype/connect/SDKUpdateManager;->access$100()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "downloadPercentage("

    aput-object v2, v1, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    const/4 v2, 0x2

    const-string/jumbo v3, ")"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 334
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper;->callback:Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateDownloadCallback;

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper;->parent:Lcom/nuance/swype/connect/SDKUpdateManager;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/SDKUpdateManager;->showNoSpaceNotificationIfShortStorage()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 336
    # getter for: Lcom/nuance/swype/connect/SDKUpdateManager;->log:Lcom/nuance/swype/util/LogManager$Log;
    invoke-static {}, Lcom/nuance/swype/connect/SDKUpdateManager;->access$100()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    const-string/jumbo v2, "downloadPercentage: out of space"

    aput-object v2, v1, v4

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 337
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper;->callback:Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateDownloadCallback;

    const/16 v1, -0x3e7

    invoke-interface {v0, v1}, Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateDownloadCallback;->downloadFailed(I)V

    .line 346
    :cond_3e
    :goto_3e
    return-void

    .line 340
    :cond_3f
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper;->parent:Lcom/nuance/swype/connect/SDKUpdateManager;

    # setter for: Lcom/nuance/swype/connect/SDKUpdateManager;->isOutOfSpace:Z
    invoke-static {v0, v4}, Lcom/nuance/swype/connect/SDKUpdateManager;->access$602(Lcom/nuance/swype/connect/SDKUpdateManager;Z)Z

    .line 341
    iput p1, p0, Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper;->progress:I

    .line 342
    iput-boolean v4, p0, Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper;->autoResume:Z

    .line 343
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper;->callback:Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateDownloadCallback;

    if-eqz v0, :cond_3e

    .line 344
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper;->callback:Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateDownloadCallback;

    invoke-interface {v0, p1}, Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateDownloadCallback;->downloadPercentage(I)V

    goto :goto_3e
.end method

.method public downloadStarted()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 325
    # getter for: Lcom/nuance/swype/connect/SDKUpdateManager;->log:Lcom/nuance/swype/util/LogManager$Log;
    invoke-static {}, Lcom/nuance/swype/connect/SDKUpdateManager;->access$100()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "downloadStarted()"

    aput-object v2, v1, v3

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 326
    iput-boolean v3, p0, Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper;->autoResume:Z

    .line 327
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper;->callback:Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateDownloadCallback;

    invoke-interface {v0}, Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateDownloadCallback;->downloadStarted()V

    .line 329
    return-void
.end method

.method public downloadStopped(I)V
    .registers 8
    .param p1, "reasonCode"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 308
    iget-object v1, p0, Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper;->callback:Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateDownloadCallback;

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper;->parent:Lcom/nuance/swype/connect/SDKUpdateManager;

    invoke-virtual {v1}, Lcom/nuance/swype/connect/SDKUpdateManager;->showNoSpaceNotificationIfShortStorage()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 310
    # getter for: Lcom/nuance/swype/connect/SDKUpdateManager;->log:Lcom/nuance/swype/util/LogManager$Log;
    invoke-static {}, Lcom/nuance/swype/connect/SDKUpdateManager;->access$100()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    const-string/jumbo v3, "downloadStopped: out of space"

    aput-object v3, v2, v5

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 311
    iget-object v1, p0, Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper;->callback:Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateDownloadCallback;

    const/16 v2, -0x3e7

    invoke-interface {v1, v2}, Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateDownloadCallback;->downloadFailed(I)V

    .line 321
    :cond_23
    :goto_23
    return-void

    .line 314
    :cond_24
    # getter for: Lcom/nuance/swype/connect/SDKUpdateManager;->log:Lcom/nuance/swype/util/LogManager$Log;
    invoke-static {}, Lcom/nuance/swype/connect/SDKUpdateManager;->access$100()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "downloadStopped("

    aput-object v3, v2, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x2

    const-string/jumbo v4, ")"

    aput-object v4, v2, v3

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 315
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper;->callback:Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateDownloadCallback;

    .line 316
    .local v0, "c":Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateDownloadCallback;
    invoke-direct {p0}, Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper;->finish()V

    .line 317
    iput v5, p0, Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper;->progress:I

    .line 318
    if-eqz v0, :cond_23

    .line 319
    invoke-interface {v0, p1}, Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateDownloadCallback;->downloadStopped(I)V

    goto :goto_23
.end method

.method public getProgress()I
    .registers 2

    .prologue
    .line 378
    iget v0, p0, Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper;->progress:I

    return v0
.end method

.method public isDownloading()Z
    .registers 2

    .prologue
    .line 374
    iget-boolean v0, p0, Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper;->downloading:Z

    return v0
.end method

.method updateCallback(Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateDownloadCallback;)V
    .registers 2
    .param p1, "callback"    # Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateDownloadCallback;

    .prologue
    .line 399
    iput-object p1, p0, Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper;->callback:Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateDownloadCallback;

    .line 400
    return-void
.end method
