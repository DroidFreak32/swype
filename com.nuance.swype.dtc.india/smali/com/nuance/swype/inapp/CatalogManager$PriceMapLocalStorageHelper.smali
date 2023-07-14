.class public final Lcom/nuance/swype/inapp/CatalogManager$PriceMapLocalStorageHelper;
.super Ljava/lang/Object;
.source "CatalogManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/inapp/CatalogManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PriceMapLocalStorageHelper"
.end annotation


# static fields
.field private static sInstance:Lcom/nuance/swype/inapp/CatalogManager$PriceMapLocalStorageHelper;


# instance fields
.field private mContext:Landroid/content/Context;

.field public mPriceMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1254
    iput-object p1, p0, Lcom/nuance/swype/inapp/CatalogManager$PriceMapLocalStorageHelper;->mContext:Landroid/content/Context;

    .line 1255
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/inapp/CatalogManager$PriceMapLocalStorageHelper;->mPriceMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2267
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/nuance/swype/inapp/CatalogManager$PriceMapLocalStorageHelper$1;

    invoke-direct {v1, p0}, Lcom/nuance/swype/inapp/CatalogManager$PriceMapLocalStorageHelper$1;-><init>(Lcom/nuance/swype/inapp/CatalogManager$PriceMapLocalStorageHelper;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2274
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1257
    return-void
.end method

.method static synthetic access$1600(Lcom/nuance/swype/inapp/CatalogManager$PriceMapLocalStorageHelper;)V
    .locals 9
    .param p0, "x0"    # Lcom/nuance/swype/inapp/CatalogManager$PriceMapLocalStorageHelper;

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1239
    .line 2322
    :try_start_0
    iget-object v0, p0, Lcom/nuance/swype/inapp/CatalogManager$PriceMapLocalStorageHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "price.map"

    invoke-virtual {v0, v1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/OptionalDataException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/StreamCorruptedException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_9
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 2323
    :try_start_1
    new-instance v1, Ljava/io/ObjectInputStream;

    invoke-direct {v1, v3}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_14
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_12
    .catch Ljava/io/OptionalDataException; {:try_start_1 .. :try_end_1} :catch_10
    .catch Ljava/io/StreamCorruptedException; {:try_start_1 .. :try_end_1} :catch_e
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_c
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2324
    :try_start_2
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    .line 2325
    if-eqz v0, :cond_0

    .line 2326
    iget-object v2, p0, Lcom/nuance/swype/inapp/CatalogManager$PriceMapLocalStorageHelper;->mPriceMap:Ljava/util/concurrent/ConcurrentHashMap;

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->putAll(Ljava/util/Map;)V

    .line 2327
    sget-object v0, Lcom/nuance/swype/inapp/CatalogManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "price map read from storage is: "

    aput-object v5, v2, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/nuance/swype/inapp/CatalogManager$PriceMapLocalStorageHelper;->mPriceMap:Ljava/util/concurrent/ConcurrentHashMap;

    aput-object v5, v2, v4

    invoke-interface {v0, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_15
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_13
    .catch Ljava/io/OptionalDataException; {:try_start_2 .. :try_end_2} :catch_11
    .catch Ljava/io/StreamCorruptedException; {:try_start_2 .. :try_end_2} :catch_f
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_d
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 2342
    :cond_0
    :try_start_3
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V

    .line 2344
    if-eqz v3, :cond_1

    .line 2345
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 2350
    :cond_1
    :goto_0
    return-void

    .line 2347
    :catch_0
    move-exception v0

    .line 2348
    sget-object v1, Lcom/nuance/swype/inapp/CatalogManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string/jumbo v2, "IO exception when closing sku list file. %s"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    goto :goto_0

    .line 2329
    :catch_1
    move-exception v0

    move-object v1, v2

    .line 2330
    :goto_1
    :try_start_4
    sget-object v3, Lcom/nuance/swype/inapp/CatalogManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string/jumbo v4, "File not found when reading sku list. %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 2341
    if-eqz v1, :cond_2

    .line 2342
    :try_start_5
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V

    .line 2344
    :cond_2
    if-eqz v2, :cond_1

    .line 2345
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 2347
    :catch_2
    move-exception v0

    .line 2348
    sget-object v1, Lcom/nuance/swype/inapp/CatalogManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string/jumbo v2, "IO exception when closing sku list file. %s"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    goto :goto_0

    .line 2331
    :catch_3
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    .line 2332
    :goto_2
    :try_start_6
    sget-object v2, Lcom/nuance/swype/inapp/CatalogManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string/jumbo v4, "Class not found when reading sku list. %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 2341
    if-eqz v1, :cond_3

    .line 2342
    :try_start_7
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V

    .line 2344
    :cond_3
    if-eqz v3, :cond_1

    .line 2345
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_0

    .line 2347
    :catch_4
    move-exception v0

    .line 2348
    sget-object v1, Lcom/nuance/swype/inapp/CatalogManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string/jumbo v2, "IO exception when closing sku list file. %s"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 2333
    :catch_5
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    .line 2334
    :goto_3
    :try_start_8
    sget-object v2, Lcom/nuance/swype/inapp/CatalogManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string/jumbo v4, "Optional data exception when reading sku list. %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v0}, Ljava/io/OptionalDataException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 2341
    if-eqz v1, :cond_4

    .line 2342
    :try_start_9
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V

    .line 2344
    :cond_4
    if-eqz v3, :cond_1

    .line 2345
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    goto/16 :goto_0

    .line 2347
    :catch_6
    move-exception v0

    .line 2348
    sget-object v1, Lcom/nuance/swype/inapp/CatalogManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string/jumbo v2, "IO exception when closing sku list file. %s"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 2335
    :catch_7
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    .line 2336
    :goto_4
    :try_start_a
    sget-object v2, Lcom/nuance/swype/inapp/CatalogManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string/jumbo v4, "Stream corruption exception when reading sku list. %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v0}, Ljava/io/StreamCorruptedException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 2341
    if-eqz v1, :cond_5

    .line 2342
    :try_start_b
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V

    .line 2344
    :cond_5
    if-eqz v3, :cond_1

    .line 2345
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    goto/16 :goto_0

    .line 2347
    :catch_8
    move-exception v0

    .line 2348
    sget-object v1, Lcom/nuance/swype/inapp/CatalogManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string/jumbo v2, "IO exception when closing sku list file. %s"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 2337
    :catch_9
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    .line 2338
    :goto_5
    :try_start_c
    sget-object v2, Lcom/nuance/swype/inapp/CatalogManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string/jumbo v4, "IO exception when reading sku list. %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v0}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 2341
    if-eqz v1, :cond_6

    .line 2342
    :try_start_d
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V

    .line 2344
    :cond_6
    if-eqz v3, :cond_1

    .line 2345
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_a

    goto/16 :goto_0

    .line 2347
    :catch_a
    move-exception v0

    .line 2348
    sget-object v1, Lcom/nuance/swype/inapp/CatalogManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string/jumbo v2, "IO exception when closing sku list file. %s"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 2340
    :catchall_0
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    .line 2341
    :goto_6
    if-eqz v1, :cond_7

    .line 2342
    :try_start_e
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V

    .line 2344
    :cond_7
    if-eqz v3, :cond_8

    .line 2345
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_b

    .line 2349
    :cond_8
    :goto_7
    throw v0

    .line 2347
    :catch_b
    move-exception v1

    .line 2348
    sget-object v2, Lcom/nuance/swype/inapp/CatalogManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string/jumbo v3, "IO exception when closing sku list file. %s"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    goto :goto_7

    .line 2340
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_6

    :catchall_2
    move-exception v0

    goto :goto_6

    :catchall_3
    move-exception v0

    move-object v3, v2

    goto :goto_6

    .line 2337
    :catch_c
    move-exception v0

    move-object v1, v2

    goto :goto_5

    :catch_d
    move-exception v0

    goto :goto_5

    .line 2335
    :catch_e
    move-exception v0

    move-object v1, v2

    goto/16 :goto_4

    :catch_f
    move-exception v0

    goto/16 :goto_4

    .line 2333
    :catch_10
    move-exception v0

    move-object v1, v2

    goto/16 :goto_3

    :catch_11
    move-exception v0

    goto/16 :goto_3

    .line 2331
    :catch_12
    move-exception v0

    move-object v1, v2

    goto/16 :goto_2

    :catch_13
    move-exception v0

    goto/16 :goto_2

    .line 2329
    :catch_14
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto/16 :goto_1

    :catch_15
    move-exception v0

    move-object v2, v3

    goto/16 :goto_1
.end method

.method static synthetic access$1700(Lcom/nuance/swype/inapp/CatalogManager$PriceMapLocalStorageHelper;)V
    .locals 9
    .param p0, "x0"    # Lcom/nuance/swype/inapp/CatalogManager$PriceMapLocalStorageHelper;

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1239
    .line 3296
    :try_start_0
    iget-object v0, p0, Lcom/nuance/swype/inapp/CatalogManager$PriceMapLocalStorageHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "price.map"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 3297
    :try_start_1
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v3}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3298
    :try_start_2
    iget-object v0, p0, Lcom/nuance/swype/inapp/CatalogManager$PriceMapLocalStorageHelper;->mPriceMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 3299
    sget-object v0, Lcom/nuance/swype/inapp/CatalogManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "price map data written successfully."

    aput-object v5, v2, v4

    invoke-interface {v0, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 3307
    :try_start_3
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    .line 3309
    if-eqz v3, :cond_0

    .line 3310
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 3315
    :cond_0
    :goto_0
    return-void

    .line 3312
    :catch_0
    move-exception v0

    .line 3313
    sget-object v1, Lcom/nuance/swype/inapp/CatalogManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string/jumbo v2, "Error closing file. %s"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    goto :goto_0

    .line 3300
    :catch_1
    move-exception v0

    move-object v1, v2

    .line 3301
    :goto_1
    :try_start_4
    sget-object v3, Lcom/nuance/swype/inapp/CatalogManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string/jumbo v4, "File not found. %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 3306
    if-eqz v1, :cond_1

    .line 3307
    :try_start_5
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    .line 3309
    :cond_1
    if-eqz v2, :cond_0

    .line 3310
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 3312
    :catch_2
    move-exception v0

    .line 3313
    sget-object v1, Lcom/nuance/swype/inapp/CatalogManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string/jumbo v2, "Error closing file. %s"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    goto :goto_0

    .line 3302
    :catch_3
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    .line 3303
    :goto_2
    :try_start_6
    sget-object v2, Lcom/nuance/swype/inapp/CatalogManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string/jumbo v4, "IOException when writing to file. %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v0}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 3306
    if-eqz v1, :cond_2

    .line 3307
    :try_start_7
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    .line 3309
    :cond_2
    if-eqz v3, :cond_0

    .line 3310
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_0

    .line 3312
    :catch_4
    move-exception v0

    .line 3313
    sget-object v1, Lcom/nuance/swype/inapp/CatalogManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string/jumbo v2, "Error closing file. %s"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 3305
    :catchall_0
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    .line 3306
    :goto_3
    if-eqz v1, :cond_3

    .line 3307
    :try_start_8
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    .line 3309
    :cond_3
    if-eqz v3, :cond_4

    .line 3310
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 3314
    :cond_4
    :goto_4
    throw v0

    .line 3312
    :catch_5
    move-exception v1

    .line 3313
    sget-object v2, Lcom/nuance/swype/inapp/CatalogManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string/jumbo v3, "Error closing file. %s"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    goto :goto_4

    .line 3305
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_3

    :catchall_2
    move-exception v0

    goto :goto_3

    :catchall_3
    move-exception v0

    move-object v3, v2

    goto :goto_3

    .line 3302
    :catch_6
    move-exception v0

    move-object v1, v2

    goto :goto_2

    :catch_7
    move-exception v0

    goto :goto_2

    .line 3300
    :catch_8
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto/16 :goto_1

    :catch_9
    move-exception v0

    move-object v2, v3

    goto/16 :goto_1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/nuance/swype/inapp/CatalogManager$PriceMapLocalStorageHelper;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1247
    sget-object v0, Lcom/nuance/swype/inapp/CatalogManager$PriceMapLocalStorageHelper;->sInstance:Lcom/nuance/swype/inapp/CatalogManager$PriceMapLocalStorageHelper;

    if-nez v0, :cond_0

    .line 1248
    new-instance v0, Lcom/nuance/swype/inapp/CatalogManager$PriceMapLocalStorageHelper;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nuance/swype/inapp/CatalogManager$PriceMapLocalStorageHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/nuance/swype/inapp/CatalogManager$PriceMapLocalStorageHelper;->sInstance:Lcom/nuance/swype/inapp/CatalogManager$PriceMapLocalStorageHelper;

    .line 1250
    :cond_0
    sget-object v0, Lcom/nuance/swype/inapp/CatalogManager$PriceMapLocalStorageHelper;->sInstance:Lcom/nuance/swype/inapp/CatalogManager$PriceMapLocalStorageHelper;

    return-object v0
.end method

.method static logMessage(Ljava/lang/String;Ljava/util/concurrent/ConcurrentHashMap;)V
    .locals 8
    .param p0, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "priceMap":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1260
    sget-object v1, Lcom/nuance/swype/inapp/CatalogManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v2, v7, [Ljava/lang/Object;

    aput-object p0, v2, v6

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1261
    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1262
    .local v0, "sku":Ljava/lang/String;
    sget-object v2, Lcom/nuance/swype/inapp/CatalogManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "\t"

    aput-object v4, v3, v6

    aput-object v0, v3, v7

    const/4 v4, 0x2

    const-string/jumbo v5, ": "

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    goto :goto_0

    .line 1264
    .end local v0    # "sku":Ljava/lang/String;
    :cond_0
    return-void
.end method
