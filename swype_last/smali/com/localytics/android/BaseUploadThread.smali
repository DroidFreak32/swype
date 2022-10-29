.class abstract Lcom/localytics/android/BaseUploadThread;
.super Ljava/lang/Thread;
.source "BaseUploadThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/localytics/android/BaseUploadThread$UploadType;
    }
.end annotation


# instance fields
.field customerID:Ljava/lang/String;

.field final mData:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

.field private final mSessionHandler:Lcom/localytics/android/BaseHandler;

.field private mSuccessful:Z

.field private uploadResponseString:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/localytics/android/BaseHandler;Ljava/util/TreeMap;Ljava/lang/String;Lcom/localytics/android/LocalyticsDao;)V
    .registers 6
    .param p1, "sessionHandler"    # Lcom/localytics/android/BaseHandler;
    .param p3, "customerId"    # Ljava/lang/String;
    .param p4, "localyticsDao"    # Lcom/localytics/android/LocalyticsDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/localytics/android/BaseHandler;",
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/localytics/android/LocalyticsDao;",
            ")V"
        }
    .end annotation

    .prologue
    .line 55
    .local p2, "data":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/localytics/android/BaseUploadThread;->uploadResponseString:Ljava/lang/String;

    .line 56
    iput-object p1, p0, Lcom/localytics/android/BaseUploadThread;->mSessionHandler:Lcom/localytics/android/BaseHandler;

    .line 57
    iput-object p2, p0, Lcom/localytics/android/BaseUploadThread;->mData:Ljava/util/TreeMap;

    .line 58
    iput-object p3, p0, Lcom/localytics/android/BaseUploadThread;->customerID:Ljava/lang/String;

    .line 59
    iput-object p4, p0, Lcom/localytics/android/BaseUploadThread;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    .line 60
    return-void
.end method

