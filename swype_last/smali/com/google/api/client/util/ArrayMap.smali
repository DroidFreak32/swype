.class public Lcom/google/api/client/util/ArrayMap;
.super Ljava/util/AbstractMap;
.source "ArrayMap.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/util/ArrayMap$Entry;,
        Lcom/google/api/client/util/ArrayMap$EntryIterator;,
        Lcom/google/api/client/util/ArrayMap$EntrySet;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap",
        "<TK;TV;>;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field data:[Ljava/lang/Object;

.field size:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 47
    .local p0, "this":Lcom/google/api/client/util/ArrayMap;, "Lcom/google/api/client/util/ArrayMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 397
    return-void
.end method

.method public static create()Lcom/google/api/client/util/ArrayMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/api/client/util/ArrayMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 57
    new-instance v0, Lcom/google/api/client/util/ArrayMap;

    invoke-direct {v0}, Lcom/google/api/client/util/ArrayMap;-><init>()V

    return-object v0
.end method

.method private getDataIndexOfKey(Ljava/lang/Object;)I
    .registers 7
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 283
    .local p0, "this":Lcom/google/api/client/util/ArrayMap;, "Lcom/google/api/client/util/ArrayMap<TK;TV;>;"
    iget v4, p0, Lcom/google/api/client/util/ArrayMap;->size:I

    shl-int/lit8 v1, v4, 0x1

    .line 284
    .local v1, "dataSize":I
    iget-object v0, p0, Lcom/google/api/client/util/ArrayMap;->data:[Ljava/lang/Object;

    .line 285
    .local v0, "data":[Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    if-ge v2, v1, :cond_19

    .line 286
    aget-object v3, v0, v2

    .line 287
    .local v3, "k":Ljava/lang/Object;
    if-nez p1, :cond_10

    if-nez v3, :cond_16

    .line 291
    .end local v2    # "i":I
    .end local v3    # "k":Ljava/lang/Object;
    :cond_f
    :goto_f
    return v2

    .line 287
    .restart local v2    # "i":I
    .restart local v3    # "k":Ljava/lang/Object;
    :cond_10
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f

    .line 285
    :cond_16
    add-int/lit8 v2, v2, 0x2

    goto :goto_7

    .line 291
    .end local v3    # "k":Ljava/lang/Object;
    :cond_19
    const/4 v2, -0x2

    goto :goto_f
.end method

.method private setData(ILjava/lang/Object;Ljava/lang/Object;)V
    .registers 6
    .param p1, "dataIndexOfKey"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;TV;)V"
        }
    .end annotation

    .prologue
    .line 265
    .local p0, "this":Lcom/google/api/client/util/ArrayMap;, "Lcom/google/api/client/util/ArrayMap<TK;TV;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lcom/google/api/client/util/ArrayMap;->data:[Ljava/lang/Object;

    .line 266
    .local v0, "data":[Ljava/lang/Object;
    aput-object p2, v0, p1

    .line 267
    add-int/lit8 v1, p1, 0x1

    aput-object p3, v0, v1

    .line 268
    return-void
.end method

.method private valueAtDataIndex(I)Ljava/lang/Object;
    .registers 3
    .param p1, "dataIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .prologue
    .line 271
    .local p0, "this":Lcom/google/api/client/util/ArrayMap;, "Lcom/google/api/client/util/ArrayMap<TK;TV;>;"
    if-gez p1, :cond_4

    .line 272
    const/4 v0, 0x0

    .line 276
    :goto_3
    return-object v0

    .line 275
    :cond_4
    iget-object v0, p0, Lcom/google/api/client/util/ArrayMap;->data:[Ljava/lang/Object;

    aget-object v0, v0, p1

    goto :goto_3
.end method


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    .line 316
    .local p0, "this":Lcom/google/api/client/util/ArrayMap;, "Lcom/google/api/client/util/ArrayMap<TK;TV;>;"
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/api/client/util/ArrayMap;->size:I

    .line 317
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/api/client/util/ArrayMap;->data:[Ljava/lang/Object;

    .line 318
    return-void
.end method

.method public final clone()Lcom/google/api/client/util/ArrayMap;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/api/client/util/ArrayMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 342
    .local p0, "this":Lcom/google/api/client/util/ArrayMap;, "Lcom/google/api/client/util/ArrayMap<TK;TV;>;"
    :try_start_0
    invoke-super {p0}, Ljava/util/AbstractMap;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/api/client/util/ArrayMap;

    .line 343
    .local v2, "result":Lcom/google/api/client/util/ArrayMap;, "Lcom/google/api/client/util/ArrayMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/api/client/util/ArrayMap;->data:[Ljava/lang/Object;

    .line 344
    .local v0, "data":[Ljava/lang/Object;
    if-eqz v0, :cond_14

    .line 345
    array-length v1, v0

    .line 346
    .local v1, "length":I
    new-array v3, v1, [Ljava/lang/Object;

    iput-object v3, v2, Lcom/google/api/client/util/ArrayMap;->data:[Ljava/lang/Object;

    .line 347
    .local v3, "resultData":[Ljava/lang/Object;
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v0, v4, v3, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_14
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_14} :catch_15

    .line 352
    .end local v0    # "data":[Ljava/lang/Object;
    .end local v1    # "length":I
    .end local v2    # "result":Lcom/google/api/client/util/ArrayMap;, "Lcom/google/api/client/util/ArrayMap<TK;TV;>;"
    .end local v3    # "resultData":[Ljava/lang/Object;
    :cond_14
    :goto_14
    return-object v2

    :catch_15
    move-exception v4

    const/4 v2, 0x0

    goto :goto_14
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 47
    .local p0, "this":Lcom/google/api/client/util/ArrayMap;, "Lcom/google/api/client/util/ArrayMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/api/client/util/ArrayMap;->clone()Lcom/google/api/client/util/ArrayMap;

    move-result-object v0

    return-object v0
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 181
    .local p0, "this":Lcom/google/api/client/util/ArrayMap;, "Lcom/google/api/client/util/ArrayMap<TK;TV;>;"
    const/4 v0, -0x2

    invoke-direct {p0, p1}, Lcom/google/api/client/util/ArrayMap;->getDataIndexOfKey(Ljava/lang/Object;)I

    move-result v1

    if-eq v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public final containsValue(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 322
    .local p0, "this":Lcom/google/api/client/util/ArrayMap;, "Lcom/google/api/client/util/ArrayMap<TK;TV;>;"
    iget v4, p0, Lcom/google/api/client/util/ArrayMap;->size:I

    shl-int/lit8 v1, v4, 0x1

    .line 323
    .local v1, "dataSize":I
    iget-object v0, p0, Lcom/google/api/client/util/ArrayMap;->data:[Ljava/lang/Object;

    .line 324
    .local v0, "data":[Ljava/lang/Object;
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_7
    if-ge v2, v1, :cond_1a

    .line 325
    aget-object v3, v0, v2

    .line 326
    .local v3, "v":Ljava/lang/Object;
    if-nez p1, :cond_11

    if-nez v3, :cond_17

    .line 327
    :cond_f
    const/4 v4, 0x1

    .line 330
    .end local v3    # "v":Ljava/lang/Object;
    :goto_10
    return v4

    .line 326
    .restart local v3    # "v":Ljava/lang/Object;
    :cond_11
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f

    .line 324
    :cond_17
    add-int/lit8 v2, v2, 0x2

    goto :goto_7

    .line 330
    .end local v3    # "v":Ljava/lang/Object;
    :cond_1a
    const/4 v4, 0x0

    goto :goto_10
.end method

.method public final entrySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 335
    .local p0, "this":Lcom/google/api/client/util/ArrayMap;, "Lcom/google/api/client/util/ArrayMap<TK;TV;>;"
    new-instance v0, Lcom/google/api/client/util/ArrayMap$EntrySet;

    invoke-direct {v0, p0}, Lcom/google/api/client/util/ArrayMap$EntrySet;-><init>(Lcom/google/api/client/util/ArrayMap;)V

    return-object v0
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 195
    .local p0, "this":Lcom/google/api/client/util/ArrayMap;, "Lcom/google/api/client/util/ArrayMap<TK;TV;>;"
    invoke-direct {p0, p1}, Lcom/google/api/client/util/ArrayMap;->getDataIndexOfKey(Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/api/client/util/ArrayMap;->valueAtDataIndex(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getValue(I)Ljava/lang/Object;
    .registers 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .prologue
    .line 111
    .local p0, "this":Lcom/google/api/client/util/ArrayMap;, "Lcom/google/api/client/util/ArrayMap<TK;TV;>;"
    if-ltz p1, :cond_6

    iget v0, p0, Lcom/google/api/client/util/ArrayMap;->size:I

    if-lt p1, v0, :cond_8

    .line 112
    :cond_6
    const/4 v0, 0x0

    .line 114
    :goto_7
    return-object v0

    :cond_8
    shl-int/lit8 v0, p1, 0x1

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/api/client/util/ArrayMap;->valueAtDataIndex(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_7
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/api/client/util/ArrayMap;, "Lcom/google/api/client/util/ArrayMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    const/4 v3, 0x0

    .line 205
    .line 1186
    invoke-direct {p0, p1}, Lcom/google/api/client/util/ArrayMap;->getDataIndexOfKey(Ljava/lang/Object;)I

    move-result v1

    shr-int/lit8 v0, v1, 0x1

    .line 206
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    .line 207
    iget v0, p0, Lcom/google/api/client/util/ArrayMap;->size:I

    .line 2128
    :cond_c
    if-gez v0, :cond_14

    .line 2129
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 2131
    :cond_14
    add-int/lit8 v4, v0, 0x1

    .line 2231
    if-gez v4, :cond_1e

    .line 2232
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 2234
    :cond_1e
    iget-object v2, p0, Lcom/google/api/client/util/ArrayMap;->data:[Ljava/lang/Object;

    .line 2235
    shl-int/lit8 v1, v4, 0x1

    .line 2236
    if-nez v2, :cond_4c

    move v2, v3

    .line 2237
    :goto_25
    if-le v1, v2, :cond_3a

    .line 2238
    div-int/lit8 v2, v2, 0x2

    mul-int/lit8 v2, v2, 0x3

    add-int/lit8 v2, v2, 0x1

    .line 2239
    rem-int/lit8 v5, v2, 0x2

    if-eqz v5, :cond_33

    .line 2240
    add-int/lit8 v2, v2, 0x1

    .line 2242
    :cond_33
    if-ge v2, v1, :cond_63

    .line 2250
    :goto_35
    if-nez v1, :cond_4e

    .line 2251
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/api/client/util/ArrayMap;->data:[Ljava/lang/Object;

    .line 2133
    :cond_3a
    :goto_3a
    shl-int/lit8 v1, v0, 0x1

    .line 2134
    add-int/lit8 v2, v1, 0x1

    invoke-direct {p0, v2}, Lcom/google/api/client/util/ArrayMap;->valueAtDataIndex(I)Ljava/lang/Object;

    move-result-object v2

    .line 2135
    invoke-direct {p0, v1, p1, p2}, Lcom/google/api/client/util/ArrayMap;->setData(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 2136
    iget v1, p0, Lcom/google/api/client/util/ArrayMap;->size:I

    if-le v4, v1, :cond_4b

    .line 2137
    iput v4, p0, Lcom/google/api/client/util/ArrayMap;->size:I

    .line 209
    :cond_4b
    return-object v2

    .line 2236
    :cond_4c
    array-length v2, v2

    goto :goto_25

    .line 2254
    :cond_4e
    iget v2, p0, Lcom/google/api/client/util/ArrayMap;->size:I

    .line 2255
    iget-object v5, p0, Lcom/google/api/client/util/ArrayMap;->data:[Ljava/lang/Object;

    .line 2256
    if-eqz v2, :cond_57

    array-length v6, v5

    if-eq v1, v6, :cond_3a

    .line 2257
    :cond_57
    new-array v1, v1, [Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/api/client/util/ArrayMap;->data:[Ljava/lang/Object;

    .line 2258
    if-eqz v2, :cond_3a

    .line 2259
    shl-int/lit8 v2, v2, 0x1

    invoke-static {v5, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_3a

    :cond_63
    move v1, v2

    goto :goto_35
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 219
    .local p0, "this":Lcom/google/api/client/util/ArrayMap;, "Lcom/google/api/client/util/ArrayMap<TK;TV;>;"
    invoke-direct {p0, p1}, Lcom/google/api/client/util/ArrayMap;->getDataIndexOfKey(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/api/client/util/ArrayMap;->removeFromDataIndexOfKey(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method final removeFromDataIndexOfKey(I)Ljava/lang/Object;
    .registers 8
    .param p1, "dataIndexOfKey"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/api/client/util/ArrayMap;, "Lcom/google/api/client/util/ArrayMap<TK;TV;>;"
    const/4 v4, 0x0

    .line 299
    iget v5, p0, Lcom/google/api/client/util/ArrayMap;->size:I

    shl-int/lit8 v1, v5, 0x1

    .line 300
    .local v1, "dataSize":I
    if-ltz p1, :cond_9

    if-lt p1, v1, :cond_b

    :cond_9
    move-object v3, v4

    .line 311
    :goto_a
    return-object v3

    .line 303
    :cond_b
    add-int/lit8 v5, p1, 0x1

    invoke-direct {p0, v5}, Lcom/google/api/client/util/ArrayMap;->valueAtDataIndex(I)Ljava/lang/Object;

    move-result-object v3

    .line 304
    .local v3, "result":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lcom/google/api/client/util/ArrayMap;->data:[Ljava/lang/Object;

    .line 305
    .local v0, "data":[Ljava/lang/Object;
    sub-int v5, v1, p1

    add-int/lit8 v2, v5, -0x2

    .line 306
    .local v2, "moved":I
    if-eqz v2, :cond_1e

    .line 307
    add-int/lit8 v5, p1, 0x2

    invoke-static {v0, v5, v0, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 309
    :cond_1e
    iget v5, p0, Lcom/google/api/client/util/ArrayMap;->size:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/google/api/client/util/ArrayMap;->size:I

    .line 310
    add-int/lit8 v5, v1, -0x2

    invoke-direct {p0, v5, v4, v4}, Lcom/google/api/client/util/ArrayMap;->setData(ILjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_a
.end method

.method public final set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation

    .prologue
    .line 149
    .local p0, "this":Lcom/google/api/client/util/ArrayMap;, "Lcom/google/api/client/util/ArrayMap<TK;TV;>;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget v1, p0, Lcom/google/api/client/util/ArrayMap;->size:I

    .line 150
    .local v1, "size":I
    if-ltz p1, :cond_6

    if-lt p1, v1, :cond_c

    .line 151
    :cond_6
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v3}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v3

    .line 153
    :cond_c
    shl-int/lit8 v3, p1, 0x1

    add-int/lit8 v2, v3, 0x1

    .line 154
    .local v2, "valueDataIndex":I
    invoke-direct {p0, v2}, Lcom/google/api/client/util/ArrayMap;->valueAtDataIndex(I)Ljava/lang/Object;

    move-result-object v0

    .line 155
    .local v0, "result":Ljava/lang/Object;, "TV;"
    iget-object v3, p0, Lcom/google/api/client/util/ArrayMap;->data:[Ljava/lang/Object;

    aput-object p2, v3, v2

    .line 156
    return-object v0
.end method

.method public final size()I
    .registers 2

    .prologue
    .line 96
    .local p0, "this":Lcom/google/api/client/util/ArrayMap;, "Lcom/google/api/client/util/ArrayMap<TK;TV;>;"
    iget v0, p0, Lcom/google/api/client/util/ArrayMap;->size:I

    return v0
.end method
