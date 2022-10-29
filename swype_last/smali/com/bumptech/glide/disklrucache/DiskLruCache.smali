.class public final Lcom/bumptech/glide/disklrucache/DiskLruCache;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;,
        Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;,
        Lcom/bumptech/glide/disklrucache/DiskLruCache$Value;
    }
.end annotation


# instance fields
.field private final appVersion:I

.field private final cleanupCallable:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final directory:Ljava/io/File;

.field final executorService:Ljava/util/concurrent/ThreadPoolExecutor;

.field private final journalFile:Ljava/io/File;

.field private final journalFileBackup:Ljava/io/File;

.field private final journalFileTmp:Ljava/io/File;

.field private journalWriter:Ljava/io/Writer;

.field private final lruEntries:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private maxSize:J

.field private nextSequenceNumber:J

.field private redundantOpCount:I

.field private size:J

.field private final valueCount:I


# direct methods
.method private constructor <init>(Ljava/io/File;J)V
    .registers 12
    .param p1, "directory"    # Ljava/io/File;
    .param p2, "maxSize"    # J

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    iput-wide v4, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->size:J

    .line 146
    new-instance v0, Ljava/util/LinkedHashMap;

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-direct {v0, v2, v1, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    .line 155
    iput-wide v4, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->nextSequenceNumber:J

    .line 158
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 160
    new-instance v0, Lcom/bumptech/glide/disklrucache/DiskLruCache$1;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/disklrucache/DiskLruCache$1;-><init>(Lcom/bumptech/glide/disklrucache/DiskLruCache;)V

    iput-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    .line 177
    iput-object p1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->directory:Ljava/io/File;

    .line 178
    iput v3, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->appVersion:I

    .line 179
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "journal"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalFile:Ljava/io/File;

    .line 180
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "journal.tmp"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalFileTmp:Ljava/io/File;

    .line 181
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "journal.bkp"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalFileBackup:Ljava/io/File;

    .line 182
    iput v3, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->valueCount:I

    .line 183
    iput-wide p2, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->maxSize:J

    .line 184
    return-void
.end method

.method static synthetic access$000(Lcom/bumptech/glide/disklrucache/DiskLruCache;)Ljava/io/Writer;
    .registers 2
    .param p0, "x0"    # Lcom/bumptech/glide/disklrucache/DiskLruCache;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    return-object v0
.end method

.method static synthetic access$100(Lcom/bumptech/glide/disklrucache/DiskLruCache;)V
    .registers 1
    .param p0, "x0"    # Lcom/bumptech/glide/disklrucache/DiskLruCache;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->trimToSize()V

    return-void
.end method

.method static synthetic access$1800(Lcom/bumptech/glide/disklrucache/DiskLruCache;)I
    .registers 2
    .param p0, "x0"    # Lcom/bumptech/glide/disklrucache/DiskLruCache;

    .prologue
    .line 85
    iget v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->valueCount:I

    return v0
.end method

.method static synthetic access$1900(Lcom/bumptech/glide/disklrucache/DiskLruCache;)Ljava/io/File;
    .registers 2
    .param p0, "x0"    # Lcom/bumptech/glide/disklrucache/DiskLruCache;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->directory:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$200(Lcom/bumptech/glide/disklrucache/DiskLruCache;)Z
    .registers 2
    .param p0, "x0"    # Lcom/bumptech/glide/disklrucache/DiskLruCache;

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalRebuildRequired()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/bumptech/glide/disklrucache/DiskLruCache;Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;Z)V
    .registers 3
    .param p0, "x0"    # Lcom/bumptech/glide/disklrucache/DiskLruCache;
    .param p1, "x1"    # Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;
    .param p2, "x2"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 85
    invoke-direct {p0, p1, p2}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->completeEdit(Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/bumptech/glide/disklrucache/DiskLruCache;)V
    .registers 1
    .param p0, "x0"    # Lcom/bumptech/glide/disklrucache/DiskLruCache;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->rebuildJournal()V

    return-void
.end method

.method static synthetic access$402$7553e83e(Lcom/bumptech/glide/disklrucache/DiskLruCache;)I
    .registers 2
    .param p0, "x0"    # Lcom/bumptech/glide/disklrucache/DiskLruCache;

    .prologue
    .line 85
    const/4 v0, 0x0

    iput v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->redundantOpCount:I

    return v0
.end method

.method private checkNotClosed()V
    .registers 3

    .prologue
    .line 617
    iget-object v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    if-nez v0, :cond_d

    .line 618
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "cache is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 620
    :cond_d
    return-void
.end method

