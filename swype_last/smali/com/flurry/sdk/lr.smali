.class public final Lcom/flurry/sdk/lr;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 37
    const-class v0, Lcom/flurry/sdk/lr;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/lr;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(D)D
    .registers 8

    .prologue
    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    .line 307
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    mul-double/2addr v0, p0

    .line 308
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-double v0, v0

    .line 309
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    div-double/2addr v0, v2

    .line 310
    return-wide v0
.end method

.method public static a(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 277
    const/16 v0, 0x400

    new-array v2, v0, [B

    .line 279
    const-wide/16 v0, 0x0

    .line 281
    :goto_6
    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .line 282
    if-ltz v3, :cond_13

    .line 286
    const/4 v4, 0x0

    invoke-virtual {p1, v2, v4, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 287
    int-to-long v4, v3

    add-long/2addr v0, v4

    .line 288
    goto :goto_6

    .line 290
    :cond_13
    return-wide v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 57
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 76
    :cond_6
    :goto_6
    return-object p0

    .line 61
    :cond_7
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 63
    if-eqz v0, :cond_6

    .line 67
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 69
    if-nez v0, :cond_6

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "http://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_6
.end method

.method public static a(Ljava/io/Closeable;)V
    .registers 2

    .prologue
    .line 113
    if-eqz p0, :cond_5

    .line 114
    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_5} :catch_6

    .line 119
    :cond_5
    :goto_5
    return-void

    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 321
    if-eqz p0, :cond_9

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 332
    :cond_9
    :goto_9
    return v0

    .line 326
    :cond_a
    :try_start_a
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_15} :catch_1a

    move-result v1

    .line 327
    if-nez v1, :cond_9

    const/4 v0, 0x1

    goto :goto_9

    .line 329
    :catch_1a
    move-exception v1

    .line 331
    const/4 v2, 0x6

    sget-object v3, Lcom/flurry/sdk/lr;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Error occured when checking if app has permission.  Error: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_9
.end method

.method public static a(Ljava/io/InputStream;)[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 294
    if-nez p0, :cond_4

    .line 295
    const/4 v0, 0x0

    .line 300
    :goto_3
    return-object v0

    .line 298
    :cond_4
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 299
    invoke-static {p0, v0}, Lcom/flurry/sdk/lr;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 300
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    goto :goto_3
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    const/16 v1, 0xff

    .line 80
    .line 1084
    if-nez p0, :cond_8

    .line 1085
    const-string/jumbo p0, ""

    .line 1087
    :cond_7
    :goto_7
    return-object p0

    .line 1086
    :cond_8
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_7

    .line 1089
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_7
.end method

.method public static b([B)Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 168
    if-nez p0, :cond_4

    .line 176
    :goto_3
    return-object v0

    .line 173
    :cond_4
    :try_start_4
    new-instance v1, Ljava/lang/String;

    const-string/jumbo v2, "ISO-8859-1"

    invoke-direct {v1, p0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_c
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_c} :catch_e

    move-object v0, v1

    goto :goto_3

    .line 174
    :catch_e
    move-exception v1

    .line 175
    const/4 v2, 0x5

    sget-object v3, Lcom/flurry/sdk/lr;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Unsupported ISO-8859-1:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method public static b()V
    .registers 2

    .prologue
    .line 50
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_17

    .line 51
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Must be called from a background thread!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_17
    return-void
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 95
    :try_start_0
    const-string/jumbo v0, "UTF-8"

    invoke-static {p0, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_6
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_6} :catch_8

    move-result-object v0

    .line 98
    :goto_7
    return-object v0

    .line 97
    :catch_8
    move-exception v0

    const/4 v0, 0x5

    sget-object v1, Lcom/flurry/sdk/lr;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Cannot encode \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 98
    const-string/jumbo v0, ""

    goto :goto_7
.end method

.method public static d(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 104
    :try_start_0
    const-string/jumbo v0, "UTF-8"

    invoke-static {p0, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_6
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_6} :catch_8

    move-result-object v0

    .line 107
    :goto_7
    return-object v0

    .line 106
    :catch_8
    move-exception v0

    const/4 v0, 0x5

    sget-object v1, Lcom/flurry/sdk/lr;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Cannot decode \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 107
    const-string/jumbo v0, ""

    goto :goto_7
.end method

.method public static e(Ljava/lang/String;)[B
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 125
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 133
    :goto_7
    return-object v0

    .line 130
    :cond_8
    :try_start_8
    const-string/jumbo v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_e
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_8 .. :try_end_e} :catch_10

    move-result-object v0

    goto :goto_7

    .line 131
    :catch_10
    move-exception v1

    .line 132
    const/4 v2, 0x5

    sget-object v3, Lcom/flurry/sdk/lr;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Unsupported UTF-8: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_7
.end method

.method public static i(Ljava/lang/String;)J
    .registers 9

    .prologue
    .line 262
    if-nez p0, :cond_5

    .line 263
    const-wide/16 v0, 0x0

    .line 273
    :cond_4
    return-wide v0

    .line 266
    :cond_5
    const-wide v2, 0x3ffffffffffe5L

    .line 267
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    .line 269
    const/4 v0, 0x0

    move v7, v0

    move-wide v0, v2

    move v2, v7

    :goto_12
    if-ge v2, v6, :cond_4

    .line 270
    const-wide/16 v4, 0x1f

    mul-long/2addr v0, v4

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    int-to-long v4, v3

    add-long/2addr v4, v0

    .line 269
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move-wide v0, v4

    goto :goto_12
.end method
