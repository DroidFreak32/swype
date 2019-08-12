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
    accessFlags = 0x8
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
    .locals 2
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
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper;

    .prologue
    .line 262
    iget-boolean v0, p0, Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper;->autoResume:Z

    return v0
.end method

.method static synthetic access$202(Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper;
    .param p1, "x1"    # Z

    .prologue
    .line 262
    iput-boolean p1, p0, Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper;->autoResume:Z

    return p1
.end method

.method static synthetic access$500(Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper;

    .prologue
    .line 262
    invoke-direct {p0}, Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper;->finish()V

    return-void
.end method

.method private finish()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 387
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper;->callback:Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateDownloadCallback;

    .line 388
    iput-boolean v1, p0, Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper;->downloading:Z

    .line 389
    iput-boolean v1, p0, Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper;->autoResume:Z

    .line 390
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper;->parent:Lcom/nuance/swype/connect/SDKUpdateManager;

    invoke-static {v0, v1}, Lcom/nuance/swype/connect/SDKUpdateManager;->access$602(Lcom/nuance/swype/connect/SDKUpdateManager;Z)Z

    .line 391
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper;->connection:Lcom/nuance/swype/connect/ConnectedStatus;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/ConnectedStatus;->unregister()V

    .line 392
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 378
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper;->parent:Lcom/nuance/swype/connect/SDKUpdateManager;

    invoke-static {v0}, Lcom/nuance/swype/connect/SDKUpdateManager;->access$300(Lcom/nuance/swype/connect/SDKUpdateManager;)Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService;

    .line 379
    iget-boolean v0, p0, Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper;->autoResume:Z

    if-eqz v0, :cond_1

    .line 380
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper;->downloadStopped(I)V

    .line 384
    :cond_0
    :goto_0
    return-void

    .line 381
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper;->parent:Lcom/nuance/swype/connect/SDKUpdateManager;

    invoke-static {v0}, Lcom/nuance/swype/connect/SDKUpdateManager;->access$400(Lcom/nuance/swype/connect/SDKUpdateManager;)Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper;->parent:Lcom/nuance/swype/connect/SDKUpdateManager;

    invoke-static {v0}, Lcom/nuance/swype/connect/SDKUpdateManager;->access$400(Lcom/nuance/swype/connect/SDKUpdateManager;)Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService;->cancelDownload()V

    goto :goto_0
.end method

.method public downloadComplete(Ljava/io/File;)V
    .locals 5
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 362
    invoke-static {}, Lcom/nuance/swype/connect/SDKUpdateManager;->access$100()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v1

    const-string v2, "downloadComplete("

    invoke-virtual {p1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v1, v2, v3, v4}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 363
    iget-object v1, p0, Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper;->parent:Lcom/nuance/swype/connect/SDKUpdateManager;

    invoke-virtual {v1, p1}, Lcom/nuance/swype/connect/SDKUpdateManager;->downloadComplete(Ljava/io/File;)V

    .line 364
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper;->callback:Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateDownloadCallback;

    .line 365
    .local v0, "c":Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateDownloadCallback;
    invoke-direct {p0}, Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper;->finish()V

    .line 366
    invoke-interface {v0, p1}, Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateDownloadCallback;->downloadComplete(Ljava/io/File;)V

    .line 367
    return-void
.end method

.method public downloadFailed(I)V
    .locals 6
    .param p1, "reasonCode"    # I

    .prologue
    const/4 v5, 0x0

    .line 346
    invoke-static {}, Lcom/nuance/swype/connect/SDKUpdateManager;->access$100()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v1

    const-string v2, "downloadFailed("

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v1, v2, v3, v4}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 347
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper;->callback:Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateDownloadCallback;

    .line 348
    .local v0, "c":Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateDownloadCallback;
    iget v1, p0, Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper;->retryCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper;->retryCount:I

    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    .line 349
    invoke-static {}, Lcom/nuance/swype/connect/SDKUpdateManager;->access$100()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v1

    const-string v2, "autoResume"

    invoke-virtual {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 350
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper;->autoResume:Z

    .line 351
    iput v5, p0, Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper;->progress:I

    .line 352
    iget-object v1, p0, Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper;->callback:Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateDownloadCallback;

    iget v2, p0, Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper;->progress:I

    invoke-interface {v1, v2}, Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateDownloadCallback;->downloadPercentage(I)V

    .line 358
    :goto_0
    return-void

    .line 354
    :cond_0
    invoke-direct {p0}, Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper;->finish()V

    .line 355
    iput v5, p0, Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper;->progress:I

    .line 356
    invoke-interface {v0, p1}, Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateDownloadCallback;->downloadFailed(I)V

    goto :goto_0
.end method

.method public downloadPercentage(I)V
    .locals 5
    .param p1, "percent"    # I

    .prologue
    const/4 v4, 0x0

    .line 331
    invoke-static {}, Lcom/nuance/swype/connect/SDKUpdateManager;->access$100()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    const-string v1, "downloadPercentage("

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v0, v1, v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 332
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper;->callback:Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateDownloadCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper;->parent:Lcom/nuance/swype/connect/SDKUpdateManager;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/SDKUpdateManager;->showNoSpaceNotificationIfShortStorage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 334
    invoke-static {}, Lcom/nuance/swype/connect/SDKUpdateManager;->access$100()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    const-string v1, "downloadPercentage: out of space"

    invoke-virtual {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 335
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper;->callback:Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateDownloadCallback;

    sget v1, Lcom/nuance/swype/connect/SDKUpdateManager;->OUT_OF_SPACE_ERROR:I

    invoke-interface {v0, v1}, Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateDownloadCallback;->downloadFailed(I)V

    .line 342
    :goto_0
    return-void

    .line 338
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper;->parent:Lcom/nuance/swype/connect/SDKUpdateManager;

    invoke-static {v0, v4}, Lcom/nuance/swype/connect/SDKUpdateManager;->access$602(Lcom/nuance/swype/connect/SDKUpdateManager;Z)Z

    .line 339
    iput p1, p0, Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper;->progress:I

    .line 340
    iput-boolean v4, p0, Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper;->autoResume:Z

    .line 341
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper;->callback:Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateDownloadCallback;

    invoke-interface {v0, p1}, Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateDownloadCallback;->downloadPercentage(I)V

    goto :goto_0
.end method

.method public downloadStarted()V
    .locals 2

    .prologue
    .line 323
    invoke-static {}, Lcom/nuance/swype/connect/SDKUpdateManager;->access$100()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    const-string v1, "downloadStarted()"

    invoke-virtual {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 324
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper;->autoResume:Z

    .line 325
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper;->callback:Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateDownloadCallback;

    invoke-interface {v0}, Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateDownloadCallback;->downloadStarted()V

    .line 327
    return-void
.end method

.method public downloadStopped(I)V
    .locals 5
    .param p1, "reasonCode"    # I

    .prologue
    .line 308
    iget-object v1, p0, Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper;->callback:Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateDownloadCallback;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper;->parent:Lcom/nuance/swype/connect/SDKUpdateManager;

    invoke-virtual {v1}, Lcom/nuance/swype/connect/SDKUpdateManager;->showNoSpaceNotificationIfShortStorage()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 310
    invoke-static {}, Lcom/nuance/swype/connect/SDKUpdateManager;->access$100()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v1

    const-string v2, "downloadStopped: out of space"

    invoke-virtual {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 311
    iget-object v1, p0, Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper;->callback:Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateDownloadCallback;

    sget v2, Lcom/nuance/swype/connect/SDKUpdateManager;->OUT_OF_SPACE_ERROR:I

    invoke-interface {v1, v2}, Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateDownloadCallback;->downloadFailed(I)V

    .line 319
    :goto_0
    return-void

    .line 314
    :cond_0
    invoke-static {}, Lcom/nuance/swype/connect/SDKUpdateManager;->access$100()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v1

    const-string v2, "downloadStopped("

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v1, v2, v3, v4}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 315
    iget-object v0, p0, Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper;->callback:Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateDownloadCallback;

    .line 316
    .local v0, "c":Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateDownloadCallback;
    invoke-direct {p0}, Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper;->finish()V

    .line 317
    const/4 v1, 0x0

    iput v1, p0, Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper;->progress:I

    .line 318
    invoke-interface {v0, p1}, Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateDownloadCallback;->downloadStopped(I)V

    goto :goto_0
.end method

.method public getProgress()I
    .locals 1

    .prologue
    .line 374
    iget v0, p0, Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper;->progress:I

    return v0
.end method

.method public isDownloading()Z
    .locals 1

    .prologue
    .line 370
    iget-boolean v0, p0, Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper;->downloading:Z

    return v0
.end method

.method updateCallback(Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateDownloadCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateDownloadCallback;

    .prologue
    .line 395
    iput-object p1, p0, Lcom/nuance/swype/connect/SDKUpdateManager$PlatformUpdateDownloadCallbackWrapper;->callback:Lcom/nuance/swypeconnect/ac/ACPlatformUpdateService$ACPlatformUpdateDownloadCallback;

    .line 396
    return-void
.end method