.method private declared-synchronized completeEdit(Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;Z)V
    .registers 15
    .param p1, "editor"    # Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;
    .param p2, "success"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 502
    monitor-enter p0

    .line 18705
    :try_start_1
    iget-object v2, p1, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;->entry:Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;

    .line 18803
    .local v2, "entry":Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;
    iget-object v8, v2, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->currentEditor:Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;

    .line 503
    if-eq v8, p1, :cond_10

    .line 504
    new-instance v8, Ljava/lang/IllegalStateException;

    invoke-direct {v8}, Ljava/lang/IllegalStateException;-><init>()V

    throw v8
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_d

    .line 502
    .end local v2    # "entry":Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;
    :catchall_d
    move-exception v8

    monitor-exit p0

    throw v8

    .line 508
    .restart local v2    # "entry":Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;
    :cond_10
    if-eqz p2, :cond_4c

    .line 19803
    :try_start_12
    iget-boolean v8, v2, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->readable:Z

    .line 508
    if-nez v8, :cond_4c

    .line 509
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_17
    iget v8, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->valueCount:I

    if-ge v3, v8, :cond_4c

    .line 20705
    iget-object v8, p1, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;->written:[Z

    .line 510
    aget-boolean v8, v8, v3

    if-nez v8, :cond_3a

    .line 511
    invoke-virtual {p1}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;->abort()V

    .line 512
    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "Newly created entry didn\'t create value for index "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 20872
    :cond_3a
    iget-object v8, v2, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->dirtyFiles:[Ljava/io/File;

    aget-object v8, v8, v3

    .line 514
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_49

    .line 515
    invoke-virtual {p1}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;->abort()V
    :try_end_47
    .catchall {:try_start_12 .. :try_end_47} :catchall_d

    .line 562
    :cond_47
    :goto_47
    monitor-exit p0

    return-void

    .line 509
    :cond_49
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 521
    .end local v3    # "i":I
    :cond_4c
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_4d
    :try_start_4d
    iget v8, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->valueCount:I

    if-ge v3, v8, :cond_7d

    .line 21872
    iget-object v8, v2, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->dirtyFiles:[Ljava/io/File;

    aget-object v1, v8, v3

    .line 523
    .local v1, "dirty":Ljava/io/File;
    if-eqz p2, :cond_79

    .line 524
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_76

    .line 22868
    iget-object v8, v2, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->cleanFiles:[Ljava/io/File;

    aget-object v0, v8, v3

    .line 526
    .local v0, "clean":Ljava/io/File;
    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 23803
    iget-object v8, v2, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->lengths:[J

    .line 527
    aget-wide v6, v8, v3

    .line 528
    .local v6, "oldLength":J
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 24803
    .local v4, "newLength":J
    iget-object v8, v2, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->lengths:[J

    .line 529
    aput-wide v4, v8, v3

    .line 530
    iget-wide v8, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->size:J

    sub-long/2addr v8, v6

    add-long/2addr v8, v4

    iput-wide v8, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->size:J

    .line 521
    .end local v0    # "clean":Ljava/io/File;
    .end local v4    # "newLength":J
    .end local v6    # "oldLength":J
    :cond_76
    :goto_76
    add-int/lit8 v3, v3, 0x1

    goto :goto_4d

    .line 533
    :cond_79
    invoke-static {v1}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->deleteIfExists(Ljava/io/File;)V

    goto :goto_76

    .line 537
    .end local v1    # "dirty":Ljava/io/File;
    :cond_7d
    iget v8, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->redundantOpCount:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->redundantOpCount:I

    .line 25803
    const/4 v8, 0x0

    iput-object v8, v2, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->currentEditor:Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;

    .line 26803
    iget-boolean v8, v2, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->readable:Z

    .line 539
    or-int/2addr v8, p2

    if-eqz v8, :cond_db

    .line 27803
    const/4 v8, 0x1

    iput-boolean v8, v2, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->readable:Z

    .line 541
    iget-object v8, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    const-string/jumbo v9, "CLEAN"

    invoke-virtual {v8, v9}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 542
    iget-object v8, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    const/16 v9, 0x20

    invoke-virtual {v8, v9}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 543
    iget-object v8, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    .line 28803
    iget-object v9, v2, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->key:Ljava/lang/String;

    .line 543
    invoke-virtual {v8, v9}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 544
    iget-object v8, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v2}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->getLengths()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 545
    iget-object v8, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    const/16 v9, 0xa

    invoke-virtual {v8, v9}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 547
    if-eqz p2, :cond_bf

    .line 548
    iget-wide v8, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->nextSequenceNumber:J

    const-wide/16 v10, 0x1

    add-long/2addr v10, v8

    iput-wide v10, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->nextSequenceNumber:J

    .line 29803
    iput-wide v8, v2, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->sequenceNumber:J

    .line 557
    :cond_bf
    :goto_bf
    iget-object v8, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v8}, Ljava/io/Writer;->flush()V

    .line 559
    iget-wide v8, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->size:J

    iget-wide v10, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->maxSize:J

    cmp-long v8, v8, v10

    if-gtz v8, :cond_d2

    invoke-direct {p0}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalRebuildRequired()Z

    move-result v8

    if-eqz v8, :cond_47

    .line 560
    :cond_d2
    iget-object v8, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v9, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    invoke-virtual {v8, v9}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    goto/16 :goto_47

    .line 551
    :cond_db
    iget-object v8, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    .line 30803
    iget-object v9, v2, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->key:Ljava/lang/String;

    .line 551
    invoke-virtual {v8, v9}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 552
    iget-object v8, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    const-string/jumbo v9, "REMOVE"

    invoke-virtual {v8, v9}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 553
    iget-object v8, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    const/16 v9, 0x20

    invoke-virtual {v8, v9}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 554
    iget-object v8, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    .line 31803
    iget-object v9, v2, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->key:Ljava/lang/String;

    .line 554
    invoke-virtual {v8, v9}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 555
    iget-object v8, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    const/16 v9, 0xa

    invoke-virtual {v8, v9}, Ljava/io/Writer;->append(C)Ljava/io/Writer;
    :try_end_ff
    .catchall {:try_start_4d .. :try_end_ff} :catchall_d

    goto :goto_bf
.end method

.method private static deleteIfExists(Ljava/io/File;)V
    .registers 2
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 387
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_12

    .line 388
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 390
    :cond_12
    return-void
.end method

.method private declared-synchronized edit$7efc45cb(Ljava/lang/String;)Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;
    .registers 8
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const-wide/16 v4, -0x1

    .line 445
    monitor-enter p0

    :try_start_4
    invoke-direct {p0}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->checkNotClosed()V

    .line 446
    iget-object v2, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;

    .line 447
    .local v1, "entry":Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;
    cmp-long v2, v4, v4

    if-eqz v2, :cond_1d

    if-eqz v1, :cond_1b

    .line 15803
    iget-wide v2, v1, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->sequenceNumber:J
    :try_end_17
    .catchall {:try_start_4 .. :try_end_17} :catchall_53

    .line 447
    cmp-long v2, v2, v4

    if-eqz v2, :cond_1d

    .line 467
    :cond_1b
    :goto_1b
    monitor-exit p0

    return-object v0

    .line 451
    :cond_1d
    if-nez v1, :cond_56

    .line 452
    :try_start_1f
    new-instance v1, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;

    .end local v1    # "entry":Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;
    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;-><init>(Lcom/bumptech/glide/disklrucache/DiskLruCache;Ljava/lang/String;B)V

    .line 453
    .restart local v1    # "entry":Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;
    iget-object v2, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    :cond_2a
    new-instance v0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;-><init>(Lcom/bumptech/glide/disklrucache/DiskLruCache;Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;B)V

    .line 17803
    .local v0, "editor":Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;
    iput-object v0, v1, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->currentEditor:Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;

    .line 462
    iget-object v2, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    const-string/jumbo v3, "DIRTY"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 463
    iget-object v2, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 464
    iget-object v2, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v2, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 465
    iget-object v2, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 466
    iget-object v2, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v2}, Ljava/io/Writer;->flush()V
    :try_end_52
    .catchall {:try_start_1f .. :try_end_52} :catchall_53

    goto :goto_1b

    .line 445
    .end local v0    # "editor":Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;
    .end local v1    # "entry":Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;
    :catchall_53
    move-exception v2

    monitor-exit p0

    throw v2

    .line 16803
    .restart local v1    # "entry":Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;
    :cond_56
    :try_start_56
    iget-object v2, v1, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->currentEditor:Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;
    :try_end_58
    .catchall {:try_start_56 .. :try_end_58} :catchall_53

    .line 454
    if-eqz v2, :cond_2a

    goto :goto_1b
.end method

.method private journalRebuildRequired()Z
    .registers 3

    .prologue
    .line 570
    iget v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->redundantOpCount:I

    const/16 v1, 0x7d0

    if-lt v0, v1, :cond_12

    iget v0, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->redundantOpCount:I

    iget-object v1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    if-lt v0, v1, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public static open$641e3723(Ljava/io/File;J)Lcom/bumptech/glide/disklrucache/DiskLruCache;
    .registers 12
    .param p0, "directory"    # Ljava/io/File;
    .param p1, "maxSize"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 197
    const-wide/16 v6, 0x0

    cmp-long v5, p1, v6

    if-gtz v5, :cond_f

    .line 198
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "maxSize <= 0"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 205
    :cond_f
    new-instance v0, Ljava/io/File;

    const-string/jumbo v5, "journal.bkp"

    invoke-direct {v0, p0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 206
    .local v0, "backupFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2e

    .line 207
    new-instance v3, Ljava/io/File;

    const-string/jumbo v5, "journal"

    invoke-direct {v3, p0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 209
    .local v3, "journalFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_43

    .line 210
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 217
    .end local v3    # "journalFile":Ljava/io/File;
    :cond_2e
    :goto_2e
    new-instance v1, Lcom/bumptech/glide/disklrucache/DiskLruCache;

    invoke-direct {v1, p0, p1, p2}, Lcom/bumptech/glide/disklrucache/DiskLruCache;-><init>(Ljava/io/File;J)V

    .line 218
    .local v1, "cache":Lcom/bumptech/glide/disklrucache/DiskLruCache;
    iget-object v5, v1, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_7c

    .line 220
    :try_start_3b
    invoke-direct {v1}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->readJournal()V

    .line 221
    invoke-direct {v1}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->processJournal()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_41} :catch_48

    move-object v2, v1

    .line 238
    .end local v1    # "cache":Lcom/bumptech/glide/disklrucache/DiskLruCache;
    .local v2, "cache":Ljava/lang/Object;
    :goto_42
    return-object v2

    .line 212
    .end local v2    # "cache":Ljava/lang/Object;
    .restart local v3    # "journalFile":Ljava/io/File;
    :cond_43
    const/4 v5, 0x0

    invoke-static {v0, v3, v5}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->renameTo(Ljava/io/File;Ljava/io/File;Z)V

    goto :goto_2e

    .line 223
    .end local v3    # "journalFile":Ljava/io/File;
    .restart local v1    # "cache":Lcom/bumptech/glide/disklrucache/DiskLruCache;
    :catch_48
    move-exception v4

    .line 224
    .local v4, "journalIsCorrupt":Ljava/io/IOException;
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "DiskLruCache "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " is corrupt: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", removing"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1657
    invoke-virtual {v1}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->close()V

    .line 1658
    iget-object v5, v1, Lcom/bumptech/glide/disklrucache/DiskLruCache;->directory:Ljava/io/File;

    invoke-static {v5}, Lcom/bumptech/glide/disklrucache/Util;->deleteContents(Ljava/io/File;)V

    .line 235
    .end local v4    # "journalIsCorrupt":Ljava/io/IOException;
    :cond_7c
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 236
    new-instance v1, Lcom/bumptech/glide/disklrucache/DiskLruCache;

    .end local v1    # "cache":Lcom/bumptech/glide/disklrucache/DiskLruCache;
    invoke-direct {v1, p0, p1, p2}, Lcom/bumptech/glide/disklrucache/DiskLruCache;-><init>(Ljava/io/File;J)V

    .line 237
    .restart local v1    # "cache":Lcom/bumptech/glide/disklrucache/DiskLruCache;
    invoke-direct {v1}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->rebuildJournal()V

    move-object v2, v1

    .line 238
    .restart local v2    # "cache":Ljava/lang/Object;
    goto :goto_42
.end method

.method private processJournal()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 325
    iget-object v3, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalFileTmp:Ljava/io/File;

    invoke-static {v3}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->deleteIfExists(Ljava/io/File;)V

    .line 326
    iget-object v3, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;>;"
    :cond_f
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4d

    .line 327
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;

    .line 6803
    .local v0, "entry":Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;
    iget-object v3, v0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->currentEditor:Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;

    .line 328
    if-nez v3, :cond_30

    .line 329
    const/4 v2, 0x0

    .local v2, "t":I
    :goto_20
    iget v3, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->valueCount:I

    if-ge v2, v3, :cond_f

    .line 330
    iget-wide v4, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->size:J

    .line 7803
    iget-object v3, v0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->lengths:[J

    .line 330
    aget-wide v6, v3, v2

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->size:J

    .line 329
    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    .line 8803
    .end local v2    # "t":I
    :cond_30
    const/4 v3, 0x0

    iput-object v3, v0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->currentEditor:Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;

    .line 334
    const/4 v2, 0x0

    .restart local v2    # "t":I
    :goto_34
    iget v3, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->valueCount:I

    if-ge v2, v3, :cond_49

    .line 8868
    iget-object v3, v0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->cleanFiles:[Ljava/io/File;

    aget-object v3, v3, v2

    .line 335
    invoke-static {v3}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->deleteIfExists(Ljava/io/File;)V

    .line 8872
    iget-object v3, v0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->dirtyFiles:[Ljava/io/File;

    aget-object v3, v3, v2

    .line 336
    invoke-static {v3}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->deleteIfExists(Ljava/io/File;)V

    .line 334
    add-int/lit8 v2, v2, 0x1

    goto :goto_34

    .line 338
    :cond_49
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_f

    .line 341
    .end local v0    # "entry":Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;
    .end local v2    # "t":I
    :cond_4d
    return-void
.end method

.method private readJournal()V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 242
    new-instance v4, Lcom/bumptech/glide/disklrucache/StrictLineReader;

    new-instance v7, Ljava/io/FileInputStream;

    iget-object v8, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-direct {v7, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    sget-object v8, Lcom/bumptech/glide/disklrucache/Util;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v4, v7, v8}, Lcom/bumptech/glide/disklrucache/StrictLineReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 244
    .local v4, "reader":Lcom/bumptech/glide/disklrucache/StrictLineReader;
    :try_start_e
    invoke-virtual {v4}, Lcom/bumptech/glide/disklrucache/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 245
    .local v3, "magic":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/bumptech/glide/disklrucache/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .line 246
    .local v6, "version":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/bumptech/glide/disklrucache/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 247
    .local v0, "appVersionString":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/bumptech/glide/disklrucache/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 248
    .local v5, "valueCountString":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/bumptech/glide/disklrucache/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 249
    .local v1, "blank":Ljava/lang/String;
    const-string/jumbo v7, "libcore.io.DiskLruCache"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_55

    const-string/jumbo v7, "1"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_55

    iget v7, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->appVersion:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_55

    iget v7, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->valueCount:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_55

    const-string/jumbo v7, ""

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_98

    .line 254
    :cond_55
    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "unexpected journal header: ["

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_93
    .catchall {:try_start_e .. :try_end_93} :catchall_93

    .line 277
    .end local v0    # "appVersionString":Ljava/lang/String;
    .end local v1    # "blank":Ljava/lang/String;
    .end local v3    # "magic":Ljava/lang/String;
    .end local v5    # "valueCountString":Ljava/lang/String;
    .end local v6    # "version":Ljava/lang/String;
    :catchall_93
    move-exception v7

    invoke-static {v4}, Lcom/bumptech/glide/disklrucache/Util;->closeQuietly(Ljava/io/Closeable;)V

    throw v7

    .line 258
    .restart local v0    # "appVersionString":Ljava/lang/String;
    .restart local v1    # "blank":Ljava/lang/String;
    .restart local v3    # "magic":Ljava/lang/String;
    .restart local v5    # "valueCountString":Ljava/lang/String;
    .restart local v6    # "version":Ljava/lang/String;
    :cond_98
    const/4 v2, 0x0

    .line 261
    .local v2, "lineCount":I
    :goto_99
    :try_start_99
    invoke-virtual {v4}, Lcom/bumptech/glide/disklrucache/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v9

    .line 2282
    const/16 v7, 0x20

    invoke-virtual {v9, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    .line 2283
    const/4 v7, -0x1

    if-ne v10, v7, :cond_d6

    .line 2284
    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "unexpected journal line: "

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_bc
    .catch Ljava/io/EOFException; {:try_start_99 .. :try_end_bc} :catch_bc
    .catchall {:try_start_99 .. :try_end_bc} :catchall_93

    .line 267
    :catch_bc
    move-exception v7

    :try_start_bd
    iget-object v7, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v7}, Ljava/util/LinkedHashMap;->size()I

    move-result v7

    sub-int v7, v2, v7

    iput v7, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->redundantOpCount:I

    .line 6180
    iget v7, v4, Lcom/bumptech/glide/disklrucache/StrictLineReader;->end:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_176

    const/4 v7, 0x1

    .line 270
    :goto_cd
    if-eqz v7, :cond_179

    .line 271
    invoke-direct {p0}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->rebuildJournal()V
    :try_end_d2
    .catchall {:try_start_bd .. :try_end_d2} :catchall_93

    .line 277
    :goto_d2
    invoke-static {v4}, Lcom/bumptech/glide/disklrucache/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 278
    return-void

    .line 2287
    :cond_d6
    add-int/lit8 v7, v10, 0x1

    .line 2288
    const/16 v8, 0x20

    :try_start_da
    invoke-virtual {v9, v8, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v11

    .line 2290
    const/4 v8, -0x1

    if-ne v11, v8, :cond_f9

    .line 2291
    invoke-virtual {v9, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 2292
    const/4 v8, 0x6

    if-ne v10, v8, :cond_191

    const-string/jumbo v8, "REMOVE"

    invoke-virtual {v9, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_191

    .line 2293
    iget-object v8, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v8, v7}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    :cond_f6
    :goto_f6
    add-int/lit8 v2, v2, 0x1

    goto :goto_99

    .line 2297
    :cond_f9
    invoke-virtual {v9, v7, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    move-object v8, v7

    .line 2300
    :goto_fe
    iget-object v7, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v7, v8}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;

    .line 2301
    if-nez v7, :cond_113

    .line 2302
    new-instance v7, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;

    const/4 v12, 0x0

    invoke-direct {v7, p0, v8, v12}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;-><init>(Lcom/bumptech/glide/disklrucache/DiskLruCache;Ljava/lang/String;B)V

    .line 2303
    iget-object v12, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v12, v8, v7}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2306
    :cond_113
    const/4 v8, -0x1

    if-eq v11, v8, :cond_139

    const/4 v8, 0x5

    if-ne v10, v8, :cond_139

    const-string/jumbo v8, "CLEAN"

    invoke-virtual {v9, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_139

    .line 2307
    add-int/lit8 v8, v11, 0x1

    invoke-virtual {v9, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 2803
    const/4 v9, 0x1

    iput-boolean v9, v7, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->readable:Z

    .line 3803
    const/4 v9, 0x0

    iput-object v9, v7, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->currentEditor:Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;

    .line 4803
    invoke-virtual {v7, v8}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->setLengths([Ljava/lang/String;)V

    goto :goto_f6

    .line 2311
    :cond_139
    const/4 v8, -0x1

    if-ne v11, v8, :cond_151

    const/4 v8, 0x5

    if-ne v10, v8, :cond_151

    const-string/jumbo v8, "DIRTY"

    invoke-virtual {v9, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_151

    .line 2312
    new-instance v8, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;

    const/4 v9, 0x0

    invoke-direct {v8, p0, v7, v9}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;-><init>(Lcom/bumptech/glide/disklrucache/DiskLruCache;Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;B)V

    .line 5803
    iput-object v8, v7, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->currentEditor:Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;

    goto :goto_f6

    .line 2313
    :cond_151
    const/4 v7, -0x1

    if-ne v11, v7, :cond_160

    const/4 v7, 0x4

    if-ne v10, v7, :cond_160

    const-string/jumbo v7, "READ"

    invoke-virtual {v9, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_f6

    .line 2316
    :cond_160
    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "unexpected journal line: "

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_176
    .catch Ljava/io/EOFException; {:try_start_da .. :try_end_176} :catch_bc
    .catchall {:try_start_da .. :try_end_176} :catchall_93

    .line 6180
    :cond_176
    const/4 v7, 0x0

    goto/16 :goto_cd

    .line 273
    :cond_179
    :try_start_179
    new-instance v7, Ljava/io/BufferedWriter;

    new-instance v8, Ljava/io/OutputStreamWriter;

    new-instance v9, Ljava/io/FileOutputStream;

    iget-object v10, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalFile:Ljava/io/File;

    const/4 v11, 0x1

    invoke-direct {v9, v10, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    sget-object v10, Lcom/bumptech/glide/disklrucache/Util;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v8, v9, v10}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v7, v8}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v7, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;
    :try_end_18f
    .catchall {:try_start_179 .. :try_end_18f} :catchall_93

    goto/16 :goto_d2

    :cond_191
    move-object v8, v7

    goto/16 :goto_fe
.end method

.method private declared-synchronized rebuildJournal()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 348
    monitor-enter p0

    :try_start_1
    iget-object v3, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    if-eqz v3, :cond_a

    .line 349
    iget-object v3, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v3}, Ljava/io/Writer;->close()V

    .line 352
    :cond_a
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    new-instance v4, Ljava/io/FileOutputStream;

    iget-object v5, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalFileTmp:Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object v5, Lcom/bumptech/glide/disklrucache/Util;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v3, v4, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_94

    .line 355
    .local v2, "writer":Ljava/io/Writer;
    :try_start_1d
    const-string/jumbo v3, "libcore.io.DiskLruCache"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 356
    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 357
    const-string/jumbo v3, "1"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 358
    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 359
    iget v3, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->appVersion:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 360
    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 361
    iget v3, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->valueCount:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 362
    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 363
    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 365
    iget-object v3, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_63
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_bb

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;

    .line 9803
    .local v0, "entry":Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;
    iget-object v3, v0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->currentEditor:Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;

    .line 366
    if-eqz v3, :cond_97

    .line 367
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "DIRTY "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10803
    iget-object v4, v0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->key:Ljava/lang/String;

    .line 367
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_8e
    .catchall {:try_start_1d .. :try_end_8e} :catchall_8f

    goto :goto_63

    .line 373
    .end local v0    # "entry":Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_8f
    move-exception v3

    :try_start_90
    invoke-virtual {v2}, Ljava/io/Writer;->close()V

    throw v3
    :try_end_94
    .catchall {:try_start_90 .. :try_end_94} :catchall_94

    .line 348
    .end local v2    # "writer":Ljava/io/Writer;
    :catchall_94
    move-exception v3

    monitor-exit p0

    throw v3

    .line 369
    .restart local v0    # "entry":Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "writer":Ljava/io/Writer;
    :cond_97
    :try_start_97
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "CLEAN "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11803
    iget-object v4, v0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->key:Ljava/lang/String;

    .line 369
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->getLengths()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_ba
    .catchall {:try_start_97 .. :try_end_ba} :catchall_8f

    goto :goto_63

    .line 373
    .end local v0    # "entry":Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;
    :cond_bb
    :try_start_bb
    invoke-virtual {v2}, Ljava/io/Writer;->close()V

    .line 376
    iget-object v3, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_ce

    .line 377
    iget-object v3, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalFile:Ljava/io/File;

    iget-object v4, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalFileBackup:Ljava/io/File;

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->renameTo(Ljava/io/File;Ljava/io/File;Z)V

    .line 379
    :cond_ce
    iget-object v3, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalFileTmp:Ljava/io/File;

    iget-object v4, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalFile:Ljava/io/File;

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->renameTo(Ljava/io/File;Ljava/io/File;Z)V

    .line 380
    iget-object v3, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalFileBackup:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 382
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/OutputStreamWriter;

    new-instance v5, Ljava/io/FileOutputStream;

    iget-object v6, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalFile:Ljava/io/File;

    const/4 v7, 0x1

    invoke-direct {v5, v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    sget-object v6, Lcom/bumptech/glide/disklrucache/Util;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v4, v5, v6}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v3, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;
    :try_end_f1
    .catchall {:try_start_bb .. :try_end_f1} :catchall_94

    .line 384
    monitor-exit p0

    return-void
.end method

.method private static renameTo(Ljava/io/File;Ljava/io/File;Z)V
    .registers 4
    .param p0, "from"    # Ljava/io/File;
    .param p1, "to"    # Ljava/io/File;
    .param p2, "deleteDestination"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 393
    if-eqz p2, :cond_5

    .line 394
    invoke-static {p1}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->deleteIfExists(Ljava/io/File;)V

    .line 396
    :cond_5
    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 397
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 399
    :cond_11
    return-void
.end method

.method private trimToSize()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 645
    :goto_0
    iget-wide v2, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->size:J

    iget-wide v4, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->maxSize:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_22

    .line 646
    iget-object v1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 647
    .local v0, "toEvict":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->remove(Ljava/lang/String;)Z

    goto :goto_0

    .line 649
    .end local v0    # "toEvict":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;>;"
    :cond_22
    return-void
.end method


# virtual methods
.method public final declared-synchronized close()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 631
    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_2c

    if-nez v2, :cond_7

    .line 642
    :goto_5
    monitor-exit p0

    return-void

    .line 634
    :cond_7
    :try_start_7
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_16
    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;

    .line 35803
    .local v0, "entry":Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;
    iget-object v2, v0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->currentEditor:Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;

    .line 635
    if-eqz v2, :cond_16

    .line 36803
    iget-object v2, v0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->currentEditor:Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;

    .line 636
    invoke-virtual {v2}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;->abort()V
    :try_end_2b
    .catchall {:try_start_7 .. :try_end_2b} :catchall_2c

    goto :goto_16

    .line 631
    .end local v0    # "entry":Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_2c
    move-exception v2

    monitor-exit p0

    throw v2

    .line 639
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_2f
    :try_start_2f
    invoke-direct {p0}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->trimToSize()V

    .line 640
    iget-object v2, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v2}, Ljava/io/Writer;->close()V

    .line 641
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;
    :try_end_3a
    .catchall {:try_start_2f .. :try_end_3a} :catchall_2c

    goto :goto_5
.end method

.method public final edit(Ljava/lang/String;)Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 441
    invoke-direct {p0, p1}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->edit$7efc45cb(Ljava/lang/String;)Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized get(Ljava/lang/String;)Lcom/bumptech/glide/disklrucache/DiskLruCache$Value;
    .registers 14
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 407
    monitor-enter p0

    :try_start_2
    invoke-direct {p0}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->checkNotClosed()V

    .line 408
    iget-object v2, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;
    :try_end_d
    .catchall {:try_start_2 .. :try_end_d} :catchall_63

    .line 409
    .local v9, "entry":Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;
    if-nez v9, :cond_11

    .line 433
    :cond_f
    :goto_f
    monitor-exit p0

    return-object v1

    .line 12803
    :cond_11
    :try_start_11
    iget-boolean v2, v9, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->readable:Z

    .line 413
    if-eqz v2, :cond_f

    .line 417
    iget-object v0, v9, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->cleanFiles:[Ljava/io/File;

    .local v0, "arr$":[Ljava/io/File;
    array-length v11, v0

    .local v11, "len$":I
    const/4 v10, 0x0

    .local v10, "i$":I
    :goto_19
    if-ge v10, v11, :cond_26

    aget-object v2, v0, v10

    .line 419
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 417
    add-int/lit8 v10, v10, 0x1

    goto :goto_19

    .line 424
    :cond_26
    iget v1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->redundantOpCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->redundantOpCount:I

    .line 425
    iget-object v1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    const-string/jumbo v2, "READ"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 426
    iget-object v1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 427
    iget-object v1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v1, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 428
    iget-object v1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 429
    invoke-direct {p0}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalRebuildRequired()Z

    move-result v1

    if-eqz v1, :cond_54

    .line 430
    iget-object v1, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v2, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 433
    :cond_54
    new-instance v1, Lcom/bumptech/glide/disklrucache/DiskLruCache$Value;

    .line 13803
    iget-wide v4, v9, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->sequenceNumber:J

    .line 433
    iget-object v6, v9, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->cleanFiles:[Ljava/io/File;

    .line 14803
    iget-object v7, v9, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->lengths:[J

    .line 433
    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v8}, Lcom/bumptech/glide/disklrucache/DiskLruCache$Value;-><init>(Lcom/bumptech/glide/disklrucache/DiskLruCache;Ljava/lang/String;J[Ljava/io/File;[JB)V
    :try_end_62
    .catchall {:try_start_11 .. :try_end_62} :catchall_63

    goto :goto_f

    .line 407
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v9    # "entry":Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;
    .end local v10    # "i$":I
    .end local v11    # "len$":I
    :catchall_63
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public final declared-synchronized remove(Ljava/lang/String;)Z
    .registers 10
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 581
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->checkNotClosed()V

    .line 582
    iget-object v3, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;

    .line 583
    .local v0, "entry":Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;
    if-eqz v0, :cond_12

    .line 32803
    iget-object v3, v0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->currentEditor:Lcom/bumptech/glide/disklrucache/DiskLruCache$Editor;
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_40

    .line 583
    if-eqz v3, :cond_15

    .line 584
    :cond_12
    const/4 v3, 0x0

    .line 608
    :goto_13
    monitor-exit p0

    return v3

    .line 587
    :cond_15
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_16
    :try_start_16
    iget v3, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->valueCount:I

    if-ge v2, v3, :cond_55

    .line 32868
    iget-object v3, v0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->cleanFiles:[Ljava/io/File;

    aget-object v1, v3, v2

    .line 589
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_43

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_43

    .line 590
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "failed to delete "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_40
    .catchall {:try_start_16 .. :try_end_40} :catchall_40

    .line 581
    .end local v0    # "entry":Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "i":I
    :catchall_40
    move-exception v3

    monitor-exit p0

    throw v3

    .line 592
    .restart local v0    # "entry":Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;
    .restart local v1    # "file":Ljava/io/File;
    .restart local v2    # "i":I
    :cond_43
    :try_start_43
    iget-wide v4, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->size:J

    .line 33803
    iget-object v3, v0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->lengths:[J

    .line 592
    aget-wide v6, v3, v2

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->size:J

    .line 34803
    iget-object v3, v0, Lcom/bumptech/glide/disklrucache/DiskLruCache$Entry;->lengths:[J

    .line 593
    const-wide/16 v4, 0x0

    aput-wide v4, v3, v2

    .line 587
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 596
    .end local v1    # "file":Ljava/io/File;
    :cond_55
    iget v3, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->redundantOpCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->redundantOpCount:I

    .line 597
    iget-object v3, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    const-string/jumbo v4, "REMOVE"

    invoke-virtual {v3, v4}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 598
    iget-object v3, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 599
    iget-object v3, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v3, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 600
    iget-object v3, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 602
    iget-object v3, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 604
    invoke-direct {p0}, Lcom/bumptech/glide/disklrucache/DiskLruCache;->journalRebuildRequired()Z

    move-result v3

    if-eqz v3, :cond_88

    .line 605
    iget-object v3, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v4, p0, Lcom/bumptech/glide/disklrucache/DiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_88
    .catchall {:try_start_43 .. :try_end_88} :catchall_40

    .line 608
    :cond_88
    const/4 v3, 0x1

    goto :goto_13
.end method