.method static createURLConnection(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/URLConnection;
    .registers 3
    .param p0, "url"    # Ljava/net/URL;
    .param p1, "proxy"    # Ljava/net/Proxy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 364
    if-nez p1, :cond_7

    .line 366
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 370
    :goto_6
    return-object v0

    :cond_7
    invoke-virtual {p0, p1}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    goto :goto_6
.end method

.method private static formatUploadBody(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "body"    # Ljava/lang/String;

    .prologue
    .line 98
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object p0

    .line 102
    :goto_a
    return-object p0

    :catch_b
    move-exception v0

    goto :goto_a
.end method

.method private retrieveHttpResponse(Ljava/io/InputStream;)V
    .registers 8
    .param p1, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 326
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    const-string/jumbo v5, "UTF-8"

    invoke-direct {v4, p1, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 327
    .local v2, "reader":Ljava/io/BufferedReader;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 330
    .local v0, "builder":Ljava/lang/StringBuilder;
    :goto_12
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .local v1, "line":Ljava/lang/String;
    if-eqz v1, :cond_1c

    .line 332
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_12

    .line 335
    :cond_1c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 336
    .local v3, "response":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_29

    .line 338
    invoke-virtual {p0, v3}, Lcom/localytics/android/BaseUploadThread;->onUploadResponded(Ljava/lang/String;)V

    .line 341
    :cond_29
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 342
    return-void
.end method


# virtual methods
.method getApiKey()Ljava/lang/String;
    .registers 4

    .prologue
    .line 64
    iget-object v2, p0, Lcom/localytics/android/BaseUploadThread;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v2}, Lcom/localytics/android/LocalyticsDao;->getAppKey()Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, "apiKey":Ljava/lang/String;
    iget-object v2, p0, Lcom/localytics/android/BaseUploadThread;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v2}, Lcom/localytics/android/LocalyticsDao;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/localytics/android/DatapointHelper;->getLocalyticsRollupKeyOrNull(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 66
    .local v1, "rollupKey":Ljava/lang/String;
    if-eqz v1, :cond_19

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_19

    .line 68
    move-object v0, v1

    .line 71
    :cond_19
    return-object v0
.end method

.method onUploadResponded(Ljava/lang/String;)V
    .registers 6
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    .line 351
    const-string/jumbo v0, "%s upload response: \n%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/localytics/android/BaseUploadThread;->mSessionHandler:Lcom/localytics/android/BaseHandler;

    iget-object v3, v3, Lcom/localytics/android/BaseHandler;->siloName:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;)I

    .line 352
    iput-object p1, p0, Lcom/localytics/android/BaseUploadThread;->uploadResponseString:Ljava/lang/String;

    .line 353
    return-void
.end method

.method public run()V
    .registers 12

    .prologue
    const/4 v10, 0x4

    const/4 v5, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 80
    :try_start_5
    invoke-virtual {p0}, Lcom/localytics/android/BaseUploadThread;->uploadData()I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_8} :catch_29
    .catchall {:try_start_5 .. :try_end_8} :catchall_50

    move-result v0

    .line 88
    .local v0, "deleteRows":I
    iget-object v2, p0, Lcom/localytics/android/BaseUploadThread;->mSessionHandler:Lcom/localytics/android/BaseHandler;

    iget-object v3, p0, Lcom/localytics/android/BaseUploadThread;->mSessionHandler:Lcom/localytics/android/BaseHandler;

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    iget-object v5, p0, Lcom/localytics/android/BaseUploadThread;->uploadResponseString:Ljava/lang/String;

    aput-object v5, v4, v8

    iget-boolean v5, p0, Lcom/localytics/android/BaseUploadThread;->mSuccessful:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v9

    invoke-virtual {v3, v10, v4}, Lcom/localytics/android/BaseHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/localytics/android/BaseHandler;->sendMessage(Landroid/os/Message;)Z

    .line 89
    .end local v0    # "deleteRows":I
    :goto_28
    return-void

    .line 82
    :catch_29
    move-exception v1

    .line 84
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2a
    const-string/jumbo v2, "Exception"

    invoke-static {v2, v1}, Lcom/localytics/android/Localytics$Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_30
    .catchall {:try_start_2a .. :try_end_30} :catchall_50

    .line 88
    iget-object v2, p0, Lcom/localytics/android/BaseUploadThread;->mSessionHandler:Lcom/localytics/android/BaseHandler;

    iget-object v3, p0, Lcom/localytics/android/BaseUploadThread;->mSessionHandler:Lcom/localytics/android/BaseHandler;

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    iget-object v5, p0, Lcom/localytics/android/BaseUploadThread;->uploadResponseString:Ljava/lang/String;

    aput-object v5, v4, v8

    iget-boolean v5, p0, Lcom/localytics/android/BaseUploadThread;->mSuccessful:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v9

    invoke-virtual {v3, v10, v4}, Lcom/localytics/android/BaseHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/localytics/android/BaseHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_28

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_50
    move-exception v2

    iget-object v3, p0, Lcom/localytics/android/BaseUploadThread;->mSessionHandler:Lcom/localytics/android/BaseHandler;

    iget-object v4, p0, Lcom/localytics/android/BaseUploadThread;->mSessionHandler:Lcom/localytics/android/BaseHandler;

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    iget-object v6, p0, Lcom/localytics/android/BaseUploadThread;->uploadResponseString:Ljava/lang/String;

    aput-object v6, v5, v8

    iget-boolean v6, p0, Lcom/localytics/android/BaseUploadThread;->mSuccessful:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-virtual {v4, v10, v5}, Lcom/localytics/android/BaseHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/localytics/android/BaseHandler;->sendMessage(Landroid/os/Message;)Z

    throw v2
.end method

