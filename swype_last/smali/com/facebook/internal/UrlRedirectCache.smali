.class Lcom/facebook/internal/UrlRedirectCache;
.super Ljava/lang/Object;
.source "UrlRedirectCache.java"


# static fields
.field private static final REDIRECT_CONTENT_TAG:Ljava/lang/String;

.field static final TAG:Ljava/lang/String;

.field private static volatile urlRedirectCache:Lcom/facebook/internal/FileLruCache;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 38
    const-class v0, Lcom/facebook/internal/UrlRedirectCache;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/internal/UrlRedirectCache;->TAG:Ljava/lang/String;

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/facebook/internal/UrlRedirectCache;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_Redirect"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/internal/UrlRedirectCache;->REDIRECT_CONTENT_TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static cacheUriRedirect(Landroid/net/Uri;Landroid/net/Uri;)V
    .registers 6
    .param p0, "fromUri"    # Landroid/net/Uri;
    .param p1, "toUri"    # Landroid/net/Uri;

    .prologue
    .line 90
    if-eqz p0, :cond_4

    if-nez p1, :cond_5

    .line 103
    :cond_4
    :goto_4
    return-void

    .line 94
    :cond_5
    const/4 v0, 0x0

    .line 96
    .local v0, "redirectStream":Ljava/io/OutputStream;
    :try_start_6
    invoke-static {}, Lcom/facebook/internal/UrlRedirectCache;->getCache()Lcom/facebook/internal/FileLruCache;

    move-result-object v1

    .line 97
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/facebook/internal/UrlRedirectCache;->REDIRECT_CONTENT_TAG:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/facebook/internal/FileLruCache;->openPutStream(Ljava/lang/String;Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v0

    .line 98
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_1f} :catch_23
    .catchall {:try_start_6 .. :try_end_1f} :catchall_28

    .line 102
    invoke-static {v0}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_4

    :catch_23
    move-exception v1

    invoke-static {v0}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_4

    :catchall_28
    move-exception v1

    invoke-static {v0}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    throw v1
.end method

.method static clearCache()V
    .registers 6

    .prologue
    .line 108
    :try_start_0
    invoke-static {}, Lcom/facebook/internal/UrlRedirectCache;->getCache()Lcom/facebook/internal/FileLruCache;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/internal/FileLruCache;->clearCache()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_7} :catch_8

    .line 112
    .local v0, "e":Ljava/io/IOException;
    :goto_7
    return-void

    .line 109
    .end local v0    # "e":Ljava/io/IOException;
    :catch_8
    move-exception v0

    .line 110
    .restart local v0    # "e":Ljava/io/IOException;
    sget-object v1, Lcom/facebook/LoggingBehavior;->CACHE:Lcom/facebook/LoggingBehavior;

    const/4 v2, 0x5

    sget-object v3, Lcom/facebook/internal/UrlRedirectCache;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "clearCache failed "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_7
.end method

