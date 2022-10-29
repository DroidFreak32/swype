.class final Lcom/crashlytics/android/ByteString;
.super Ljava/lang/Object;
.source "ByteString.java"


# static fields
.field public static final EMPTY:Lcom/crashlytics/android/ByteString;


# instance fields
.field final bytes:[B

.field private volatile hash:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 85
    new-instance v0, Lcom/crashlytics/android/ByteString;

    const/4 v1, 0x0

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lcom/crashlytics/android/ByteString;-><init>([B)V

    sput-object v0, Lcom/crashlytics/android/ByteString;->EMPTY:Lcom/crashlytics/android/ByteString;

    return-void
.end method

.method private constructor <init>([B)V
    .registers 3
    .param p1, "bytes"    # [B

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 279
    const/4 v0, 0x0

    iput v0, p0, Lcom/crashlytics/android/ByteString;->hash:I

    .line 53
    iput-object p1, p0, Lcom/crashlytics/android/ByteString;->bytes:[B

    .line 54
    return-void
.end method

.method public static copyFrom$49030a4c([BI)Lcom/crashlytics/android/ByteString;
    .registers 4
    .param p0, "bytes"    # [B
    .param p1, "size"    # I

    .prologue
    const/4 v1, 0x0

    .line 92
    new-array v0, p1, [B

    .line 93
    .local v0, "copy":[B
    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 94
    new-instance v1, Lcom/crashlytics/android/ByteString;

    invoke-direct {v1, v0}, Lcom/crashlytics/android/ByteString;-><init>([B)V

    return-object v1
.end method

.method public static copyFromUtf8(Ljava/lang/String;)Lcom/crashlytics/android/ByteString;
    .registers 4
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 137
    :try_start_0
    new-instance v1, Lcom/crashlytics/android/ByteString;

    const-string/jumbo v2, "UTF-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/crashlytics/android/ByteString;-><init>([B)V
    :try_end_c
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_c} :catch_d

    return-object v1

    .line 138
    :catch_d
    move-exception v0

    .line 139
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "UTF-8 not supported."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public final copyTo([BIII)V
    .registers 6
    .param p1, "target"    # [B
    .param p2, "sourceOffset"    # I
    .param p3, "targetOffset"    # I
    .param p4, "size"    # I

    .prologue
    .line 195
    iget-object v0, p0, Lcom/crashlytics/android/ByteString;->bytes:[B

    invoke-static {v0, p2, p1, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 196
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 11
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 254
    if-ne p1, p0, :cond_5

    .line 276
    :cond_4
    :goto_4
    return v5

    .line 258
    :cond_5
    instance-of v7, p1, Lcom/crashlytics/android/ByteString;

    if-nez v7, :cond_b

    move v5, v6

    .line 259
    goto :goto_4

    :cond_b
    move-object v1, p1

    .line 262
    check-cast v1, Lcom/crashlytics/android/ByteString;

    .line 263
    .local v1, "other":Lcom/crashlytics/android/ByteString;
    iget-object v7, p0, Lcom/crashlytics/android/ByteString;->bytes:[B

    array-length v3, v7

    .line 264
    .local v3, "size":I
    iget-object v7, v1, Lcom/crashlytics/android/ByteString;->bytes:[B

    array-length v7, v7

    if-eq v3, v7, :cond_18

    move v5, v6

    .line 265
    goto :goto_4

    .line 268
    :cond_18
    iget-object v4, p0, Lcom/crashlytics/android/ByteString;->bytes:[B

    .line 269
    .local v4, "thisBytes":[B
    iget-object v2, v1, Lcom/crashlytics/android/ByteString;->bytes:[B

    .line 270
    .local v2, "otherBytes":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1d
    if-ge v0, v3, :cond_4

    .line 271
    aget-byte v7, v4, v0

    aget-byte v8, v2, v0

    if-eq v7, v8, :cond_27

    move v5, v6

    .line 272
    goto :goto_4

    .line 270
    :cond_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d
.end method

.method public final hashCode()I
    .registers 7

    .prologue
    .line 283
    iget v0, p0, Lcom/crashlytics/android/ByteString;->hash:I

    .line 285
    .local v0, "h":I
    if-nez v0, :cond_1b

    .line 286
    iget-object v3, p0, Lcom/crashlytics/android/ByteString;->bytes:[B

    .line 287
    .local v3, "thisBytes":[B
    iget-object v4, p0, Lcom/crashlytics/android/ByteString;->bytes:[B

    array-length v2, v4

    .line 289
    .local v2, "size":I
    move v0, v2

    .line 290
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    if-ge v1, v2, :cond_16

    .line 291
    mul-int/lit8 v4, v0, 0x1f

    aget-byte v5, v3, v1

    add-int v0, v4, v5

    .line 290
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 293
    :cond_16
    if-nez v0, :cond_19

    .line 294
    const/4 v0, 0x1

    .line 297
    :cond_19
    iput v0, p0, Lcom/crashlytics/android/ByteString;->hash:I

    .line 300
    .end local v1    # "i":I
    .end local v2    # "size":I
    .end local v3    # "thisBytes":[B
    :cond_1b
    return v0
.end method
