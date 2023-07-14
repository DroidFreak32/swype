.class public Lcom/facebook/internal/ImageDownloader;
.super Ljava/lang/Object;
.source "ImageDownloader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/internal/ImageDownloader$DownloadImageWorkItem;,
        Lcom/facebook/internal/ImageDownloader$CacheReadWorkItem;,
        Lcom/facebook/internal/ImageDownloader$DownloaderContext;,
        Lcom/facebook/internal/ImageDownloader$RequestKey;
    }
.end annotation


# static fields
.field private static final CACHE_READ_QUEUE_MAX_CONCURRENT:I = 0x2

.field private static final DOWNLOAD_QUEUE_MAX_CONCURRENT:I = 0x8

.field private static cacheReadQueue:Lcom/facebook/internal/WorkQueue;

.field private static downloadQueue:Lcom/facebook/internal/WorkQueue;

.field private static handler:Landroid/os/Handler;

.field private static final pendingRequests:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/facebook/internal/ImageDownloader$RequestKey;",
            "Lcom/facebook/internal/ImageDownloader$DownloaderContext;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 51
    new-instance v0, Lcom/facebook/internal/WorkQueue;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/facebook/internal/WorkQueue;-><init>(I)V

    sput-object v0, Lcom/facebook/internal/ImageDownloader;->downloadQueue:Lcom/facebook/internal/WorkQueue;

    .line 52
    new-instance v0, Lcom/facebook/internal/WorkQueue;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/facebook/internal/WorkQueue;-><init>(I)V

    sput-object v0, Lcom/facebook/internal/ImageDownloader;->cacheReadQueue:Lcom/facebook/internal/WorkQueue;

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/facebook/internal/ImageDownloader;->pendingRequests:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 368
    return-void
.end method