.method static declared-synchronized getCache()Lcom/facebook/internal/FileLruCache;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44
    const-class v1, Lcom/facebook/internal/UrlRedirectCache;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/facebook/internal/UrlRedirectCache;->urlRedirectCache:Lcom/facebook/internal/FileLruCache;

    if-nez v0, :cond_15

    .line 45
    new-instance v0, Lcom/facebook/internal/FileLruCache;

    sget-object v2, Lcom/facebook/internal/UrlRedirectCache;->TAG:Ljava/lang/String;

    new-instance v3, Lcom/facebook/internal/FileLruCache$Limits;

    invoke-direct {v3}, Lcom/facebook/internal/FileLruCache$Limits;-><init>()V

    invoke-direct {v0, v2, v3}, Lcom/facebook/internal/FileLruCache;-><init>(Ljava/lang/String;Lcom/facebook/internal/FileLruCache$Limits;)V

    sput-object v0, Lcom/facebook/internal/UrlRedirectCache;->urlRedirectCache:Lcom/facebook/internal/FileLruCache;

    .line 47
    :cond_15
    sget-object v0, Lcom/facebook/internal/UrlRedirectCache;->urlRedirectCache:Lcom/facebook/internal/FileLruCache;
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_19

    monitor-exit v1

    return-object v0

    .line 44
    :catchall_19
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static getRedirectedUri(Landroid/net/Uri;)Landroid/net/Uri;
    .registers 13
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v9, 0x0

    .line 51
    if-nez p0, :cond_4

    .line 86
    :goto_3
    return-object v9

    .line 55
    :cond_4
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    .line 56
    .local v7, "uriString":Ljava/lang/String;
    const/4 v3, 0x0

    .line 59
    .local v3, "reader":Ljava/io/InputStreamReader;
    :try_start_9
    invoke-static {}, Lcom/facebook/internal/UrlRedirectCache;->getCache()Lcom/facebook/internal/FileLruCache;
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_c} :catch_34
    .catchall {:try_start_9 .. :try_end_c} :catchall_51

    move-result-object v2

    .line 60
    .local v2, "cache":Lcom/facebook/internal/FileLruCache;
    const/4 v5, 0x0

    .local v5, "redirectExists":Z
    move-object v4, v3

    .line 61
    .end local v3    # "reader":Ljava/io/InputStreamReader;
    .local v4, "reader":Ljava/io/InputStreamReader;
    :goto_f
    :try_start_f
    sget-object v10, Lcom/facebook/internal/UrlRedirectCache;->REDIRECT_CONTENT_TAG:Ljava/lang/String;

    invoke-virtual {v2, v7, v10}, Lcom/facebook/internal/FileLruCache;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6

    .local v6, "stream":Ljava/io/InputStream;
    if-eqz v6, :cond_42

    .line 62
    const/4 v5, 0x1

    .line 65
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_1d} :catch_59
    .catchall {:try_start_f .. :try_end_1d} :catchall_56

    .line 66
    .end local v4    # "reader":Ljava/io/InputStreamReader;
    .restart local v3    # "reader":Ljava/io/InputStreamReader;
    const/16 v10, 0x80

    :try_start_1f
    new-array v0, v10, [C

    .line 68
    .local v0, "buffer":[C
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .local v8, "urlBuilder":Ljava/lang/StringBuilder;
    :goto_26
    const/4 v10, 0x0

    const/16 v11, 0x80

    invoke-virtual {v3, v0, v10, v11}, Ljava/io/InputStreamReader;->read([CII)I

    move-result v1

    .local v1, "bufferLength":I
    if-lez v1, :cond_39

    .line 70
    const/4 v10, 0x0

    invoke-virtual {v8, v0, v10, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_33} :catch_34
    .catchall {:try_start_1f .. :try_end_33} :catchall_51

    goto :goto_26

    .line 83
    .end local v0    # "buffer":[C
    .end local v1    # "bufferLength":I
    .end local v2    # "cache":Lcom/facebook/internal/FileLruCache;
    .end local v5    # "redirectExists":Z
    .end local v6    # "stream":Ljava/io/InputStream;
    .end local v8    # "urlBuilder":Ljava/lang/StringBuilder;
    :catch_34
    move-exception v10

    :goto_35
    invoke-static {v3}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_3

    .line 72
    .restart local v0    # "buffer":[C
    .restart local v1    # "bufferLength":I
    .restart local v2    # "cache":Lcom/facebook/internal/FileLruCache;
    .restart local v5    # "redirectExists":Z
    .restart local v6    # "stream":Ljava/io/InputStream;
    .restart local v8    # "urlBuilder":Ljava/lang/StringBuilder;
    :cond_39
    :try_start_39
    invoke-static {v3}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    .line 75
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_3f} :catch_34
    .catchall {:try_start_39 .. :try_end_3f} :catchall_51

    move-result-object v7

    move-object v4, v3

    .line 76
    .end local v3    # "reader":Ljava/io/InputStreamReader;
    .restart local v4    # "reader":Ljava/io/InputStreamReader;
    goto :goto_f

    .line 78
    .end local v0    # "buffer":[C
    .end local v1    # "bufferLength":I
    .end local v8    # "urlBuilder":Ljava/lang/StringBuilder;
    :cond_42
    if-eqz v5, :cond_4c

    .line 79
    :try_start_44
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_47} :catch_59
    .catchall {:try_start_44 .. :try_end_47} :catchall_56

    move-result-object v9

    .line 83
    invoke-static {v4}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_3

    :cond_4c
    invoke-static {v4}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    move-object v3, v4

    .line 84
    .end local v4    # "reader":Ljava/io/InputStreamReader;
    .restart local v3    # "reader":Ljava/io/InputStreamReader;
    goto :goto_3

    .line 83
    .end local v2    # "cache":Lcom/facebook/internal/FileLruCache;
    .end local v5    # "redirectExists":Z
    .end local v6    # "stream":Ljava/io/InputStream;
    :catchall_51
    move-exception v9

    :goto_52
    invoke-static {v3}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    throw v9

    .end local v3    # "reader":Ljava/io/InputStreamReader;
    .restart local v2    # "cache":Lcom/facebook/internal/FileLruCache;
    .restart local v4    # "reader":Ljava/io/InputStreamReader;
    .restart local v5    # "redirectExists":Z
    :catchall_56
    move-exception v9

    move-object v3, v4

    .end local v4    # "reader":Ljava/io/InputStreamReader;
    .restart local v3    # "reader":Ljava/io/InputStreamReader;
    goto :goto_52

    .end local v3    # "reader":Ljava/io/InputStreamReader;
    .restart local v4    # "reader":Ljava/io/InputStreamReader;
    :catch_59
    move-exception v10

    move-object v3, v4

    .end local v4    # "reader":Ljava/io/InputStreamReader;
    .restart local v3    # "reader":Ljava/io/InputStreamReader;
    goto :goto_35
.end method
