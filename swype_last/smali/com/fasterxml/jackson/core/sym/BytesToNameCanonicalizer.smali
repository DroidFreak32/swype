.class public final Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;
.super Ljava/lang/Object;
.source "BytesToNameCanonicalizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;,
        Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$TableInfo;
    }
.end annotation


# instance fields
.field protected _collCount:I

.field protected _collEnd:I

.field protected _collList:[Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;

.field private _collListShared:Z

.field protected _count:I

.field private final _hashSeed:I

.field protected final _intern:Z

.field protected _longestCollisionList:I

.field protected _mainHash:[I

.field protected _mainHashMask:I

.field private _mainHashShared:Z

.field protected _mainNames:[Lcom/fasterxml/jackson/core/sym/Name;

.field private _mainNamesShared:Z

.field private transient _needRehash:Z

.field protected final _parent:Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;

.field protected final _tableInfo:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$TableInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .registers 4
    .param p1, "seed"    # I

    .prologue
    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 241
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_parent:Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;

    .line 242
    iput p1, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_hashSeed:I

    .line 243
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_intern:Z

    .line 259
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->initTableInfo$267dee87()Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$TableInfo;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_tableInfo:Ljava/util/concurrent/atomic/AtomicReference;

    .line 260
    return-void
.end method

.method private constructor <init>(Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;ZILcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$TableInfo;)V
    .registers 7
    .param p1, "parent"    # Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;
    .param p2, "intern"    # Z
    .param p3, "seed"    # I
    .param p4, "state"    # Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$TableInfo;

    .prologue
    const/4 v1, 0x1

    .line 267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 268
    iput-object p1, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_parent:Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;

    .line 269
    iput p3, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_hashSeed:I

    .line 270
    iput-boolean p2, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_intern:Z

    .line 271
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_tableInfo:Ljava/util/concurrent/atomic/AtomicReference;

    .line 274
    iget v0, p4, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$TableInfo;->count:I

    iput v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_count:I

    .line 275
    iget v0, p4, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$TableInfo;->mainHashMask:I

    iput v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainHashMask:I

    .line 276
    iget-object v0, p4, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$TableInfo;->mainHash:[I

    iput-object v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainHash:[I

    .line 277
    iget-object v0, p4, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$TableInfo;->mainNames:[Lcom/fasterxml/jackson/core/sym/Name;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainNames:[Lcom/fasterxml/jackson/core/sym/Name;

    .line 278
    iget-object v0, p4, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$TableInfo;->collList:[Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collList:[Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;

    .line 279
    iget v0, p4, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$TableInfo;->collCount:I

    iput v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collCount:I

    .line 280
    iget v0, p4, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$TableInfo;->collEnd:I

    iput v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collEnd:I

    .line 281
    iget v0, p4, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$TableInfo;->longestCollisionList:I

    iput v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_longestCollisionList:I

    .line 284
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_needRehash:Z

    .line 285
    iput-boolean v1, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainHashShared:Z

    .line 286
    iput-boolean v1, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainNamesShared:Z

    .line 287
    iput-boolean v1, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collListShared:Z

    .line 288
    return-void
.end method

.method private calcHash(I)I
    .registers 4
    .param p1, "firstQuad"    # I

    .prologue
    .line 664
    iget v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_hashSeed:I

    xor-int/2addr v0, p1

    .line 665
    ushr-int/lit8 v1, v0, 0xf

    add-int/2addr v0, v1

    .line 666
    ushr-int/lit8 v1, v0, 0x9

    xor-int/2addr v0, v1

    .line 667
    return v0
.end method

.method private calcHash(II)I
    .registers 5
    .param p1, "firstQuad"    # I
    .param p2, "secondQuad"    # I

    .prologue
    .line 675
    .line 676
    ushr-int/lit8 v0, p1, 0xf

    xor-int/2addr v0, p1

    .line 677
    mul-int/lit8 v1, p2, 0x21

    add-int/2addr v0, v1

    .line 678
    iget v1, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_hashSeed:I

    xor-int/2addr v0, v1

    .line 679
    ushr-int/lit8 v1, v0, 0x7

    add-int/2addr v0, v1

    .line 680
    return v0
.end method

.method private calcHash([II)I
    .registers 7
    .param p1, "quads"    # [I
    .param p2, "qlen"    # I

    .prologue
    .line 686
    const/4 v2, 0x3

    if-ge p2, v2, :cond_9

    .line 687
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 695
    :cond_9
    const/4 v2, 0x0

    aget v2, p1, v2

    iget v3, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_hashSeed:I

    xor-int/2addr v2, v3

    .line 696
    ushr-int/lit8 v3, v2, 0x9

    add-int/2addr v2, v3

    .line 697
    mul-int/lit8 v2, v2, 0x21

    .line 698
    const/4 v3, 0x1

    aget v3, p1, v3

    add-int/2addr v2, v3

    .line 699
    const v3, 0x1003f

    mul-int/2addr v2, v3

    .line 700
    ushr-int/lit8 v3, v2, 0xf

    add-int/2addr v2, v3

    .line 701
    const/4 v3, 0x2

    aget v3, p1, v3

    xor-int/2addr v2, v3

    .line 702
    ushr-int/lit8 v3, v2, 0x11

    add-int v0, v2, v3

    .line 704
    .local v0, "hash":I
    const/4 v1, 0x3

    .local v1, "i":I
    :goto_28
    if-ge v1, p2, :cond_39

    .line 705
    mul-int/lit8 v2, v0, 0x1f

    aget v3, p1, v1

    xor-int/2addr v2, v3

    .line 707
    ushr-int/lit8 v3, v2, 0x3

    add-int/2addr v2, v3

    .line 708
    shl-int/lit8 v3, v2, 0x7

    xor-int v0, v2, v3

    .line 704
    add-int/lit8 v1, v1, 0x1

    goto :goto_28

    .line 711
    :cond_39
    ushr-int/lit8 v2, v0, 0xf

    add-int/2addr v2, v0

    .line 712
    shl-int/lit8 v3, v2, 0x9

    xor-int/2addr v2, v3

    .line 713
    return v2
.end method

.method private expandCollision()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 1046
    iget-object v1, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collList:[Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;

    .line 1047
    .local v1, "old":[Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;
    array-length v0, v1

    .line 1048
    .local v0, "len":I
    add-int v2, v0, v0

    new-array v2, v2, [Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;

    iput-object v2, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collList:[Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;

    .line 1049
    iget-object v2, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collList:[Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1050
    return-void
.end method

.method private findBestBucket()I
    .registers 8

    .prologue
    .line 989
    iget-object v2, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collList:[Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;

    .line 990
    .local v2, "buckets":[Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;
    const v0, 0x7fffffff

    .line 991
    .local v0, "bestCount":I
    const/4 v1, -0x1

    .line 993
    .local v1, "bestIx":I
    const/4 v4, 0x0

    .local v4, "i":I
    iget v5, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collEnd:I

    .local v5, "len":I
    :goto_9
    if-ge v4, v5, :cond_1a

    .line 994
    aget-object v6, v2, v4

    .line 8170
    iget v3, v6, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;->_length:I

    .line 995
    .local v3, "count":I
    if-ge v3, v0, :cond_17

    .line 996
    const/4 v6, 0x1

    if-ne v3, v6, :cond_15

    .line 1003
    .end local v3    # "count":I
    .end local v4    # "i":I
    :goto_14
    return v4

    .line 999
    .restart local v3    # "count":I
    .restart local v4    # "i":I
    :cond_15
    move v0, v3

    .line 1000
    move v1, v4

    .line 993
    :cond_17
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .end local v3    # "count":I
    :cond_1a
    move v4, v1

    .line 1003
    goto :goto_14
.end method

.method private static initTableInfo$267dee87()Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$TableInfo;
    .registers 4

    .prologue
    const/16 v3, 0x40

    .line 296
    new-instance v0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$TableInfo;

    const/16 v1, 0x3f

    new-array v2, v3, [I

    new-array v3, v3, [Lcom/fasterxml/jackson/core/sym/Name;

    invoke-direct {v0, v1, v2, v3}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$TableInfo;-><init>(I[I[Lcom/fasterxml/jackson/core/sym/Name;)V

    return-object v0
.end method


# virtual methods
.method public final addName(Ljava/lang/String;[II)Lcom/fasterxml/jackson/core/sym/Name;
    .registers 22
    .param p1, "symbolStr"    # Ljava/lang/String;
    .param p2, "quads"    # [I
    .param p3, "qlen"    # I

    .prologue
    .line 628
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_intern:Z

    if-eqz v3, :cond_e

    .line 629
    sget-object v3, Lcom/fasterxml/jackson/core/util/InternCache;->instance:Lcom/fasterxml/jackson/core/util/InternCache;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/fasterxml/jackson/core/util/InternCache;->intern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 632
    :cond_e
    const/4 v3, 0x3

    move/from16 v0, p3

    if-ge v0, v3, :cond_46

    .line 633
    const/4 v3, 0x1

    move/from16 v0, p3

    if-ne v0, v3, :cond_39

    const/4 v3, 0x0

    aget v3, p2, v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->calcHash(I)I

    move-result v5

    .line 3069
    .local v5, "hash":I
    :goto_21
    const/4 v3, 0x4

    move/from16 v0, p3

    if-ge v0, v3, :cond_29

    .line 3070
    packed-switch p3, :pswitch_data_350

    .line 3081
    :cond_29
    move/from16 v0, p3

    new-array v4, v0, [I

    .line 3082
    const/4 v3, 0x0

    :goto_2e
    move/from16 v0, p3

    if-ge v3, v0, :cond_148

    .line 3083
    aget v6, p2, v3

    aput v6, v4, v3

    .line 3082
    add-int/lit8 v3, v3, 0x1

    goto :goto_2e

    .line 633
    .end local v5    # "hash":I
    :cond_39
    const/4 v3, 0x0

    aget v3, p2, v3

    const/4 v4, 0x1

    aget v4, p2, v4

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->calcHash(II)I

    move-result v5

    goto :goto_21

    .line 635
    :cond_46
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->calcHash([II)I

    move-result v5

    .restart local v5    # "hash":I
    goto :goto_21

    .line 3072
    :pswitch_51
    new-instance v9, Lcom/fasterxml/jackson/core/sym/Name1;

    const/4 v3, 0x0

    aget v3, p2, v3

    move-object/from16 v0, p1

    invoke-direct {v9, v0, v5, v3}, Lcom/fasterxml/jackson/core/sym/Name1;-><init>(Ljava/lang/String;II)V

    .line 3791
    .local v9, "symbol":Lcom/fasterxml/jackson/core/sym/Name;
    :goto_5b
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainHashShared:Z

    if-eqz v3, :cond_7e

    .line 4014
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainHash:[I

    .line 4015
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainHash:[I

    array-length v4, v4

    .line 4017
    new-array v6, v4, [I

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainHash:[I

    .line 4018
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainHash:[I

    const/4 v8, 0x0

    invoke-static {v3, v6, v7, v8, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4019
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainHashShared:Z

    .line 3795
    :cond_7e
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_needRehash:Z

    if-eqz v3, :cond_c5

    .line 4869
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_needRehash:Z

    .line 4871
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainNamesShared:Z

    .line 4877
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainHash:[I

    .line 4878
    array-length v6, v3

    .line 4879
    add-int v3, v6, v6

    .line 4884
    const/high16 v4, 0x10000

    if-le v3, v4, :cond_153

    .line 4973
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_count:I

    .line 4974
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_longestCollisionList:I

    .line 4975
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainHash:[I

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/util/Arrays;->fill([II)V

    .line 4976
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainNames:[Lcom/fasterxml/jackson/core/sym/Name;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4977
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collList:[Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4978
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collCount:I

    .line 4979
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collEnd:I

    .line 3799
    :cond_c5
    :goto_c5
    move-object/from16 v0, p0

    iget v3, v0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_count:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_count:I

    .line 3804
    move-object/from16 v0, p0

    iget v3, v0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainHashMask:I

    and-int v4, v5, v3

    .line 3805
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainNames:[Lcom/fasterxml/jackson/core/sym/Name;

    aget-object v3, v3, v4

    if-nez v3, :cond_288

    .line 3806
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainHash:[I

    shl-int/lit8 v6, v5, 0x8

    aput v6, v3, v4

    .line 3807
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainNamesShared:Z

    if-eqz v3, :cond_104

    .line 6037
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainNames:[Lcom/fasterxml/jackson/core/sym/Name;

    .line 6038
    array-length v6, v3

    .line 6039
    new-array v7, v6, [Lcom/fasterxml/jackson/core/sym/Name;

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainNames:[Lcom/fasterxml/jackson/core/sym/Name;

    .line 6040
    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainNames:[Lcom/fasterxml/jackson/core/sym/Name;

    const/4 v10, 0x0

    invoke-static {v3, v7, v8, v10, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6041
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainNamesShared:Z

    .line 3810
    :cond_104
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainNames:[Lcom/fasterxml/jackson/core/sym/Name;

    aput-object v9, v3, v4

    .line 3852
    :cond_10a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainHash:[I

    array-length v3, v3

    .line 3853
    move-object/from16 v0, p0

    iget v4, v0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_count:I

    shr-int/lit8 v6, v3, 0x1

    if-le v4, v6, :cond_125

    .line 3854
    shr-int/lit8 v4, v3, 0x2

    .line 3858
    move-object/from16 v0, p0

    iget v6, v0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_count:I

    sub-int/2addr v3, v4

    if-le v6, v3, :cond_342

    .line 3859
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_needRehash:Z

    .line 639
    :cond_125
    :goto_125
    return-object v9

    .line 3074
    .end local v9    # "symbol":Lcom/fasterxml/jackson/core/sym/Name;
    :pswitch_126
    new-instance v9, Lcom/fasterxml/jackson/core/sym/Name2;

    const/4 v3, 0x0

    aget v3, p2, v3

    const/4 v4, 0x1

    aget v4, p2, v4

    move-object/from16 v0, p1

    invoke-direct {v9, v0, v5, v3, v4}, Lcom/fasterxml/jackson/core/sym/Name2;-><init>(Ljava/lang/String;III)V

    goto/16 :goto_5b

    .line 3076
    :pswitch_135
    new-instance v3, Lcom/fasterxml/jackson/core/sym/Name3;

    const/4 v4, 0x0

    aget v6, p2, v4

    const/4 v4, 0x1

    aget v7, p2, v4

    const/4 v4, 0x2

    aget v8, p2, v4

    move-object/from16 v4, p1

    invoke-direct/range {v3 .. v8}, Lcom/fasterxml/jackson/core/sym/Name3;-><init>(Ljava/lang/String;IIII)V

    move-object v9, v3

    goto/16 :goto_5b

    .line 3085
    :cond_148
    new-instance v9, Lcom/fasterxml/jackson/core/sym/NameN;

    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-direct {v9, v0, v5, v4, v1}, Lcom/fasterxml/jackson/core/sym/NameN;-><init>(Ljava/lang/String;I[II)V

    goto/16 :goto_5b

    .line 4889
    .restart local v9    # "symbol":Lcom/fasterxml/jackson/core/sym/Name;
    :cond_153
    new-array v4, v3, [I

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainHash:[I

    .line 4890
    add-int/lit8 v4, v3, -0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainHashMask:I

    .line 4891
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainNames:[Lcom/fasterxml/jackson/core/sym/Name;

    .line 4892
    new-array v3, v3, [Lcom/fasterxml/jackson/core/sym/Name;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainNames:[Lcom/fasterxml/jackson/core/sym/Name;

    .line 4893
    const/4 v4, 0x0

    .line 4894
    const/4 v3, 0x0

    move/from16 v17, v3

    move v3, v4

    move/from16 v4, v17

    :goto_170
    if-ge v4, v6, :cond_192

    .line 4895
    aget-object v8, v7, v4

    .line 4896
    if-eqz v8, :cond_18f

    .line 4897
    add-int/lit8 v3, v3, 0x1

    .line 4898
    invoke-virtual {v8}, Lcom/fasterxml/jackson/core/sym/Name;->hashCode()I

    move-result v10

    .line 4899
    move-object/from16 v0, p0

    iget v11, v0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainHashMask:I

    and-int/2addr v11, v10

    .line 4900
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainNames:[Lcom/fasterxml/jackson/core/sym/Name;

    aput-object v8, v12, v11

    .line 4901
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainHash:[I

    shl-int/lit8 v10, v10, 0x8

    aput v10, v8, v11

    .line 4894
    :cond_18f
    add-int/lit8 v4, v4, 0x1

    goto :goto_170

    .line 4909
    :cond_192
    move-object/from16 v0, p0

    iget v10, v0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collEnd:I

    .line 4910
    if-nez v10, :cond_19f

    .line 4911
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_longestCollisionList:I

    goto/16 :goto_c5

    .line 4915
    :cond_19f
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collCount:I

    .line 4916
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collEnd:I

    .line 4917
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collListShared:Z

    .line 4919
    const/4 v6, 0x0

    .line 4921
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collList:[Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;

    .line 4922
    array-length v4, v11

    new-array v4, v4, [Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collList:[Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;

    .line 4923
    const/4 v4, 0x0

    move v8, v4

    move v4, v6

    move v6, v3

    :goto_1be
    if-ge v8, v10, :cond_259

    .line 4924
    aget-object v3, v11, v8

    move-object/from16 v17, v3

    move v3, v6

    move-object/from16 v6, v17

    :goto_1c7
    if-eqz v6, :cond_253

    .line 4925
    add-int/lit8 v7, v3, 0x1

    .line 4926
    iget-object v12, v6, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;->_name:Lcom/fasterxml/jackson/core/sym/Name;

    .line 4927
    invoke-virtual {v12}, Lcom/fasterxml/jackson/core/sym/Name;->hashCode()I

    move-result v3

    .line 4928
    move-object/from16 v0, p0

    iget v13, v0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainHashMask:I

    and-int/2addr v13, v3

    .line 4929
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainHash:[I

    aget v14, v14, v13

    .line 4930
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainNames:[Lcom/fasterxml/jackson/core/sym/Name;

    aget-object v15, v15, v13

    if-nez v15, :cond_1f9

    .line 4931
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainHash:[I

    shl-int/lit8 v3, v3, 0x8

    aput v3, v14, v13

    .line 4932
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainNames:[Lcom/fasterxml/jackson/core/sym/Name;

    aput-object v12, v3, v13

    move v3, v4

    .line 4924
    :goto_1f3
    iget-object v4, v6, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;->_next:Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;

    move-object v6, v4

    move v4, v3

    move v3, v7

    goto :goto_1c7

    .line 4934
    :cond_1f9
    move-object/from16 v0, p0

    iget v3, v0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collCount:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collCount:I

    .line 4935
    and-int/lit16 v3, v14, 0xff

    .line 4936
    if-nez v3, :cond_250

    .line 4937
    move-object/from16 v0, p0

    iget v3, v0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collEnd:I

    const/16 v15, 0xfe

    if-gt v3, v15, :cond_24b

    .line 4938
    move-object/from16 v0, p0

    iget v3, v0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collEnd:I

    .line 4939
    move-object/from16 v0, p0

    iget v15, v0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collEnd:I

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    iput v15, v0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collEnd:I

    .line 4941
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collList:[Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;

    array-length v15, v15

    if-lt v3, v15, :cond_227

    .line 4942
    invoke-direct/range {p0 .. p0}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->expandCollision()V

    .line 4948
    :cond_227
    :goto_227
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainHash:[I

    and-int/lit16 v14, v14, -0x100

    add-int/lit8 v16, v3, 0x1

    or-int v14, v14, v16

    aput v14, v15, v13

    .line 4953
    :goto_233
    new-instance v13, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collList:[Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;

    aget-object v14, v14, v3

    invoke-direct {v13, v12, v14}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;-><init>(Lcom/fasterxml/jackson/core/sym/Name;Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;)V

    .line 4954
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collList:[Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;

    aput-object v13, v12, v3

    .line 5170
    iget v3, v13, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;->_length:I

    .line 4955
    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    goto :goto_1f3

    .line 4945
    :cond_24b
    invoke-direct/range {p0 .. p0}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->findBestBucket()I

    move-result v3

    goto :goto_227

    .line 4950
    :cond_250
    add-int/lit8 v3, v3, -0x1

    goto :goto_233

    .line 4923
    :cond_253
    add-int/lit8 v6, v8, 0x1

    move v8, v6

    move v6, v3

    goto/16 :goto_1be

    .line 4960
    :cond_259
    move-object/from16 v0, p0

    iput v4, v0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_longestCollisionList:I

    .line 4962
    move-object/from16 v0, p0

    iget v3, v0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_count:I

    if-eq v6, v3, :cond_c5

    .line 4963
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Internal error: count after rehash "

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "; should be "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_count:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3815
    :cond_288
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collListShared:Z

    if-eqz v3, :cond_2a1

    .line 7024
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collList:[Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;

    .line 7025
    if-nez v3, :cond_328

    .line 7026
    const/16 v3, 0x20

    new-array v3, v3, [Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collList:[Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;

    .line 7032
    :goto_29c
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collListShared:Z

    .line 3818
    :cond_2a1
    move-object/from16 v0, p0

    iget v3, v0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collCount:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collCount:I

    .line 3819
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainHash:[I

    aget v6, v3, v4

    .line 3820
    and-int/lit16 v3, v6, 0xff

    .line 3821
    if-nez v3, :cond_33f

    .line 3822
    move-object/from16 v0, p0

    iget v3, v0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collEnd:I

    const/16 v7, 0xfe

    if-gt v3, v7, :cond_33a

    .line 3823
    move-object/from16 v0, p0

    iget v3, v0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collEnd:I

    .line 3824
    move-object/from16 v0, p0

    iget v7, v0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collEnd:I

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    iput v7, v0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collEnd:I

    .line 3826
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collList:[Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;

    array-length v7, v7

    if-lt v3, v7, :cond_2d5

    .line 3827
    invoke-direct/range {p0 .. p0}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->expandCollision()V

    .line 3833
    :cond_2d5
    :goto_2d5
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainHash:[I

    and-int/lit16 v6, v6, -0x100

    add-int/lit8 v8, v3, 0x1

    or-int/2addr v6, v8

    aput v6, v7, v4

    .line 3839
    :goto_2e0
    new-instance v4, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collList:[Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;

    aget-object v6, v6, v3

    invoke-direct {v4, v9, v6}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;-><init>(Lcom/fasterxml/jackson/core/sym/Name;Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;)V

    .line 3840
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collList:[Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;

    aput-object v4, v6, v3

    .line 7170
    iget v3, v4, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;->_length:I

    .line 3842
    move-object/from16 v0, p0

    iget v4, v0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_longestCollisionList:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_longestCollisionList:I

    .line 3843
    move-object/from16 v0, p0

    iget v3, v0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_longestCollisionList:I

    const/16 v4, 0xff

    if-le v3, v4, :cond_10a

    .line 8099
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Longest collision chain in symbol table (of size "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v6, v0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_count:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, ") now exceeds maximum, 255 -- suspect a DoS attack based on hash collisions"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 7028
    :cond_328
    array-length v6, v3

    .line 7029
    new-array v7, v6, [Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collList:[Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;

    .line 7030
    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collList:[Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;

    const/4 v10, 0x0

    invoke-static {v3, v7, v8, v10, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_29c

    .line 3830
    :cond_33a
    invoke-direct/range {p0 .. p0}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->findBestBucket()I

    move-result v3

    goto :goto_2d5

    .line 3835
    :cond_33f
    add-int/lit8 v3, v3, -0x1

    goto :goto_2e0

    .line 3860
    :cond_342
    move-object/from16 v0, p0

    iget v3, v0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collCount:I

    if-lt v3, v4, :cond_125

    .line 3861
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_needRehash:Z

    goto/16 :goto_125

    .line 3070
    nop

    :pswitch_data_350
    .packed-switch 0x1
        :pswitch_51
        :pswitch_126
        :pswitch_135
    .end packed-switch
.end method

.method public final findName(I)Lcom/fasterxml/jackson/core/sym/Name;
    .registers 9
    .param p1, "firstQuad"    # I

    .prologue
    const/4 v5, 0x0

    .line 482
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->calcHash(I)I

    move-result v1

    .line 483
    .local v1, "hash":I
    iget v6, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainHashMask:I

    and-int v2, v1, v6

    .line 484
    .local v2, "ix":I
    iget-object v6, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainHash:[I

    aget v4, v6, v2

    .line 489
    .local v4, "val":I
    shr-int/lit8 v6, v4, 0x8

    xor-int/2addr v6, v1

    shl-int/lit8 v6, v6, 0x8

    if-nez v6, :cond_34

    .line 491
    iget-object v6, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainNames:[Lcom/fasterxml/jackson/core/sym/Name;

    aget-object v3, v6, v2

    .line 492
    .local v3, "name":Lcom/fasterxml/jackson/core/sym/Name;
    if-nez v3, :cond_1c

    move-object v3, v5

    .line 511
    .end local v3    # "name":Lcom/fasterxml/jackson/core/sym/Name;
    :cond_1b
    :goto_1b
    return-object v3

    .line 495
    .restart local v3    # "name":Lcom/fasterxml/jackson/core/sym/Name;
    :cond_1c
    invoke-virtual {v3, p1}, Lcom/fasterxml/jackson/core/sym/Name;->equals(I)Z

    move-result v6

    if-nez v6, :cond_1b

    .line 502
    .end local v3    # "name":Lcom/fasterxml/jackson/core/sym/Name;
    :cond_22
    and-int/lit16 v4, v4, 0xff

    .line 503
    if-lez v4, :cond_38

    .line 504
    add-int/lit8 v4, v4, -0x1

    .line 505
    iget-object v6, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collList:[Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;

    aget-object v0, v6, v4

    .line 506
    .local v0, "bucket":Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;
    if-eqz v0, :cond_38

    .line 507
    const/4 v5, 0x0

    invoke-virtual {v0, v1, p1, v5}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;->find(III)Lcom/fasterxml/jackson/core/sym/Name;

    move-result-object v3

    goto :goto_1b

    .line 498
    .end local v0    # "bucket":Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;
    :cond_34
    if-nez v4, :cond_22

    move-object v3, v5

    .line 499
    goto :goto_1b

    :cond_38
    move-object v3, v5

    .line 511
    goto :goto_1b
.end method

.method public final findName(II)Lcom/fasterxml/jackson/core/sym/Name;
    .registers 10
    .param p1, "firstQuad"    # I
    .param p2, "secondQuad"    # I

    .prologue
    const/4 v5, 0x0

    .line 531
    if-nez p2, :cond_1e

    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->calcHash(I)I

    move-result v1

    .line 532
    .local v1, "hash":I
    :goto_7
    iget v6, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainHashMask:I

    and-int v2, v1, v6

    .line 533
    .local v2, "ix":I
    iget-object v6, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainHash:[I

    aget v4, v6, v2

    .line 538
    .local v4, "val":I
    shr-int/lit8 v6, v4, 0x8

    xor-int/2addr v6, v1

    shl-int/lit8 v6, v6, 0x8

    if-nez v6, :cond_3a

    .line 540
    iget-object v6, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainNames:[Lcom/fasterxml/jackson/core/sym/Name;

    aget-object v3, v6, v2

    .line 541
    .local v3, "name":Lcom/fasterxml/jackson/core/sym/Name;
    if-nez v3, :cond_23

    move-object v3, v5

    .line 560
    .end local v3    # "name":Lcom/fasterxml/jackson/core/sym/Name;
    :cond_1d
    :goto_1d
    return-object v3

    .line 531
    .end local v1    # "hash":I
    .end local v2    # "ix":I
    .end local v4    # "val":I
    :cond_1e
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->calcHash(II)I

    move-result v1

    goto :goto_7

    .line 544
    .restart local v1    # "hash":I
    .restart local v2    # "ix":I
    .restart local v3    # "name":Lcom/fasterxml/jackson/core/sym/Name;
    .restart local v4    # "val":I
    :cond_23
    invoke-virtual {v3, p1, p2}, Lcom/fasterxml/jackson/core/sym/Name;->equals(II)Z

    move-result v6

    if-nez v6, :cond_1d

    .line 551
    .end local v3    # "name":Lcom/fasterxml/jackson/core/sym/Name;
    :cond_29
    and-int/lit16 v4, v4, 0xff

    .line 552
    if-lez v4, :cond_3e

    .line 553
    add-int/lit8 v4, v4, -0x1

    .line 554
    iget-object v6, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collList:[Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;

    aget-object v0, v6, v4

    .line 555
    .local v0, "bucket":Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;
    if-eqz v0, :cond_3e

    .line 556
    invoke-virtual {v0, v1, p1, p2}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;->find(III)Lcom/fasterxml/jackson/core/sym/Name;

    move-result-object v3

    goto :goto_1d

    .line 547
    .end local v0    # "bucket":Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;
    :cond_3a
    if-nez v4, :cond_29

    move-object v3, v5

    .line 548
    goto :goto_1d

    :cond_3e
    move-object v3, v5

    .line 560
    goto :goto_1d
.end method

.method public final findName([II)Lcom/fasterxml/jackson/core/sym/Name;
    .registers 11
    .param p1, "quads"    # [I
    .param p2, "qlen"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 582
    const/4 v7, 0x3

    if-ge p2, v7, :cond_13

    .line 583
    aget v6, p1, v5

    const/4 v7, 0x2

    if-ge p2, v7, :cond_f

    :goto_a
    invoke-virtual {p0, v6, v5}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->findName(II)Lcom/fasterxml/jackson/core/sym/Name;

    move-result-object v3

    .line 606
    :cond_e
    :goto_e
    return-object v3

    .line 583
    :cond_f
    const/4 v5, 0x1

    aget v5, p1, v5

    goto :goto_a

    .line 585
    :cond_13
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->calcHash([II)I

    move-result v1

    .line 587
    .local v1, "hash":I
    iget v5, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainHashMask:I

    and-int v2, v1, v5

    .line 588
    .local v2, "ix":I
    iget-object v5, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainHash:[I

    aget v4, v5, v2

    .line 589
    .local v4, "val":I
    shr-int/lit8 v5, v4, 0x8

    xor-int/2addr v5, v1

    shl-int/lit8 v5, v5, 0x8

    if-nez v5, :cond_43

    .line 590
    iget-object v5, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainNames:[Lcom/fasterxml/jackson/core/sym/Name;

    aget-object v3, v5, v2

    .line 591
    .local v3, "name":Lcom/fasterxml/jackson/core/sym/Name;
    if-eqz v3, :cond_e

    invoke-virtual {v3, p1, p2}, Lcom/fasterxml/jackson/core/sym/Name;->equals([II)Z

    move-result v5

    if-nez v5, :cond_e

    .line 598
    .end local v3    # "name":Lcom/fasterxml/jackson/core/sym/Name;
    :cond_32
    and-int/lit16 v4, v4, 0xff

    .line 599
    if-lez v4, :cond_47

    .line 600
    add-int/lit8 v4, v4, -0x1

    .line 601
    iget-object v5, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collList:[Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;

    aget-object v0, v5, v4

    .line 602
    .local v0, "bucket":Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;
    if-eqz v0, :cond_47

    .line 603
    invoke-virtual {v0, v1, p1, p2}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;->find(I[II)Lcom/fasterxml/jackson/core/sym/Name;

    move-result-object v3

    goto :goto_e

    .line 595
    .end local v0    # "bucket":Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;
    :cond_43
    if-nez v4, :cond_32

    move-object v3, v6

    .line 596
    goto :goto_e

    :cond_47
    move-object v3, v6

    .line 606
    goto :goto_e
.end method

.method public final makeChild$ed8baa8(Z)Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;
    .registers 5
    .param p1, "intern"    # Z

    .prologue
    .line 346
    new-instance v1, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;

    iget v2, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_hashSeed:I

    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_tableInfo:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$TableInfo;

    invoke-direct {v1, p0, p1, v2, v0}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;-><init>(Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;ZILcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$TableInfo;)V

    return-object v1
.end method

.method public final release()V
    .registers 7

    .prologue
    const/4 v2, 0x1

    .line 359
    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_parent:Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;

    if-eqz v0, :cond_3a

    .line 1424
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainHashShared:Z

    if-nez v0, :cond_3b

    move v0, v2

    .line 359
    :goto_a
    if-eqz v0, :cond_3a

    .line 360
    iget-object v3, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_parent:Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;

    new-instance v1, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$TableInfo;

    invoke-direct {v1, p0}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$TableInfo;-><init>(Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;)V

    .line 2372
    iget v4, v1, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$TableInfo;->count:I

    .line 2373
    iget-object v0, v3, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_tableInfo:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$TableInfo;

    .line 2376
    iget v5, v0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$TableInfo;->count:I

    if-le v4, v5, :cond_34

    .line 2386
    const/16 v5, 0x1770

    if-gt v4, v5, :cond_2b

    iget v4, v1, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$TableInfo;->longestCollisionList:I

    const/16 v5, 0x3f

    if-le v4, v5, :cond_2f

    .line 2393
    :cond_2b
    invoke-static {}, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->initTableInfo$267dee87()Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$TableInfo;

    move-result-object v1

    .line 2395
    :cond_2f
    iget-object v3, v3, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_tableInfo:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 364
    :cond_34
    iput-boolean v2, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainHashShared:Z

    .line 365
    iput-boolean v2, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainNamesShared:Z

    .line 366
    iput-boolean v2, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collListShared:Z

    .line 368
    :cond_3a
    return-void

    .line 1424
    :cond_3b
    const/4 v0, 0x0

    goto :goto_a
.end method