.method static synthetic access$100(Lcom/facebook/internal/ImageDownloader$RequestKey;Landroid/content/Context;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/facebook/internal/ImageDownloader$RequestKey;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Z

    .prologue
    .line 47
    invoke-static {p0, p1, p2}, Lcom/facebook/internal/ImageDownloader;->readFromCache(Lcom/facebook/internal/ImageDownloader$RequestKey;Landroid/content/Context;Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/facebook/internal/ImageDownloader$RequestKey;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/facebook/internal/ImageDownloader$RequestKey;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 47
    invoke-static {p0, p1}, Lcom/facebook/internal/ImageDownloader;->download(Lcom/facebook/internal/ImageDownloader$RequestKey;Landroid/content/Context;)V

    return-void
.end method

.method public static cancelRequest(Lcom/facebook/internal/ImageRequest;)Z
    .locals 5
    .param p0, "request"    # Lcom/facebook/internal/ImageRequest;

    .prologue
    .line 86
    const/4 v0, 0x0

    .line 87
    .local v0, "cancelled":Z
    new-instance v2, Lcom/facebook/internal/ImageDownloader$RequestKey;

    invoke-virtual {p0}, Lcom/facebook/internal/ImageRequest;->getImageUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {p0}, Lcom/facebook/internal/ImageRequest;->getCallerTag()Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/facebook/internal/ImageDownloader$RequestKey;-><init>(Landroid/net/Uri;Ljava/lang/Object;)V

    .line 88
    .local v2, "key":Lcom/facebook/internal/ImageDownloader$RequestKey;
    sget-object v4, Lcom/facebook/internal/ImageDownloader;->pendingRequests:Ljava/util/Map;

    monitor-enter v4

    .line 89
    :try_start_0
    sget-object v3, Lcom/facebook/internal/ImageDownloader;->pendingRequests:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/internal/ImageDownloader$DownloaderContext;

    .line 90
    .local v1, "downloaderContext":Lcom/facebook/internal/ImageDownloader$DownloaderContext;
    if-eqz v1, :cond_0

    .line 95
    const/4 v0, 0x1

    .line 97
    iget-object v3, v1, Lcom/facebook/internal/ImageDownloader$DownloaderContext;->workItem:Lcom/facebook/internal/WorkQueue$WorkItem;

    invoke-interface {v3}, Lcom/facebook/internal/WorkQueue$WorkItem;->cancel()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 98
    sget-object v3, Lcom/facebook/internal/ImageDownloader;->pendingRequests:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    :cond_0
    :goto_0
    monitor-exit v4

    .line 107
    return v0

    .line 102
    :cond_1
    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/facebook/internal/ImageDownloader$DownloaderContext;->isCancelled:Z

    goto :goto_0

    .line 105
    .end local v1    # "downloaderContext":Lcom/facebook/internal/ImageDownloader$DownloaderContext;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public static clearCache(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 121
    invoke-static {p0}, Lcom/facebook/internal/ImageResponseCache;->clearCache(Landroid/content/Context;)V

    .line 122
    invoke-static {}, Lcom/facebook/internal/UrlRedirectCache;->clearCache()V

    .line 123
    return-void
.end method

.method private static download(Lcom/facebook/internal/ImageDownloader$RequestKey;Landroid/content/Context;)V
    .locals 16
    .param p0, "key"    # Lcom/facebook/internal/ImageDownloader$RequestKey;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 227
    const/4 v4, 0x0

    .line 228
    .local v4, "connection":Ljava/net/HttpURLConnection;
    const/4 v12, 0x0

    .line 229
    .local v12, "stream":Ljava/io/InputStream;
    const/4 v6, 0x0

    .line 230
    .local v6, "error":Ljava/lang/Exception;
    const/4 v1, 0x0

    .line 231
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    const/4 v8, 0x1

    .line 234
    .local v8, "issueResponse":Z
    :try_start_0
    new-instance v13, Ljava/net/URL;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/facebook/internal/ImageDownloader$RequestKey;->uri:Landroid/net/Uri;

    invoke-virtual {v14}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 235
    invoke-virtual {v13}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v13

    move-object v0, v13

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v4, v0

    .line 236
    const/4 v13, 0x0

    invoke-virtual {v4, v13}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 238
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v13

    sparse-switch v13, :sswitch_data_0

    .line 268
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v12

    .line 269
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 270
    .local v7, "errorMessageBuilder":Ljava/lang/StringBuilder;
    if-eqz v12, :cond_3

    .line 271
    new-instance v9, Ljava/io/InputStreamReader;

    invoke-direct {v9, v12}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 272
    .local v9, "reader":Ljava/io/InputStreamReader;
    const/16 v13, 0x80

    new-array v2, v13, [C

    .line 274
    .local v2, "buffer":[C
    :goto_0
    const/4 v13, 0x0

    const/16 v14, 0x80

    invoke-virtual {v9, v2, v13, v14}, Ljava/io/InputStreamReader;->read([CII)I

    move-result v3

    .local v3, "bufferLength":I
    if-lez v3, :cond_2

    .line 275
    const/4 v13, 0x0

    invoke-virtual {v7, v2, v13, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 286
    .end local v2    # "buffer":[C
    .end local v3    # "bufferLength":I
    .end local v6    # "error":Ljava/lang/Exception;
    .end local v7    # "errorMessageBuilder":Ljava/lang/StringBuilder;
    .end local v9    # "reader":Ljava/io/InputStreamReader;
    :catch_0
    move-exception v6

    .line 288
    .restart local v6    # "error":Ljava/lang/Exception;
    invoke-static {v12}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    .line 289
    invoke-static {v4}, Lcom/facebook/internal/Utility;->disconnectQuietly(Ljava/net/URLConnection;)V

    .line 292
    :goto_1
    if-eqz v8, :cond_0

    .line 293
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v6, v1, v13}, Lcom/facebook/internal/ImageDownloader;->issueResponse(Lcom/facebook/internal/ImageDownloader$RequestKey;Ljava/lang/Exception;Landroid/graphics/Bitmap;Z)V

    .line 295
    :cond_0
    return-void

    .line 242
    :sswitch_0
    const/4 v8, 0x0

    .line 244
    :try_start_1
    const-string/jumbo v13, "location"

    invoke-virtual {v4, v13}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 245
    .local v10, "redirectLocation":Ljava/lang/String;
    invoke-static {v10}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_1

    .line 246
    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    .line 247
    .local v11, "redirectUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/facebook/internal/ImageDownloader$RequestKey;->uri:Landroid/net/Uri;

    invoke-static {v13, v11}, Lcom/facebook/internal/UrlRedirectCache;->cacheUriRedirect(Landroid/net/Uri;Landroid/net/Uri;)V

    .line 251
    invoke-static/range {p0 .. p0}, Lcom/facebook/internal/ImageDownloader;->removePendingRequest(Lcom/facebook/internal/ImageDownloader$RequestKey;)Lcom/facebook/internal/ImageDownloader$DownloaderContext;

    move-result-object v5

    .line 252
    .local v5, "downloaderContext":Lcom/facebook/internal/ImageDownloader$DownloaderContext;
    if-eqz v5, :cond_1

    iget-boolean v13, v5, Lcom/facebook/internal/ImageDownloader$DownloaderContext;->isCancelled:Z

    if-nez v13, :cond_1

    .line 253
    iget-object v13, v5, Lcom/facebook/internal/ImageDownloader$DownloaderContext;->request:Lcom/facebook/internal/ImageRequest;

    new-instance v14, Lcom/facebook/internal/ImageDownloader$RequestKey;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/facebook/internal/ImageDownloader$RequestKey;->tag:Ljava/lang/Object;

    invoke-direct {v14, v11, v15}, Lcom/facebook/internal/ImageDownloader$RequestKey;-><init>(Landroid/net/Uri;Ljava/lang/Object;)V

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Lcom/facebook/internal/ImageDownloader;->enqueueCacheRead(Lcom/facebook/internal/ImageRequest;Lcom/facebook/internal/ImageDownloader$RequestKey;Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 288
    .end local v5    # "downloaderContext":Lcom/facebook/internal/ImageDownloader$DownloaderContext;
    .end local v10    # "redirectLocation":Ljava/lang/String;
    .end local v11    # "redirectUri":Landroid/net/Uri;
    :cond_1
    :goto_2
    invoke-static {v12}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    .line 289
    invoke-static {v4}, Lcom/facebook/internal/Utility;->disconnectQuietly(Ljava/net/URLConnection;)V

    goto :goto_1

    .line 263
    :sswitch_1
    :try_start_2
    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/facebook/internal/ImageResponseCache;->interceptAndCacheImageStream(Landroid/content/Context;Ljava/net/HttpURLConnection;)Ljava/io/InputStream;

    move-result-object v12

    .line 264
    invoke-static {v12}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 265
    goto :goto_2

    .line 277
    .restart local v2    # "buffer":[C
    .restart local v3    # "bufferLength":I
    .restart local v7    # "errorMessageBuilder":Ljava/lang/StringBuilder;
    .restart local v9    # "reader":Ljava/io/InputStreamReader;
    :cond_2
    invoke-static {v9}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    .line 282
    .end local v2    # "buffer":[C
    .end local v3    # "bufferLength":I
    .end local v9    # "reader":Ljava/io/InputStreamReader;
    :goto_3
    new-instance v6, Lcom/facebook/FacebookException;

    .end local v6    # "error":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v6, v13}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    .restart local v6    # "error":Ljava/lang/Exception;
    goto :goto_2

    .line 279
    :cond_3
    sget v13, Lcom/facebook/R$string;->com_facebook_image_download_unknown_error:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 288
    .end local v6    # "error":Ljava/lang/Exception;
    .end local v7    # "errorMessageBuilder":Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v13

    invoke-static {v12}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    .line 289
    invoke-static {v4}, Lcom/facebook/internal/Utility;->disconnectQuietly(Ljava/net/URLConnection;)V

    throw v13

    .line 238
    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_1
        0x12d -> :sswitch_0
        0x12e -> :sswitch_0
    .end sparse-switch
.end method

.method public static downloadAsync(Lcom/facebook/internal/ImageRequest;)V
    .locals 4
    .param p0, "request"    # Lcom/facebook/internal/ImageRequest;

    .prologue
    .line 62
    if-nez p0, :cond_0

    .line 82
    :goto_0
    return-void

    .line 72
    :cond_0
    new-instance v1, Lcom/facebook/internal/ImageDownloader$RequestKey;

    invoke-virtual {p0}, Lcom/facebook/internal/ImageRequest;->getImageUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p0}, Lcom/facebook/internal/ImageRequest;->getCallerTag()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/facebook/internal/ImageDownloader$RequestKey;-><init>(Landroid/net/Uri;Ljava/lang/Object;)V

    .line 73
    .local v1, "key":Lcom/facebook/internal/ImageDownloader$RequestKey;
    sget-object v3, Lcom/facebook/internal/ImageDownloader;->pendingRequests:Ljava/util/Map;

    monitor-enter v3

    .line 74
    :try_start_0
    sget-object v2, Lcom/facebook/internal/ImageDownloader;->pendingRequests:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/internal/ImageDownloader$DownloaderContext;

    .line 75
    .local v0, "downloaderContext":Lcom/facebook/internal/ImageDownloader$DownloaderContext;
    if-eqz v0, :cond_1

    .line 76
    iput-object p0, v0, Lcom/facebook/internal/ImageDownloader$DownloaderContext;->request:Lcom/facebook/internal/ImageRequest;

    .line 77
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/facebook/internal/ImageDownloader$DownloaderContext;->isCancelled:Z

    .line 78
    iget-object v2, v0, Lcom/facebook/internal/ImageDownloader$DownloaderContext;->workItem:Lcom/facebook/internal/WorkQueue$WorkItem;

    invoke-interface {v2}, Lcom/facebook/internal/WorkQueue$WorkItem;->moveToFront()V

    .line 82
    :goto_1
    monitor-exit v3

    goto :goto_0

    .end local v0    # "downloaderContext":Lcom/facebook/internal/ImageDownloader$DownloaderContext;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 80
    .restart local v0    # "downloaderContext":Lcom/facebook/internal/ImageDownloader$DownloaderContext;
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/facebook/internal/ImageRequest;->isCachedRedirectAllowed()Z

    move-result v2

    invoke-static {p0, v1, v2}, Lcom/facebook/internal/ImageDownloader;->enqueueCacheRead(Lcom/facebook/internal/ImageRequest;Lcom/facebook/internal/ImageDownloader$RequestKey;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private static enqueueCacheRead(Lcom/facebook/internal/ImageRequest;Lcom/facebook/internal/ImageDownloader$RequestKey;Z)V
    .locals 3
    .param p0, "request"    # Lcom/facebook/internal/ImageRequest;
    .param p1, "key"    # Lcom/facebook/internal/ImageDownloader$RequestKey;
    .param p2, "allowCachedRedirects"    # Z

    .prologue
    .line 129
    sget-object v0, Lcom/facebook/internal/ImageDownloader;->cacheReadQueue:Lcom/facebook/internal/WorkQueue;

    new-instance v1, Lcom/facebook/internal/ImageDownloader$CacheReadWorkItem;

    invoke-virtual {p0}, Lcom/facebook/internal/ImageRequest;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Lcom/facebook/internal/ImageDownloader$CacheReadWorkItem;-><init>(Landroid/content/Context;Lcom/facebook/internal/ImageDownloader$RequestKey;Z)V

    invoke-static {p0, p1, v0, v1}, Lcom/facebook/internal/ImageDownloader;->enqueueRequest(Lcom/facebook/internal/ImageRequest;Lcom/facebook/internal/ImageDownloader$RequestKey;Lcom/facebook/internal/WorkQueue;Ljava/lang/Runnable;)V

    .line 134
    return-void
.end method

.method private static enqueueDownload(Lcom/facebook/internal/ImageRequest;Lcom/facebook/internal/ImageDownloader$RequestKey;)V
    .locals 3
    .param p0, "request"    # Lcom/facebook/internal/ImageRequest;
    .param p1, "key"    # Lcom/facebook/internal/ImageDownloader$RequestKey;

    .prologue
    .line 137
    sget-object v0, Lcom/facebook/internal/ImageDownloader;->downloadQueue:Lcom/facebook/internal/WorkQueue;

    new-instance v1, Lcom/facebook/internal/ImageDownloader$DownloadImageWorkItem;

    invoke-virtual {p0}, Lcom/facebook/internal/ImageRequest;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lcom/facebook/internal/ImageDownloader$DownloadImageWorkItem;-><init>(Landroid/content/Context;Lcom/facebook/internal/ImageDownloader$RequestKey;)V

    invoke-static {p0, p1, v0, v1}, Lcom/facebook/internal/ImageDownloader;->enqueueRequest(Lcom/facebook/internal/ImageRequest;Lcom/facebook/internal/ImageDownloader$RequestKey;Lcom/facebook/internal/WorkQueue;Ljava/lang/Runnable;)V

    .line 142
    return-void
.end method

.method private static enqueueRequest(Lcom/facebook/internal/ImageRequest;Lcom/facebook/internal/ImageDownloader$RequestKey;Lcom/facebook/internal/WorkQueue;Ljava/lang/Runnable;)V
    .locals 3
    .param p0, "request"    # Lcom/facebook/internal/ImageRequest;
    .param p1, "key"    # Lcom/facebook/internal/ImageDownloader$RequestKey;
    .param p2, "workQueue"    # Lcom/facebook/internal/WorkQueue;
    .param p3, "workItem"    # Ljava/lang/Runnable;

    .prologue
    .line 149
    sget-object v2, Lcom/facebook/internal/ImageDownloader;->pendingRequests:Ljava/util/Map;

    monitor-enter v2

    .line 150
    :try_start_0
    new-instance v0, Lcom/facebook/internal/ImageDownloader$DownloaderContext;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/internal/ImageDownloader$DownloaderContext;-><init>(Lcom/facebook/internal/ImageDownloader$1;)V

    .line 151
    .local v0, "downloaderContext":Lcom/facebook/internal/ImageDownloader$DownloaderContext;
    iput-object p0, v0, Lcom/facebook/internal/ImageDownloader$DownloaderContext;->request:Lcom/facebook/internal/ImageRequest;

    .line 152
    sget-object v1, Lcom/facebook/internal/ImageDownloader;->pendingRequests:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    invoke-virtual {p2, p3}, Lcom/facebook/internal/WorkQueue;->addActiveWorkItem(Ljava/lang/Runnable;)Lcom/facebook/internal/WorkQueue$WorkItem;

    move-result-object v1

    iput-object v1, v0, Lcom/facebook/internal/ImageDownloader$DownloaderContext;->workItem:Lcom/facebook/internal/WorkQueue$WorkItem;

    .line 163
    monitor-exit v2

    return-void

    .end local v0    # "downloaderContext":Lcom/facebook/internal/ImageDownloader$DownloaderContext;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static declared-synchronized getHandler()Landroid/os/Handler;
    .locals 3

    .prologue
    .line 298
    const-class v1, Lcom/facebook/internal/ImageDownloader;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/facebook/internal/ImageDownloader;->handler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 299
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/facebook/internal/ImageDownloader;->handler:Landroid/os/Handler;

    .line 301
    :cond_0
    sget-object v0, Lcom/facebook/internal/ImageDownloader;->handler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 298
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static issueResponse(Lcom/facebook/internal/ImageDownloader$RequestKey;Ljava/lang/Exception;Landroid/graphics/Bitmap;Z)V
    .locals 8
    .param p0, "key"    # Lcom/facebook/internal/ImageDownloader$RequestKey;
    .param p1, "error"    # Ljava/lang/Exception;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "isCachedRedirect"    # Z

    .prologue
    .line 173
    invoke-static {p0}, Lcom/facebook/internal/ImageDownloader;->removePendingRequest(Lcom/facebook/internal/ImageDownloader$RequestKey;)Lcom/facebook/internal/ImageDownloader$DownloaderContext;

    move-result-object v6

    .line 174
    .local v6, "completedRequestContext":Lcom/facebook/internal/ImageDownloader$DownloaderContext;
    if-eqz v6, :cond_0

    iget-boolean v0, v6, Lcom/facebook/internal/ImageDownloader$DownloaderContext;->isCancelled:Z

    if-nez v0, :cond_0

    .line 175
    iget-object v1, v6, Lcom/facebook/internal/ImageDownloader$DownloaderContext;->request:Lcom/facebook/internal/ImageRequest;

    .line 176
    .local v1, "request":Lcom/facebook/internal/ImageRequest;
    invoke-virtual {v1}, Lcom/facebook/internal/ImageRequest;->getCallback()Lcom/facebook/internal/ImageRequest$Callback;

    move-result-object v5

    .line 177
    .local v5, "callback":Lcom/facebook/internal/ImageRequest$Callback;
    if-eqz v5, :cond_0

    .line 178
    invoke-static {}, Lcom/facebook/internal/ImageDownloader;->getHandler()Landroid/os/Handler;

    move-result-object v7

    new-instance v0, Lcom/facebook/internal/ImageDownloader$1;

    move-object v2, p1

    move v3, p3

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/internal/ImageDownloader$1;-><init>(Lcom/facebook/internal/ImageRequest;Ljava/lang/Exception;ZLandroid/graphics/Bitmap;Lcom/facebook/internal/ImageRequest$Callback;)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 191
    .end local v1    # "request":Lcom/facebook/internal/ImageRequest;
    .end local v5    # "callback":Lcom/facebook/internal/ImageRequest$Callback;
    :cond_0
    return-void
.end method

.method public static prioritizeRequest(Lcom/facebook/internal/ImageRequest;)V
    .locals 4
    .param p0, "request"    # Lcom/facebook/internal/ImageRequest;

    .prologue
    .line 111
    new-instance v1, Lcom/facebook/internal/ImageDownloader$RequestKey;

    invoke-virtual {p0}, Lcom/facebook/internal/ImageRequest;->getImageUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p0}, Lcom/facebook/internal/ImageRequest;->getCallerTag()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/facebook/internal/ImageDownloader$RequestKey;-><init>(Landroid/net/Uri;Ljava/lang/Object;)V

    .line 112
    .local v1, "key":Lcom/facebook/internal/ImageDownloader$RequestKey;
    sget-object v3, Lcom/facebook/internal/ImageDownloader;->pendingRequests:Ljava/util/Map;

    monitor-enter v3

    .line 113
    :try_start_0
    sget-object v2, Lcom/facebook/internal/ImageDownloader;->pendingRequests:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/internal/ImageDownloader$DownloaderContext;

    .line 114
    .local v0, "downloaderContext":Lcom/facebook/internal/ImageDownloader$DownloaderContext;
    if-eqz v0, :cond_0

    .line 115
    iget-object v2, v0, Lcom/facebook/internal/ImageDownloader$DownloaderContext;->workItem:Lcom/facebook/internal/WorkQueue$WorkItem;

    invoke-interface {v2}, Lcom/facebook/internal/WorkQueue$WorkItem;->moveToFront()V

    .line 117
    :cond_0
    monitor-exit v3

    return-void

    .end local v0    # "downloaderContext":Lcom/facebook/internal/ImageDownloader$DownloaderContext;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private static readFromCache(Lcom/facebook/internal/ImageDownloader$RequestKey;Landroid/content/Context;Z)V
    .locals 6
    .param p0, "key"    # Lcom/facebook/internal/ImageDownloader$RequestKey;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "allowCachedRedirects"    # Z

    .prologue
    .line 197
    const/4 v1, 0x0

    .line 198
    .local v1, "cachedStream":Ljava/io/InputStream;
    const/4 v3, 0x0

    .line 199
    .local v3, "isCachedRedirect":Z
    if-eqz p2, :cond_0

    .line 200
    iget-object v5, p0, Lcom/facebook/internal/ImageDownloader$RequestKey;->uri:Landroid/net/Uri;

    invoke-static {v5}, Lcom/facebook/internal/UrlRedirectCache;->getRedirectedUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v4

    .line 201
    .local v4, "redirectUri":Landroid/net/Uri;
    if-eqz v4, :cond_0

    .line 202
    invoke-static {v4, p1}, Lcom/facebook/internal/ImageResponseCache;->getCachedImageStream(Landroid/net/Uri;Landroid/content/Context;)Ljava/io/InputStream;

    move-result-object v1

    .line 203
    if-eqz v1, :cond_3

    const/4 v3, 0x1

    .line 207
    .end local v4    # "redirectUri":Landroid/net/Uri;
    :cond_0
    :goto_0
    if-nez v3, :cond_1

    .line 208
    iget-object v5, p0, Lcom/facebook/internal/ImageDownloader$RequestKey;->uri:Landroid/net/Uri;

    invoke-static {v5, p1}, Lcom/facebook/internal/ImageResponseCache;->getCachedImageStream(Landroid/net/Uri;Landroid/content/Context;)Ljava/io/InputStream;

    move-result-object v1

    .line 211
    :cond_1
    if-eqz v1, :cond_4

    .line 213
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 214
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    .line 215
    const/4 v5, 0x0

    invoke-static {p0, v5, v0, v3}, Lcom/facebook/internal/ImageDownloader;->issueResponse(Lcom/facebook/internal/ImageDownloader$RequestKey;Ljava/lang/Exception;Landroid/graphics/Bitmap;Z)V

    .line 224
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_2
    :goto_1
    return-void

    .line 203
    .restart local v4    # "redirectUri":Landroid/net/Uri;
    :cond_3
    const/4 v3, 0x0

    goto :goto_0

    .line 219
    .end local v4    # "redirectUri":Landroid/net/Uri;
    :cond_4
    invoke-static {p0}, Lcom/facebook/internal/ImageDownloader;->removePendingRequest(Lcom/facebook/internal/ImageDownloader$RequestKey;)Lcom/facebook/internal/ImageDownloader$DownloaderContext;

    move-result-object v2

    .line 220
    .local v2, "downloaderContext":Lcom/facebook/internal/ImageDownloader$DownloaderContext;
    if-eqz v2, :cond_2

    iget-boolean v5, v2, Lcom/facebook/internal/ImageDownloader$DownloaderContext;->isCancelled:Z

    if-nez v5, :cond_2

    .line 221
    iget-object v5, v2, Lcom/facebook/internal/ImageDownloader$DownloaderContext;->request:Lcom/facebook/internal/ImageRequest;

    invoke-static {v5, p0}, Lcom/facebook/internal/ImageDownloader;->enqueueDownload(Lcom/facebook/internal/ImageRequest;Lcom/facebook/internal/ImageDownloader$RequestKey;)V

    goto :goto_1
.end method

.method private static removePendingRequest(Lcom/facebook/internal/ImageDownloader$RequestKey;)Lcom/facebook/internal/ImageDownloader$DownloaderContext;
    .locals 2
    .param p0, "key"    # Lcom/facebook/internal/ImageDownloader$RequestKey;

    .prologue
    .line 305
    sget-object v1, Lcom/facebook/internal/ImageDownloader;->pendingRequests:Ljava/util/Map;

    monitor-enter v1

    .line 306
    :try_start_0
    sget-object v0, Lcom/facebook/internal/ImageDownloader;->pendingRequests:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/internal/ImageDownloader$DownloaderContext;

    monitor-exit v1

    return-object v0

    .line 307
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