.method upload(Lcom/localytics/android/BaseUploadThread$UploadType;Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 11
    .param p1, "uploadType"    # Lcom/localytics/android/BaseUploadThread$UploadType;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "body"    # Ljava/lang/String;
    .param p4, "attempt"    # I

    .prologue
    .line 108
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/localytics/android/BaseUploadThread;->upload(Lcom/localytics/android/BaseUploadThread$UploadType;Ljava/lang/String;Ljava/lang/String;IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/localytics/android/BaseUploadThread;->mSuccessful:Z

    .line 109
    iget-boolean v0, p0, Lcom/localytics/android/BaseUploadThread;->mSuccessful:Z

    return v0
.end method

.method upload(Lcom/localytics/android/BaseUploadThread$UploadType;Ljava/lang/String;Ljava/lang/String;IZ)Z
    .registers 24
    .param p1, "uploadType"    # Lcom/localytics/android/BaseUploadThread$UploadType;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "body"    # Ljava/lang/String;
    .param p4, "attempt"    # I
    .param p5, "noDelay"    # Z

    .prologue
    .line 124
    if-nez p2, :cond_b

    .line 126
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "url cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 129
    :cond_b
    if-nez p3, :cond_16

    .line 131
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "body cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 134
    :cond_16
    sget-object v2, Lcom/localytics/android/BaseUploadThread$UploadType;->ANALYTICS:Lcom/localytics/android/BaseUploadThread$UploadType;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_187

    .line 136
    const-string/jumbo v2, "Analytics upload body before compression is: \n%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p3, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/localytics/android/Localytics$Log;->v(Ljava/lang/String;)I

    .line 146
    :cond_2c
    :goto_2c
    const/4 v11, 0x0

    .line 149
    .local v11, "gos":Ljava/util/zip/GZIPOutputStream;
    :try_start_2d
    const-string/jumbo v2, "UTF-8"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v13

    .line 150
    .local v13, "originalBytes":[B
    sget-object v2, Lcom/localytics/android/BaseUploadThread$UploadType;->ANALYTICS:Lcom/localytics/android/BaseUploadThread$UploadType;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_1a3

    .line 158
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    array-length v2, v13

    invoke-direct {v8, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 159
    .local v8, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v12, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v12, v8}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_47
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2d .. :try_end_47} :catch_1b0
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_47} :catch_1c7
    .catchall {:try_start_2d .. :try_end_47} :catchall_1de

    .line 160
    .end local v11    # "gos":Ljava/util/zip/GZIPOutputStream;
    .local v12, "gos":Ljava/util/zip/GZIPOutputStream;
    :try_start_47
    invoke-virtual {v12, v13}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 161
    invoke-virtual {v12}, Ljava/util/zip/GZIPOutputStream;->finish()V

    .line 163
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_50
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_47 .. :try_end_50} :catch_28f
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_50} :catch_28b
    .catchall {:try_start_47 .. :try_end_50} :catchall_287

    move-result-object v17

    .local v17, "uploadData":[B
    move-object v11, v12

    .line 182
    .end local v8    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v12    # "gos":Ljava/util/zip/GZIPOutputStream;
    .restart local v11    # "gos":Ljava/util/zip/GZIPOutputStream;
    :goto_52
    if-eqz v11, :cond_57

    .line 186
    :try_start_54
    invoke-virtual {v11}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_57} :catch_1a7

    .line 198
    :cond_57
    const/4 v9, 0x0

    .line 201
    .local v9, "connection":Ljava/net/HttpURLConnection;
    :try_start_58
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/localytics/android/BaseUploadThread;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v2}, Lcom/localytics/android/LocalyticsDao;->getProxy()Ljava/net/Proxy;

    move-result-object v14

    .line 202
    .local v14, "proxy":Ljava/net/Proxy;
    new-instance v2, Ljava/net/URL;

    move-object/from16 v0, p2

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v14}, Lcom/localytics/android/BaseUploadThread;->createURLConnection(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v9, v0

    .line 204
    const v2, 0xea60

    invoke-virtual {v9, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 205
    const v2, 0xea60

    invoke-virtual {v9, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 206
    sget-object v2, Lcom/localytics/android/BaseUploadThread$UploadType;->MARKETING:Lcom/localytics/android/BaseUploadThread$UploadType;

    move-object/from16 v0, p1

    if-eq v0, v2, :cond_1ee

    sget-object v2, Lcom/localytics/android/BaseUploadThread$UploadType;->MANIFEST:Lcom/localytics/android/BaseUploadThread$UploadType;

    move-object/from16 v0, p1

    if-eq v0, v2, :cond_1ee

    const/4 v2, 0x1

    :goto_88
    invoke-virtual {v9, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 207
    sget-object v2, Lcom/localytics/android/BaseUploadThread$UploadType;->ANALYTICS:Lcom/localytics/android/BaseUploadThread$UploadType;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_1f1

    .line 209
    const-string/jumbo v2, "Content-Type"

    const-string/jumbo v3, "application/x-gzip"

    invoke-virtual {v9, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    const-string/jumbo v2, "Content-Encoding"

    const-string/jumbo v3, "gzip"

    invoke-virtual {v9, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    const-string/jumbo v2, "X-DONT-SEND-AMP"

    const-string/jumbo v3, "1"

    invoke-virtual {v9, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    :goto_ac
    sget-object v2, Lcom/localytics/android/BaseUploadThread$UploadType;->MARKETING:Lcom/localytics/android/BaseUploadThread$UploadType;

    move-object/from16 v0, p1

    if-eq v0, v2, :cond_b8

    sget-object v2, Lcom/localytics/android/BaseUploadThread$UploadType;->MANIFEST:Lcom/localytics/android/BaseUploadThread$UploadType;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_c7

    :cond_b8
    invoke-static {}, Lcom/localytics/android/Constants;->isTestModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_c7

    .line 219
    const-string/jumbo v2, "AMP-Test-Mode"

    const-string/jumbo v3, "1"

    invoke-virtual {v9, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    :cond_c7
    if-eqz p5, :cond_d2

    .line 223
    const-string/jumbo v2, "X-NO-DELAY"

    const-string/jumbo v3, "1"

    invoke-virtual {v9, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    :cond_d2
    const-string/jumbo v2, "Accept-Encoding"

    const-string/jumbo v3, ""

    invoke-virtual {v9, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    const-string/jumbo v2, "x-upload-time"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/localytics/android/BaseUploadThread;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v3}, Lcom/localytics/android/LocalyticsDao;->getCurrentTimeMillis()J

    move-result-wide v4

    long-to-double v4, v4

    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    const-string/jumbo v2, "x-install-id"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/localytics/android/BaseUploadThread;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v3}, Lcom/localytics/android/LocalyticsDao;->getInstallationId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    const-string/jumbo v2, "x-app-id"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/localytics/android/BaseUploadThread;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v3}, Lcom/localytics/android/LocalyticsDao;->getAppKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    const-string/jumbo v2, "x-client-version"

    sget-object v3, Lcom/localytics/android/Constants;->LOCALYTICS_CLIENT_LIBRARY_VERSION:Ljava/lang/String;

    invoke-virtual {v9, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    const-string/jumbo v2, "x-app-version"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/localytics/android/BaseUploadThread;->mLocalyticsDao:Lcom/localytics/android/LocalyticsDao;

    invoke-interface {v3}, Lcom/localytics/android/LocalyticsDao;->getAppContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/localytics/android/DatapointHelper;->getAppVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    const-string/jumbo v2, "x-customer-id"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/localytics/android/BaseUploadThread;->customerID:Ljava/lang/String;

    invoke-virtual {v9, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    sget-object v2, Lcom/localytics/android/BaseUploadThread$UploadType;->MARKETING:Lcom/localytics/android/BaseUploadThread$UploadType;

    move-object/from16 v0, p1

    if-eq v0, v2, :cond_15b

    sget-object v2, Lcom/localytics/android/BaseUploadThread$UploadType;->MANIFEST:Lcom/localytics/android/BaseUploadThread$UploadType;

    move-object/from16 v0, p1

    if-eq v0, v2, :cond_15b

    .line 239
    move-object/from16 v0, v17

    array-length v2, v0

    invoke-virtual {v9, v2}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V
    :try_end_14a
    .catch Ljava/io/EOFException; {:try_start_58 .. :try_end_14a} :catch_1fc
    .catch Ljava/net/MalformedURLException; {:try_start_58 .. :try_end_14a} :catch_21a
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_14a} :catch_271
    .catchall {:try_start_58 .. :try_end_14a} :catchall_280

    .line 240
    const/16 v16, 0x0

    .line 243
    .local v16, "stream":Ljava/io/OutputStream;
    :try_start_14c
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v16

    .line 244
    invoke-virtual/range {v16 .. v17}, Ljava/io/OutputStream;->write([B)V
    :try_end_153
    .catchall {:try_start_14c .. :try_end_153} :catchall_210

    .line 248
    if-eqz v16, :cond_15b

    .line 250
    :try_start_155
    invoke-virtual/range {v16 .. v16}, Ljava/io/OutputStream;->flush()V

    .line 251
    invoke-virtual/range {v16 .. v16}, Ljava/io/OutputStream;->close()V

    .line 257
    .end local v16    # "stream":Ljava/io/OutputStream;
    :cond_15b
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v15

    .line 259
    .local v15, "statusCode":I
    const-string/jumbo v2, "%s upload complete with status %d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/localytics/android/BaseUploadThread;->mSessionHandler:Lcom/localytics/android/BaseHandler;

    iget-object v5, v5, Lcom/localytics/android/BaseHandler;->siloName:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/localytics/android/Localytics$Log;->v(Ljava/lang/String;)I
    :try_end_17c
    .catch Ljava/io/EOFException; {:try_start_155 .. :try_end_17c} :catch_1fc
    .catch Ljava/net/MalformedURLException; {:try_start_155 .. :try_end_17c} :catch_21a
    .catch Ljava/io/IOException; {:try_start_155 .. :try_end_17c} :catch_271
    .catchall {:try_start_155 .. :try_end_17c} :catchall_280

    .line 261
    const/16 v2, 0x1ad

    if-ne v15, v2, :cond_229

    .line 309
    if-eqz v9, :cond_185

    .line 311
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 312
    :cond_185
    const/4 v2, 0x0

    .line 316
    .end local v9    # "connection":Ljava/net/HttpURLConnection;
    .end local v13    # "originalBytes":[B
    .end local v14    # "proxy":Ljava/net/Proxy;
    .end local v15    # "statusCode":I
    .end local v17    # "uploadData":[B
    :cond_186
    :goto_186
    return v2

    .line 138
    .end local v11    # "gos":Ljava/util/zip/GZIPOutputStream;
    :cond_187
    sget-object v2, Lcom/localytics/android/BaseUploadThread$UploadType;->PROFILES:Lcom/localytics/android/BaseUploadThread$UploadType;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_2c

    .line 140
    const-string/jumbo v2, "Profile upload body is: \n%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static/range {p3 .. p3}, Lcom/localytics/android/BaseUploadThread;->formatUploadBody(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/localytics/android/Localytics$Log;->v(Ljava/lang/String;)I

    goto/16 :goto_2c

    .line 167
    .restart local v11    # "gos":Ljava/util/zip/GZIPOutputStream;
    .restart local v13    # "originalBytes":[B
    :cond_1a3
    move-object/from16 v17, v13

    .restart local v17    # "uploadData":[B
    goto/16 :goto_52

    .line 189
    :catch_1a7
    move-exception v10

    .line 191
    .local v10, "e":Ljava/io/IOException;
    const-string/jumbo v2, "Caught exception"

    invoke-static {v2, v10}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 192
    const/4 v2, 0x0

    goto :goto_186

    .line 170
    .end local v10    # "e":Ljava/io/IOException;
    .end local v13    # "originalBytes":[B
    .end local v17    # "uploadData":[B
    :catch_1b0
    move-exception v10

    .line 172
    .local v10, "e":Ljava/io/UnsupportedEncodingException;
    :goto_1b1
    :try_start_1b1
    const-string/jumbo v2, "UnsupportedEncodingException"

    invoke-static {v2, v10}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1b7
    .catchall {:try_start_1b1 .. :try_end_1b7} :catchall_1de

    .line 182
    if-eqz v11, :cond_1bc

    .line 186
    :try_start_1b9
    invoke-virtual {v11}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_1bc
    .catch Ljava/io/IOException; {:try_start_1b9 .. :try_end_1bc} :catch_1be

    .line 192
    :cond_1bc
    const/4 v2, 0x0

    goto :goto_186

    .line 189
    :catch_1be
    move-exception v10

    .line 191
    .local v10, "e":Ljava/io/IOException;
    const-string/jumbo v2, "Caught exception"

    invoke-static {v2, v10}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 192
    const/4 v2, 0x0

    goto :goto_186

    .line 175
    .end local v10    # "e":Ljava/io/IOException;
    :catch_1c7
    move-exception v10

    .line 177
    .restart local v10    # "e":Ljava/io/IOException;
    :goto_1c8
    :try_start_1c8
    const-string/jumbo v2, "IOException"

    invoke-static {v2, v10}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1ce
    .catchall {:try_start_1c8 .. :try_end_1ce} :catchall_1de

    .line 182
    if-eqz v11, :cond_1d3

    .line 186
    :try_start_1d0
    invoke-virtual {v11}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_1d3
    .catch Ljava/io/IOException; {:try_start_1d0 .. :try_end_1d3} :catch_1d5

    .line 192
    :cond_1d3
    const/4 v2, 0x0

    goto :goto_186

    .line 189
    :catch_1d5
    move-exception v10

    .line 191
    const-string/jumbo v2, "Caught exception"

    invoke-static {v2, v10}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 192
    const/4 v2, 0x0

    goto :goto_186

    .line 182
    .end local v10    # "e":Ljava/io/IOException;
    :catchall_1de
    move-exception v2

    :goto_1df
    if-eqz v11, :cond_1e4

    .line 186
    :try_start_1e1
    invoke-virtual {v11}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_1e4
    .catch Ljava/io/IOException; {:try_start_1e1 .. :try_end_1e4} :catch_1e5

    .line 192
    :cond_1e4
    throw v2

    .line 189
    :catch_1e5
    move-exception v10

    .line 191
    .restart local v10    # "e":Ljava/io/IOException;
    const-string/jumbo v2, "Caught exception"

    invoke-static {v2, v10}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 192
    const/4 v2, 0x0

    goto :goto_186

    .line 206
    .end local v10    # "e":Ljava/io/IOException;
    .restart local v9    # "connection":Ljava/net/HttpURLConnection;
    .restart local v13    # "originalBytes":[B
    .restart local v14    # "proxy":Ljava/net/Proxy;
    .restart local v17    # "uploadData":[B
    :cond_1ee
    const/4 v2, 0x0

    goto/16 :goto_88

    .line 215
    :cond_1f1
    :try_start_1f1
    const-string/jumbo v2, "Content-Type"

    const-string/jumbo v3, "application/json; charset=utf-8"

    invoke-virtual {v9, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1fa
    .catch Ljava/io/EOFException; {:try_start_1f1 .. :try_end_1fa} :catch_1fc
    .catch Ljava/net/MalformedURLException; {:try_start_1f1 .. :try_end_1fa} :catch_21a
    .catch Ljava/io/IOException; {:try_start_1f1 .. :try_end_1fa} :catch_271
    .catchall {:try_start_1f1 .. :try_end_1fa} :catchall_280

    goto/16 :goto_ac

    .line 285
    .end local v14    # "proxy":Ljava/net/Proxy;
    :catch_1fc
    move-exception v10

    .line 287
    .local v10, "e":Ljava/io/EOFException;
    const/4 v2, 0x2

    move/from16 v0, p4

    if-ne v0, v2, :cond_25a

    .line 289
    :try_start_202
    const-string/jumbo v2, "ClientProtocolException"

    invoke-static {v2, v10}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_208
    .catchall {:try_start_202 .. :try_end_208} :catchall_280

    .line 309
    if-eqz v9, :cond_20d

    .line 311
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 312
    :cond_20d
    const/4 v2, 0x0

    goto/16 :goto_186

    .line 248
    .end local v10    # "e":Ljava/io/EOFException;
    .restart local v14    # "proxy":Ljava/net/Proxy;
    .restart local v16    # "stream":Ljava/io/OutputStream;
    :catchall_210
    move-exception v2

    if-eqz v16, :cond_219

    .line 250
    :try_start_213
    invoke-virtual/range {v16 .. v16}, Ljava/io/OutputStream;->flush()V

    .line 251
    invoke-virtual/range {v16 .. v16}, Ljava/io/OutputStream;->close()V

    .line 252
    :cond_219
    throw v2
    :try_end_21a
    .catch Ljava/io/EOFException; {:try_start_213 .. :try_end_21a} :catch_1fc
    .catch Ljava/net/MalformedURLException; {:try_start_213 .. :try_end_21a} :catch_21a
    .catch Ljava/io/IOException; {:try_start_213 .. :try_end_21a} :catch_271
    .catchall {:try_start_213 .. :try_end_21a} :catchall_280

    .line 297
    .end local v14    # "proxy":Ljava/net/Proxy;
    .end local v16    # "stream":Ljava/io/OutputStream;
    :catch_21a
    move-exception v10

    .line 299
    .local v10, "e":Ljava/net/MalformedURLException;
    :try_start_21b
    const-string/jumbo v2, "ClientProtocolException"

    invoke-static {v2, v10}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_221
    .catchall {:try_start_21b .. :try_end_221} :catchall_280

    .line 309
    if-eqz v9, :cond_226

    .line 311
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 312
    :cond_226
    const/4 v2, 0x0

    goto/16 :goto_186

    .line 268
    .end local v10    # "e":Ljava/net/MalformedURLException;
    .restart local v14    # "proxy":Ljava/net/Proxy;
    .restart local v15    # "statusCode":I
    :cond_229
    const/16 v2, 0x190

    if-lt v15, v2, :cond_239

    const/16 v2, 0x1f3

    if-gt v15, v2, :cond_239

    .line 309
    if-eqz v9, :cond_236

    .line 311
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 312
    :cond_236
    const/4 v2, 0x1

    goto/16 :goto_186

    .line 275
    :cond_239
    const/16 v2, 0x1f4

    if-lt v15, v2, :cond_249

    const/16 v2, 0x257

    if-gt v15, v2, :cond_249

    .line 309
    if-eqz v9, :cond_246

    .line 311
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 312
    :cond_246
    const/4 v2, 0x0

    goto/16 :goto_186

    .line 283
    :cond_249
    :try_start_249
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/localytics/android/BaseUploadThread;->retrieveHttpResponse(Ljava/io/InputStream;)V
    :try_end_252
    .catch Ljava/io/EOFException; {:try_start_249 .. :try_end_252} :catch_1fc
    .catch Ljava/net/MalformedURLException; {:try_start_249 .. :try_end_252} :catch_21a
    .catch Ljava/io/IOException; {:try_start_249 .. :try_end_252} :catch_271
    .catchall {:try_start_249 .. :try_end_252} :catchall_280

    .line 309
    if-eqz v9, :cond_257

    .line 311
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 316
    :cond_257
    const/4 v2, 0x1

    goto/16 :goto_186

    .line 294
    .end local v14    # "proxy":Ljava/net/Proxy;
    .end local v15    # "statusCode":I
    .local v10, "e":Ljava/io/EOFException;
    :cond_25a
    add-int/lit8 v6, p4, 0x1

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v7, p5

    :try_start_266
    invoke-virtual/range {v2 .. v7}, Lcom/localytics/android/BaseUploadThread;->upload(Lcom/localytics/android/BaseUploadThread$UploadType;Ljava/lang/String;Ljava/lang/String;IZ)Z
    :try_end_269
    .catchall {:try_start_266 .. :try_end_269} :catchall_280

    move-result v2

    .line 309
    if-eqz v9, :cond_186

    .line 311
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_186

    .line 302
    .end local v10    # "e":Ljava/io/EOFException;
    :catch_271
    move-exception v10

    .line 304
    .local v10, "e":Ljava/io/IOException;
    :try_start_272
    const-string/jumbo v2, "ClientProtocolException"

    invoke-static {v2, v10}, Lcom/localytics/android/Localytics$Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_278
    .catchall {:try_start_272 .. :try_end_278} :catchall_280

    .line 309
    if-eqz v9, :cond_27d

    .line 311
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 312
    :cond_27d
    const/4 v2, 0x0

    goto/16 :goto_186

    .line 309
    .end local v10    # "e":Ljava/io/IOException;
    :catchall_280
    move-exception v2

    if-eqz v9, :cond_286

    .line 311
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 312
    :cond_286
    throw v2

    .line 182
    .end local v9    # "connection":Ljava/net/HttpURLConnection;
    .end local v11    # "gos":Ljava/util/zip/GZIPOutputStream;
    .end local v17    # "uploadData":[B
    .restart local v8    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v12    # "gos":Ljava/util/zip/GZIPOutputStream;
    :catchall_287
    move-exception v2

    move-object v11, v12

    .end local v12    # "gos":Ljava/util/zip/GZIPOutputStream;
    .restart local v11    # "gos":Ljava/util/zip/GZIPOutputStream;
    goto/16 :goto_1df

    .line 175
    .end local v11    # "gos":Ljava/util/zip/GZIPOutputStream;
    .restart local v12    # "gos":Ljava/util/zip/GZIPOutputStream;
    :catch_28b
    move-exception v10

    move-object v11, v12

    .end local v12    # "gos":Ljava/util/zip/GZIPOutputStream;
    .restart local v11    # "gos":Ljava/util/zip/GZIPOutputStream;
    goto/16 :goto_1c8

    .line 170
    .end local v11    # "gos":Ljava/util/zip/GZIPOutputStream;
    .restart local v12    # "gos":Ljava/util/zip/GZIPOutputStream;
    :catch_28f
    move-exception v10

    move-object v11, v12

    .end local v12    # "gos":Ljava/util/zip/GZIPOutputStream;
    .restart local v11    # "gos":Ljava/util/zip/GZIPOutputStream;
    goto/16 :goto_1b1
.end method

.method abstract uploadData()I
.end method
