.class public Lcom/nuance/swype/input/ThemeWordListManager$PendingWordList;
.super Ljava/lang/Object;
.source "ThemeWordListManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/ThemeWordListManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PendingWordList"
.end annotation


# instance fields
.field private mBucket:Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;

.field mPreferences:Landroid/content/SharedPreferences;

.field private mProcessingStarted:Z

.field mProcessingStartedKey:Ljava/lang/String;

.field private mRemaining:I

.field mRemainingCountKey:Ljava/lang/String;

.field private mWordListId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;Ljava/lang/String;Landroid/content/Context;)V
    .locals 6
    .param p1, "bucket"    # Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;
    .param p2, "wordListId"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 279
    iput-object p1, p0, Lcom/nuance/swype/input/ThemeWordListManager$PendingWordList;->mBucket:Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;

    .line 280
    iput-object p2, p0, Lcom/nuance/swype/input/ThemeWordListManager$PendingWordList;->mWordListId:Ljava/lang/String;

    .line 281
    const-string/jumbo v0, "word_list_state_preference_file"

    invoke-virtual {p3, v0, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/ThemeWordListManager$PendingWordList;->mPreferences:Landroid/content/SharedPreferences;

    .line 283
    iget-object v0, p0, Lcom/nuance/swype/input/ThemeWordListManager$PendingWordList;->mWordListId:Ljava/lang/String;

    invoke-static {v0}, Lcom/nuance/swype/input/ThemeWordListManager$PendingWordList;->getProcessingStartedKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/ThemeWordListManager$PendingWordList;->mProcessingStartedKey:Ljava/lang/String;

    .line 284
    iget-object v0, p0, Lcom/nuance/swype/input/ThemeWordListManager$PendingWordList;->mWordListId:Ljava/lang/String;

    invoke-static {v0}, Lcom/nuance/swype/input/ThemeWordListManager$PendingWordList;->getRemainingCountKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/ThemeWordListManager$PendingWordList;->mRemainingCountKey:Ljava/lang/String;

    .line 285
    sget-object v0, Lcom/nuance/swype/input/ThemeWordListManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v1, v5, [Ljava/lang/Object;

    const-string/jumbo v2, "Processing started key is: "

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/nuance/swype/input/ThemeWordListManager$PendingWordList;->mProcessingStartedKey:Ljava/lang/String;

    aput-object v2, v1, v4

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 286
    sget-object v0, Lcom/nuance/swype/input/ThemeWordListManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v1, v5, [Ljava/lang/Object;

    const-string/jumbo v2, "Remaining key is: "

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/nuance/swype/input/ThemeWordListManager$PendingWordList;->mRemainingCountKey:Ljava/lang/String;

    aput-object v2, v1, v4

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 288
    invoke-direct {p0}, Lcom/nuance/swype/input/ThemeWordListManager$PendingWordList;->readState()V

    .line 290
    invoke-virtual {p0}, Lcom/nuance/swype/input/ThemeWordListManager$PendingWordList;->hasProcessingStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    invoke-direct {p0}, Lcom/nuance/swype/input/ThemeWordListManager$PendingWordList;->syncBucket()V

    .line 298
    :goto_0
    return-void

    .line 293
    :cond_0
    sget-object v0, Lcom/nuance/swype/input/ThemeWordListManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v1, v4, [Ljava/lang/Object;

    const-string/jumbo v2, "No sync required"

    aput-object v2, v1, v3

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 294
    iget-object v0, p0, Lcom/nuance/swype/input/ThemeWordListManager$PendingWordList;->mBucket:Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;

    invoke-virtual {v0}, Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/ThemeWordListManager$PendingWordList;->setRemaining(I)V

    .line 295
    invoke-direct {p0}, Lcom/nuance/swype/input/ThemeWordListManager$PendingWordList;->startProcessing()V

    goto :goto_0
.end method

.method private static getProcessingStartedKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "wordListId"    # Ljava/lang/String;

    .prologue
    .line 315
    const-string/jumbo v0, "%s_%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "word_list_pending_for"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getRemainingCountKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "wordListId"    # Ljava/lang/String;

    .prologue
    .line 306
    const-string/jumbo v0, "%s_%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "remaining_count_for"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isWordListAddedToQueue(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 3
    .param p0, "wordListId"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 325
    invoke-static {p0}, Lcom/nuance/swype/input/ThemeWordListManager$PendingWordList;->getProcessingStartedKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 326
    .local v0, "key":Ljava/lang/String;
    const-string/jumbo v1, "word_list_state_preference_file"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 327
    invoke-interface {v1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private readState()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 367
    iget-object v0, p0, Lcom/nuance/swype/input/ThemeWordListManager$PendingWordList;->mPreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/nuance/swype/input/ThemeWordListManager$PendingWordList;->mProcessingStartedKey:Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nuance/swype/input/ThemeWordListManager$PendingWordList;->mProcessingStarted:Z

    .line 368
    iget-object v0, p0, Lcom/nuance/swype/input/ThemeWordListManager$PendingWordList;->mPreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/nuance/swype/input/ThemeWordListManager$PendingWordList;->mRemainingCountKey:Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/nuance/swype/input/ThemeWordListManager$PendingWordList;->mRemaining:I

    .line 370
    sget-object v0, Lcom/nuance/swype/input/ThemeWordListManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "State is: ProcessingStarted: "

    aput-object v2, v1, v3

    const/4 v2, 0x1

    iget-boolean v3, p0, Lcom/nuance/swype/input/ThemeWordListManager$PendingWordList;->mProcessingStarted:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, ", Remaining: "

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget v3, p0, Lcom/nuance/swype/input/ThemeWordListManager$PendingWordList;->mRemaining:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 371
    return-void
.end method

.method private setRemaining(I)V
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 358
    iput p1, p0, Lcom/nuance/swype/input/ThemeWordListManager$PendingWordList;->mRemaining:I

    .line 359
    invoke-direct {p0}, Lcom/nuance/swype/input/ThemeWordListManager$PendingWordList;->writeState()V

    .line 360
    return-void
.end method

.method private startProcessing()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 331
    sget-object v0, Lcom/nuance/swype/input/ThemeWordListManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "Starting processing"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 332
    iput-boolean v4, p0, Lcom/nuance/swype/input/ThemeWordListManager$PendingWordList;->mProcessingStarted:Z

    .line 333
    invoke-direct {p0}, Lcom/nuance/swype/input/ThemeWordListManager$PendingWordList;->writeState()V

    .line 334
    return-void
.end method

.method private syncBucket()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 348
    sget-object v1, Lcom/nuance/swype/input/ThemeWordListManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "Syncing the bucket. Remaining is: "

    aput-object v3, v2, v5

    iget v3, p0, Lcom/nuance/swype/input/ThemeWordListManager$PendingWordList;->mRemaining:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    const-string/jumbo v3, ", bucket size is: "

    aput-object v3, v2, v7

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/nuance/swype/input/ThemeWordListManager$PendingWordList;->mBucket:Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;

    invoke-virtual {v4}, Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 349
    iget v1, p0, Lcom/nuance/swype/input/ThemeWordListManager$PendingWordList;->mRemaining:I

    if-lez v1, :cond_0

    .line 350
    :goto_0
    iget-object v1, p0, Lcom/nuance/swype/input/ThemeWordListManager$PendingWordList;->mBucket:Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;

    invoke-virtual {v1}, Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;->size()I

    move-result v1

    iget v2, p0, Lcom/nuance/swype/input/ThemeWordListManager$PendingWordList;->mRemaining:I

    if-le v1, v2, :cond_0

    .line 351
    iget-object v1, p0, Lcom/nuance/swype/input/ThemeWordListManager$PendingWordList;->mBucket:Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;

    invoke-virtual {v1}, Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;->remove()Ljava/lang/String;

    move-result-object v0

    .line 352
    .local v0, "removedWord":Ljava/lang/String;
    sget-object v1, Lcom/nuance/swype/input/ThemeWordListManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v2, v7, [Ljava/lang/Object;

    const-string/jumbo v3, "Removing "

    aput-object v3, v2, v5

    aput-object v0, v2, v6

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    goto :goto_0

    .line 355
    .end local v0    # "removedWord":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private writeState()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 374
    iget-object v1, p0, Lcom/nuance/swype/input/ThemeWordListManager$PendingWordList;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 375
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget v1, p0, Lcom/nuance/swype/input/ThemeWordListManager$PendingWordList;->mRemaining:I

    if-lez v1, :cond_0

    .line 376
    sget-object v1, Lcom/nuance/swype/input/ThemeWordListManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v2, v5, [Ljava/lang/Object;

    const-string/jumbo v3, "Updating state info"

    aput-object v3, v2, v4

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 377
    iget-object v1, p0, Lcom/nuance/swype/input/ThemeWordListManager$PendingWordList;->mProcessingStartedKey:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/nuance/swype/input/ThemeWordListManager$PendingWordList;->mProcessingStarted:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 378
    iget-object v1, p0, Lcom/nuance/swype/input/ThemeWordListManager$PendingWordList;->mRemainingCountKey:Ljava/lang/String;

    iget v2, p0, Lcom/nuance/swype/input/ThemeWordListManager$PendingWordList;->mRemaining:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 384
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 385
    sget-object v1, Lcom/nuance/swype/input/ThemeWordListManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "State updated: ProcessingStarted: "

    aput-object v3, v2, v4

    iget-boolean v3, p0, Lcom/nuance/swype/input/ThemeWordListManager$PendingWordList;->mProcessingStarted:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x2

    const-string/jumbo v4, ", Remaining: "

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget v4, p0, Lcom/nuance/swype/input/ThemeWordListManager$PendingWordList;->mRemaining:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 386
    return-void

    .line 380
    :cond_0
    sget-object v1, Lcom/nuance/swype/input/ThemeWordListManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v2, v5, [Ljava/lang/Object;

    const-string/jumbo v3, "Removing state info"

    aput-object v3, v2, v4

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 381
    iget-object v1, p0, Lcom/nuance/swype/input/ThemeWordListManager$PendingWordList;->mProcessingStartedKey:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 382
    iget-object v1, p0, Lcom/nuance/swype/input/ThemeWordListManager$PendingWordList;->mRemainingCountKey:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method


# virtual methods
.method public getBucket()Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Lcom/nuance/swype/input/ThemeWordListManager$PendingWordList;->mBucket:Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;

    return-object v0
.end method

.method public hasProcessingStarted()Z
    .locals 1

    .prologue
    .line 363
    iget-boolean v0, p0, Lcom/nuance/swype/input/ThemeWordListManager$PendingWordList;->mProcessingStarted:Z

    return v0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/nuance/swype/input/ThemeWordListManager$PendingWordList;->mBucket:Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;

    invoke-virtual {v0}, Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/ThemeWordListManager$PendingWordList;->setRemaining(I)V

    .line 342
    return-void
.end method

.method public updateState()V
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lcom/nuance/swype/input/ThemeWordListManager$PendingWordList;->mBucket:Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;

    invoke-virtual {v0}, Lcom/nuance/swype/input/udb/NewWordsBucketFactory$NewWordsBucket;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/ThemeWordListManager$PendingWordList;->setRemaining(I)V

    .line 390
    return-void
.end method
