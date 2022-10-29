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
    .registers 4
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
    .registers 10
    .param p0, "x0"    # Lcom/nuance/swype/inapp/CatalogManager$PriceMapLocalStorageHelper;

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1239
    .line 2322
    :try_start_3
    iget-object v0, p0, Lcom/nuance/swype/inapp/CatalogManager$PriceMapLocalStorageHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "price.map"

    invoke-virtual {v0, v1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_b} :catch_50
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_b} :catch_89
    .catch Ljava/io/OptionalDataException; {:try_start_3 .. :try_end_b} :catch_c4
    .catch Ljava/io/StreamCorruptedException; {:try_start_3 .. :try_end_b} :catch_100
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_b} :catch_13c
    .catchall {:try_start_3 .. :try_end_b} :catchall_178

    move-result-object v3

    .line 2323
    :try_start_c
    new-instance v1, Ljava/io/ObjectInputStream;

    invoke-direct {v1, v3}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_11
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_11} :catch_1be
    .catch Ljava/lang/ClassNotFoundException; {:try_start_c .. :try_end_11} :catch_1b7
    .catch Ljava/io/OptionalDataException; {:try_start_c .. :try_end_11} :catch_1b0
    .catch Ljava/io/StreamCorruptedException; {:try_start_c .. :try_end_11} :catch_1a9
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_11} :catch_1a4
    .catchall {:try_start_c .. :try_end_11} :catchall_19c

    .line 2324
    :try_start_11
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    .line 2325
    if-eqz v0, :cond_31

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
    :try_end_31
    .catch Ljava/io/FileNotFoundException; {:try_start_11 .. :try_end_31} :catch_1c3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_11 .. :try_end_31} :catch_1bb
    .catch Ljava/io/OptionalDataException; {:try_start_11 .. :try_end_31} :catch_1b4
    .catch Ljava/io/StreamCorruptedException; {:try_start_11 .. :try_end_31} :catch_1ad
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_31} :catch_1a7
    .catchall {:try_start_11 .. :try_end_31} :catchall_19f

    .line 2342
    :cond_31
    :try_start_31
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V

    .line 2344
    if-eqz v3, :cond_39

    .line 2345
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_39} :catch_3a

    .line 2350
    :cond_39
    :goto_39
    return-void

    .line 2347
    :catch_3a
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

    goto :goto_39

    .line 2329
    :catch_50
    move-exception v0

    move-object v1, v2

    .line 2330
    :goto_52
    :try_start_52
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
    :try_end_68
    .catchall {:try_start_52 .. :try_end_68} :catchall_1a1

    .line 2341
    if-eqz v1, :cond_6d

    .line 2342
    :try_start_6a
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V

    .line 2344
    :cond_6d
    if-eqz v2, :cond_39

    .line 2345
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_72
    .catch Ljava/io/IOException; {:try_start_6a .. :try_end_72} :catch_73

    goto :goto_39

    .line 2347
    :catch_73
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

    goto :goto_39

    .line 2331
    :catch_89
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    .line 2332
    :goto_8c
    :try_start_8c
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
    :try_end_a2
    .catchall {:try_start_8c .. :try_end_a2} :catchall_19f

    .line 2341
    if-eqz v1, :cond_a7

    .line 2342
    :try_start_a4
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V

    .line 2344
    :cond_a7
    if-eqz v3, :cond_39

    .line 2345
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_ac
    .catch Ljava/io/IOException; {:try_start_a4 .. :try_end_ac} :catch_ad

    goto :goto_39

    .line 2347
    :catch_ad
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

    goto/16 :goto_39

    .line 2333
    :catch_c4
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    .line 2334
    :goto_c7
    :try_start_c7
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
    :try_end_dd
    .catchall {:try_start_c7 .. :try_end_dd} :catchall_19f

    .line 2341
    if-eqz v1, :cond_e2

    .line 2342
    :try_start_df
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V

    .line 2344
    :cond_e2
    if-eqz v3, :cond_39

    .line 2345
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_e7
    .catch Ljava/io/IOException; {:try_start_df .. :try_end_e7} :catch_e9

    goto/16 :goto_39

    .line 2347
    :catch_e9
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

    goto/16 :goto_39

    .line 2335
    :catch_100
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    .line 2336
    :goto_103
    :try_start_103
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
    :try_end_119
    .catchall {:try_start_103 .. :try_end_119} :catchall_19f

    .line 2341
    if-eqz v1, :cond_11e

    .line 2342
    :try_start_11b
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V

    .line 2344
    :cond_11e
    if-eqz v3, :cond_39

    .line 2345
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_123
    .catch Ljava/io/IOException; {:try_start_11b .. :try_end_123} :catch_125

    goto/16 :goto_39

    .line 2347
    :catch_125
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

    goto/16 :goto_39

    .line 2337
    :catch_13c
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    .line 2338
    :goto_13f
    :try_start_13f
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
    :try_end_155
    .catchall {:try_start_13f .. :try_end_155} :catchall_19f

    .line 2341
    if-eqz v1, :cond_15a

    .line 2342
    :try_start_157
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V

    .line 2344
    :cond_15a
    if-eqz v3, :cond_39

    .line 2345
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_15f
    .catch Ljava/io/IOException; {:try_start_157 .. :try_end_15f} :catch_161

    goto/16 :goto_39

    .line 2347
    :catch_161
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

    goto/16 :goto_39

    .line 2340
    :catchall_178
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    .line 2341
    :goto_17b
    if-eqz v1, :cond_180

    .line 2342
    :try_start_17d
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V

    .line 2344
    :cond_180
    if-eqz v3, :cond_185

    .line 2345
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_185
    .catch Ljava/io/IOException; {:try_start_17d .. :try_end_185} :catch_186

    .line 2349
    :cond_185
    :goto_185
    throw v0

    .line 2347
    :catch_186
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

    goto :goto_185

    .line 2340
    :catchall_19c
    move-exception v0

    move-object v1, v2

    goto :goto_17b

    :catchall_19f
    move-exception v0

    goto :goto_17b

    :catchall_1a1
    move-exception v0

    move-object v3, v2

    goto :goto_17b

    .line 2337
    :catch_1a4
    move-exception v0

    move-object v1, v2

    goto :goto_13f

    :catch_1a7
    move-exception v0

    goto :goto_13f

    .line 2335
    :catch_1a9
    move-exception v0

    move-object v1, v2

    goto/16 :goto_103

    :catch_1ad
    move-exception v0

    goto/16 :goto_103

    .line 2333
    :catch_1b0
    move-exception v0

    move-object v1, v2

    goto/16 :goto_c7

    :catch_1b4
    move-exception v0

    goto/16 :goto_c7

    .line 2331
    :catch_1b7
    move-exception v0

    move-object v1, v2

    goto/16 :goto_8c

    :catch_1bb
    move-exception v0

    goto/16 :goto_8c

    .line 2329
    :catch_1be
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto/16 :goto_52

    :catch_1c3
    move-exception v0

    move-object v2, v3

    goto/16 :goto_52
