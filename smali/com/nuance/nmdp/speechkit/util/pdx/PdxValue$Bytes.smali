.class public final Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Bytes;
.super Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue;
.source "PdxValue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Bytes"
.end annotation


# instance fields
.field private final _bytes:[B


# direct methods
.method public constructor <init>([B)V
    .locals 1
    .param p1, "bytes"    # [B

    .prologue
    .line 426
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue;-><init>(I)V

    .line 428
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Bytes;->_bytes:[B

    .line 429
    return-void
.end method


# virtual methods
.method public final get()[B
    .locals 1

    .prologue
    .line 433
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Bytes;->_bytes:[B

    return-object v0
.end method

.method public final toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "indent"    # Ljava/lang/String;

    .prologue
    .line 439
    const/16 v8, 0x10

    new-array v3, v8, [C

    fill-array-data v3, :array_0

    .line 442
    .local v3, "hexMap":[C
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 443
    .local v2, "builder":Ljava/lang/StringBuilder;
    const-string v8, "0x"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Bytes;->_bytes:[B

    .local v0, "arr$":[B
    array-length v6, v0

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v6, :cond_0

    aget-byte v1, v0, v5

    .line 447
    .local v1, "b":B
    shr-int/lit8 v8, v1, 0x4

    and-int/lit8 v8, v8, 0xf

    int-to-byte v4, v8

    .line 448
    .local v4, "high":B
    and-int/lit8 v8, v1, 0xf

    int-to-byte v7, v8

    .line 450
    .local v7, "low":B
    aget-char v8, v3, v4

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 451
    aget-char v8, v3, v7

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 445
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 453
    .end local v1    # "b":B
    .end local v4    # "high":B
    .end local v7    # "low":B
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 439
    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method
