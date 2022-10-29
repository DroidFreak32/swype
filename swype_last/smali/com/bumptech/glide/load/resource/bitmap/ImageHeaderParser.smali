.class public final Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;
.super Ljava/lang/Object;
.source "ImageHeaderParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;,
        Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader;,
        Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;
    }
.end annotation


# static fields
.field private static final BYTES_PER_FORMAT:[I

.field static final JPEG_EXIF_SEGMENT_PREAMBLE_BYTES:[B


# instance fields
.field final streamReader:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 62
    const/16 v1, 0xd

    new-array v1, v1, [I

    fill-array-data v1, :array_1c

    sput-object v1, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->BYTES_PER_FORMAT:[I

    .line 67
    const/4 v1, 0x0

    new-array v0, v1, [B

    .line 69
    .local v0, "bytes":[B
    :try_start_c
    const-string/jumbo v1, "Exif\u0000\u0000"

    const-string/jumbo v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_15
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_c .. :try_end_15} :catch_19

    move-result-object v0

    .line 73
    :goto_16
    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->JPEG_EXIF_SEGMENT_PREAMBLE_BYTES:[B

    .line 74
    return-void

    :catch_19
    move-exception v1

    goto :goto_16

    .line 62
    nop

    :array_1c
    .array-data 4
        0x0
        0x1
        0x1
        0x2
        0x4
        0x8
        0x1
        0x1
        0x2
        0x4
        0x8
        0x4
        0x8
    .end array-data
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3
    .param p1, "is"    # Ljava/io/InputStream;

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->streamReader:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;

    .line 78
    return-void
.end method

.method static handles(I)Z
    .registers 3
    .param p0, "imageMagicNumber"    # I

    .prologue
    const v1, 0xffd8

    .line 295
    and-int v0, p0, v1

    if-eq v0, v1, :cond_f

    const/16 v0, 0x4d4d

    if-eq p0, v0, :cond_f

    const/16 v0, 0x4949

    if-ne p0, v0, :cond_11

    :cond_f
    const/4 v0, 0x1

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method static parseExifSegment(Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader;)I
    .registers 15
    .param p0, "segmentData"    # Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader;

    .prologue
    const/4 v13, 0x3

    .line 205
    const/4 v11, 0x6

    invoke-virtual {p0, v11}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader;->getInt16(I)S

    move-result v2

    .line 207
    .local v2, "byteOrderIdentifier":S
    const/16 v11, 0x4d4d

    if-eq v2, v11, :cond_50

    .line 209
    const/16 v11, 0x4949

    if-ne v2, v11, :cond_4a

    .line 210
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 2309
    .local v1, "byteOrder":Ljava/nio/ByteOrder;
    :goto_10
    iget-object v11, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v11, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 220
    const/16 v11, 0xa

    invoke-virtual {p0, v11}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader;->getInt32(I)I

    move-result v11

    add-int/lit8 v4, v11, 0x6

    .line 221
    .local v4, "firstIfdOffset":I
    invoke-virtual {p0, v4}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader;->getInt16(I)S

    move-result v7

    .line 224
    .local v7, "tagCount":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_22
    if-ge v6, v7, :cond_f2

    .line 3291
    add-int/lit8 v11, v4, 0x2

    mul-int/lit8 v12, v6, 0xc

    add-int v8, v11, v12

    .line 227
    .local v8, "tagOffset":I
    invoke-virtual {p0, v8}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader;->getInt16(I)S

    move-result v9

    .line 230
    .local v9, "tagType":I
    const/16 v11, 0x112

    if-ne v9, v11, :cond_47

    .line 234
    add-int/lit8 v11, v8, 0x2

    invoke-virtual {p0, v11}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader;->getInt16(I)S

    move-result v5

    .line 237
    .local v5, "formatCode":I
    if-lez v5, :cond_3e

    const/16 v11, 0xc

    if-le v5, v11, :cond_53

    .line 238
    :cond_3e
    const-string/jumbo v11, "ImageHeaderParser"

    invoke-static {v11, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_47

    .line 224
    .end local v5    # "formatCode":I
    :cond_47
    :goto_47
    add-int/lit8 v6, v6, 0x1

    goto :goto_22

    .line 212
    .end local v1    # "byteOrder":Ljava/nio/ByteOrder;
    .end local v4    # "firstIfdOffset":I
    .end local v6    # "i":I
    .end local v7    # "tagCount":I
    .end local v8    # "tagOffset":I
    .end local v9    # "tagType":I
    :cond_4a
    const-string/jumbo v11, "ImageHeaderParser"

    invoke-static {v11, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 215
    :cond_50
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .restart local v1    # "byteOrder":Ljava/nio/ByteOrder;
    goto :goto_10

    .line 244
    .restart local v4    # "firstIfdOffset":I
    .restart local v5    # "formatCode":I
    .restart local v6    # "i":I
    .restart local v7    # "tagCount":I
    .restart local v8    # "tagOffset":I
    .restart local v9    # "tagType":I
    :cond_53
    add-int/lit8 v11, v8, 0x4

    invoke-virtual {p0, v11}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader;->getInt32(I)I

    move-result v3

    .line 246
    .local v3, "componentCount":I
    if-gez v3, :cond_65

    .line 247
    const-string/jumbo v11, "ImageHeaderParser"

    invoke-static {v11, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_47

    goto :goto_47

    .line 253
    :cond_65
    const-string/jumbo v11, "ImageHeaderParser"

    invoke-static {v11, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_9a

    .line 254
    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "Got tagIndex="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " tagType="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " formatCode="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " componentCount="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 258
    :cond_9a
    sget-object v11, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->BYTES_PER_FORMAT:[I

    aget v11, v11, v5

    add-int v0, v3, v11

    .line 260
    .local v0, "byteCount":I
    const/4 v11, 0x4

    if-le v0, v11, :cond_ad

    .line 261
    const-string/jumbo v11, "ImageHeaderParser"

    invoke-static {v11, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_47

    goto :goto_47

    .line 267
    :cond_ad
    add-int/lit8 v10, v8, 0x8

    .line 269
    .local v10, "tagValueOffset":I
    if-ltz v10, :cond_b7

    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader;->length()I

    move-result v11

    if-le v10, v11, :cond_d8

    .line 270
    :cond_b7
    const-string/jumbo v11, "ImageHeaderParser"

    invoke-static {v11, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_47

    .line 271
    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "Illegal tagValueOffset="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " tagType="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/16 :goto_47

    .line 276
    :cond_d8
    if-ltz v0, :cond_e2

    add-int v11, v10, v0

    invoke-virtual {p0}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader;->length()I

    move-result v12

    if-le v11, v12, :cond_ed

    .line 277
    :cond_e2
    const-string/jumbo v11, "ImageHeaderParser"

    invoke-static {v11, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_47

    goto/16 :goto_47

    .line 284
    :cond_ed
    invoke-virtual {p0, v10}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$RandomAccessReader;->getInt16(I)S

    move-result v11

    .line 287
    .end local v0    # "byteCount":I
    .end local v3    # "componentCount":I
    .end local v5    # "formatCode":I
    .end local v8    # "tagOffset":I
    .end local v9    # "tagType":I
    .end local v10    # "tagValueOffset":I
    :goto_f1
    return v11

    :cond_f2
    const/4 v11, -0x1

    goto :goto_f1
.end method


# virtual methods
.method public final getType()Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 87
    iget-object v2, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->streamReader:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;

    invoke-virtual {v2}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;->getUInt16()I

    move-result v1

    .line 90
    .local v1, "firstTwoBytes":I
    const v2, 0xffd8

    if-ne v1, v2, :cond_e

    .line 91
    sget-object v2, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;->JPEG:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    .line 109
    :goto_d
    return-object v2

    .line 94
    :cond_e
    shl-int/lit8 v2, v1, 0x10

    const/high16 v3, -0x10000

    and-int/2addr v2, v3

    iget-object v3, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->streamReader:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;

    invoke-virtual {v3}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;->getUInt16()I

    move-result v3

    const v4, 0xffff

    and-int/2addr v3, v4

    or-int v0, v2, v3

    .line 96
    .local v0, "firstFourBytes":I
    const v2, -0x76afb1b9

    if-ne v0, v2, :cond_3c

    .line 98
    iget-object v2, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->streamReader:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;

    const-wide/16 v4, 0x15

    invoke-virtual {v2, v4, v5}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;->skip(J)J

    .line 99
    iget-object v2, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->streamReader:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;

    .line 1377
    iget-object v2, v2, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$StreamReader;->is:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 101
    const/4 v3, 0x3

    if-lt v2, v3, :cond_39

    sget-object v2, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;->PNG_A:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    goto :goto_d

    :cond_39
    sget-object v2, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;->PNG:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    goto :goto_d

    .line 105
    :cond_3c
    shr-int/lit8 v2, v0, 0x8

    const v3, 0x474946

    if-ne v2, v3, :cond_46

    .line 106
    sget-object v2, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;->GIF:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    goto :goto_d

    .line 109
    :cond_46
    sget-object v2, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;->UNKNOWN:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    goto :goto_d
.end method