.end method

.method static synthetic access$1700(Lcom/nuance/swype/inapp/CatalogManager$PriceMapLocalStorageHelper;)V
    .registers 10
    .param p0, "x0"    # Lcom/nuance/swype/inapp/CatalogManager$PriceMapLocalStorageHelper;

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1239
    .line 3296
    :try_start_3
    iget-object v0, p0, Lcom/nuance/swype/inapp/CatalogManager$PriceMapLocalStorageHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "price.map"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_c} :catch_44
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_c} :catch_7d
    .catchall {:try_start_3 .. :try_end_c} :catchall_b8

    move-result-object v3

    .line 3297
    :try_start_d
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v3}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_12
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_12} :catch_e9
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_12} :catch_e4
    .catchall {:try_start_d .. :try_end_12} :catchall_dc

    .line 3298
    :try_start_12
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
    :try_end_25
    .catch Ljava/io/FileNotFoundException; {:try_start_12 .. :try_end_25} :catch_ee
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_25} :catch_e7
    .catchall {:try_start_12 .. :try_end_25} :catchall_df

    .line 3307
    :try_start_25
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    .line 3309
    if-eqz v3, :cond_2d

    .line 3310
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_2d} :catch_2e

    .line 3315
    :cond_2d
    :goto_2d
    return-void

    .line 3312
    :catch_2e
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

    goto :goto_2d

    .line 3300
    :catch_44
    move-exception v0

    move-object v1, v2

    .line 3301
    :goto_46
    :try_start_46
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
    :try_end_5c
    .catchall {:try_start_46 .. :try_end_5c} :catchall_e1

    .line 3306
    if-eqz v1, :cond_61

    .line 3307
    :try_start_5e
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    .line 3309
    :cond_61
    if-eqz v2, :cond_2d

    .line 3310
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_66} :catch_67

    goto :goto_2d

    .line 3312
    :catch_67
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

    goto :goto_2d

    .line 3302
    :catch_7d
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    .line 3303
    :goto_80
    :try_start_80
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
    :try_end_96
    .catchall {:try_start_80 .. :try_end_96} :catchall_df

    .line 3306
    if-eqz v1, :cond_9b

    .line 3307
    :try_start_98
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    .line 3309
    :cond_9b
    if-eqz v3, :cond_2d

    .line 3310
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_a0
    .catch Ljava/io/IOException; {:try_start_98 .. :try_end_a0} :catch_a1

    goto :goto_2d

    .line 3312
    :catch_a1
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

    goto/16 :goto_2d

    .line 3305
    :catchall_b8
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    .line 3306
    :goto_bb
    if-eqz v1, :cond_c0

    .line 3307
    :try_start_bd
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    .line 3309
    :cond_c0
    if-eqz v3, :cond_c5

    .line 3310
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_c5
    .catch Ljava/io/IOException; {:try_start_bd .. :try_end_c5} :catch_c6

    .line 3314
    :cond_c5
    :goto_c5
    throw v0

    .line 3312
    :catch_c6
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

    goto :goto_c5

    .line 3305
    :catchall_dc
    move-exception v0

    move-object v1, v2

    goto :goto_bb

    :catchall_df
    move-exception v0

    goto :goto_bb

    :catchall_e1
    move-exception v0

    move-object v3, v2

    goto :goto_bb

    .line 3302
    :catch_e4
    move-exception v0

    move-object v1, v2

    goto :goto_80

    :catch_e7
    move-exception v0

    goto :goto_80

    .line 3300
    :catch_e9
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto/16 :goto_46

    :catch_ee
    move-exception v0

    move-object v2, v3

    goto/16 :goto_46
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/nuance/swype/inapp/CatalogManager$PriceMapLocalStorageHelper;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1247
    sget-object v0, Lcom/nuance/swype/inapp/CatalogManager$PriceMapLocalStorageHelper;->sInstance:Lcom/nuance/swype/inapp/CatalogManager$PriceMapLocalStorageHelper;

    if-nez v0, :cond_f

    .line 1248
    new-instance v0, Lcom/nuance/swype/inapp/CatalogManager$PriceMapLocalStorageHelper;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nuance/swype/inapp/CatalogManager$PriceMapLocalStorageHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/nuance/swype/inapp/CatalogManager$PriceMapLocalStorageHelper;->sInstance:Lcom/nuance/swype/inapp/CatalogManager$PriceMapLocalStorageHelper;

    .line 1250
    :cond_f
    sget-object v0, Lcom/nuance/swype/inapp/CatalogManager$PriceMapLocalStorageHelper;->sInstance:Lcom/nuance/swype/inapp/CatalogManager$PriceMapLocalStorageHelper;

    return-object v0
.end method

.method static logMessage(Ljava/lang/String;Ljava/util/concurrent/ConcurrentHashMap;)V
    .registers 10
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

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3c

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

    goto :goto_13

    .line 1264
    .end local v0    # "sku":Ljava/lang/String;
    :cond_3c
    return-void
.end method
