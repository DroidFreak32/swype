.class final Lcom/jcraft/jzlib/Tree;
.super Ljava/lang/Object;
.source "Tree.java"


# static fields
.field private static _dist_code:[B

.field static final _length_code:[B

.field static final base_dist:[I

.field static final base_length:[I

.field static final bl_order:[B

.field static final extra_blbits:[I

.field static final extra_dbits:[I

.field static final extra_lbits:[I


# instance fields
.field dyn_tree:[S

.field max_code:I

.field stat_desc:Lcom/jcraft/jzlib/StaticTree;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0x1e

    const/16 v2, 0x1d

    const/16 v1, 0x13

    .line 62
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/jcraft/jzlib/Tree;->extra_lbits:[I

    .line 67
    new-array v0, v3, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/jcraft/jzlib/Tree;->extra_dbits:[I

    .line 72
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/jcraft/jzlib/Tree;->extra_blbits:[I

    .line 76
    new-array v0, v1, [B

    fill-array-data v0, :array_3

    sput-object v0, Lcom/jcraft/jzlib/Tree;->bl_order:[B

    .line 89
    const/16 v0, 0x200

    new-array v0, v0, [B

    fill-array-data v0, :array_4

    sput-object v0, Lcom/jcraft/jzlib/Tree;->_dist_code:[B

    .line 118
    const/16 v0, 0x100

    new-array v0, v0, [B

    fill-array-data v0, :array_5

    sput-object v0, Lcom/jcraft/jzlib/Tree;->_length_code:[B

    .line 134
    new-array v0, v2, [I

    fill-array-data v0, :array_6

    sput-object v0, Lcom/jcraft/jzlib/Tree;->base_length:[I

    .line 139
    new-array v0, v3, [I

    fill-array-data v0, :array_7

    sput-object v0, Lcom/jcraft/jzlib/Tree;->base_dist:[I

    return-void

    .line 62
    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
        0x1
        0x1
        0x1
        0x2
        0x2
        0x2
        0x2
        0x3
        0x3
        0x3
        0x3
        0x4
        0x4
        0x4
        0x4
        0x5
        0x5
        0x5
        0x5
        0x0
    .end array-data

    .line 67
    :array_1
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x1
        0x1
        0x2
        0x2
        0x3
        0x3
        0x4
        0x4
        0x5
        0x5
        0x6
        0x6
        0x7
        0x7
        0x8
        0x8
        0x9
        0x9
        0xa
        0xa
        0xb
        0xb
        0xc
        0xc
        0xd
        0xd
    .end array-data

    .line 72
    :array_2
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x2
        0x3
        0x7
    .end array-data

    .line 76
    :array_3
    .array-data 1
        0x10t
        0x11t
        0x12t
        0x0t
        0x8t
        0x7t
        0x9t
        0x6t
        0xat
        0x5t
        0xbt
        0x4t
        0xct
        0x3t
        0xdt
        0x2t
        0xet
        0x1t
        0xft
    .end array-data

    .line 89
    :array_4
    .array-data 1
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x4t
        0x5t
        0x5t
        0x6t
        0x6t
        0x6t
        0x6t
        0x7t
        0x7t
        0x7t
        0x7t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x9t
        0x9t
        0x9t
        0x9t
        0x9t
        0x9t
        0x9t
        0x9t
        0xat
        0xat
        0xat
        0xat
        0xat
        0xat
        0xat
        0xat
        0xat
        0xat
        0xat
        0xat
        0xat
        0xat
        0xat
        0xat
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xdt
        0xdt
        0xdt
        0xdt
        0xdt
        0xdt
        0xdt
        0xdt
        0xdt
        0xdt
        0xdt
        0xdt
        0xdt
        0xdt
        0xdt
        0xdt
        0xdt
        0xdt
        0xdt
        0xdt
        0xdt
        0xdt
        0xdt
        0xdt
        0xdt
        0xdt
        0xdt
        0xdt
        0xdt
        0xdt
        0xdt
        0xdt
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0x0t
        0x0t
        0x10t
        0x11t
        0x12t
        0x12t
        0x13t
        0x13t
        0x14t
        0x14t
        0x14t
        0x14t
        0x15t
        0x15t
        0x15t
        0x15t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
    .end array-data

    .line 118
    :array_5
    .array-data 1
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x8t
        0x9t
        0x9t
        0xat
        0xat
        0xbt
        0xbt
        0xct
        0xct
        0xct
        0xct
        0xdt
        0xdt
        0xdt
        0xdt
        0xet
        0xet
        0xet
        0xet
        0xft
        0xft
        0xft
        0xft
        0x10t
        0x10t
        0x10t
        0x10t
        0x10t
        0x10t
        0x10t
        0x10t
        0x11t
        0x11t
        0x11t
        0x11t
        0x11t
        0x11t
        0x11t
        0x11t
        0x12t
        0x12t
        0x12t
        0x12t
        0x12t
        0x12t
        0x12t
        0x12t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x14t
        0x14t
        0x14t
        0x14t
        0x14t
        0x14t
        0x14t
        0x14t
        0x14t
        0x14t
        0x14t
        0x14t
        0x14t
        0x14t
        0x14t
        0x14t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1ct
    .end array-data

    .line 134
    :array_6
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0xa
        0xc
        0xe
        0x10
        0x14
        0x18
        0x1c
        0x20
        0x28
        0x30
        0x38
        0x40
        0x50
        0x60
        0x70
        0x80
        0xa0
        0xc0
        0xe0
        0x0
    .end array-data

    .line 139
    :array_7
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x6
        0x8
        0xc
        0x10
        0x18
        0x20
        0x30
        0x40
        0x60
        0x80
        0xc0
        0x100
        0x180
        0x200
        0x300
        0x400
        0x600
        0x800
        0xc00
        0x1000
        0x1800
        0x2000
        0x3000
        0x4000
        0x6000
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static d_code(I)I
    .locals 2
    .param p0, "dist"    # I

    .prologue
    .line 149
    const/16 v0, 0x100

    if-ge p0, v0, :cond_0

    sget-object v0, Lcom/jcraft/jzlib/Tree;->_dist_code:[B

    aget-byte v0, v0, p0

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/jcraft/jzlib/Tree;->_dist_code:[B

    ushr-int/lit8 v1, p0, 0x7

    add-int/lit16 v1, v1, 0x100

    aget-byte v0, v0, v1

    goto :goto_0
.end method


# virtual methods
.method final build_tree(Lcom/jcraft/jzlib/Deflate;)V
    .locals 22
    .param p1, "s"    # Lcom/jcraft/jzlib/Deflate;

    .prologue
    .line 236
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/jcraft/jzlib/Tree;->dyn_tree:[S

    .line 237
    .local v9, "tree":[S
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/jcraft/jzlib/Tree;->stat_desc:Lcom/jcraft/jzlib/StaticTree;

    iget-object v8, v10, Lcom/jcraft/jzlib/StaticTree;->static_tree:[S

    .line 238
    .local v8, "stree":[S
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/jcraft/jzlib/Tree;->stat_desc:Lcom/jcraft/jzlib/StaticTree;

    iget v2, v10, Lcom/jcraft/jzlib/StaticTree;->elems:I

    .line 240
    .local v2, "elems":I
    const/4 v4, -0x1

    .line 246
    .local v4, "max_code":I
    const/4 v10, 0x0

    move-object/from16 v0, p1

    iput v10, v0, Lcom/jcraft/jzlib/Deflate;->heap_len:I

    .line 247
    const/16 v10, 0x23d

    move-object/from16 v0, p1

    iput v10, v0, Lcom/jcraft/jzlib/Deflate;->heap_max:I

    .line 249
    const/4 v5, 0x0

    .local v5, "n":I
    :goto_0
    if-ge v5, v2, :cond_1

    .line 250
    mul-int/lit8 v10, v5, 0x2

    aget-short v10, v9, v10

    if-eqz v10, :cond_0

    .line 251
    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/jcraft/jzlib/Deflate;->heap:[I

    move-object/from16 v0, p1

    iget v11, v0, Lcom/jcraft/jzlib/Deflate;->heap_len:I

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p1

    iput v11, v0, Lcom/jcraft/jzlib/Deflate;->heap_len:I

    move v4, v5

    aput v5, v10, v11

    .line 252
    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/jcraft/jzlib/Deflate;->depth:[B

    const/4 v11, 0x0

    aput-byte v11, v10, v5

    .line 249
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 255
    :cond_0
    mul-int/lit8 v10, v5, 0x2

    add-int/lit8 v10, v10, 0x1

    const/4 v11, 0x0

    aput-short v11, v9, v10

    goto :goto_1

    .line 263
    :cond_1
    :goto_2
    move-object/from16 v0, p1

    iget v10, v0, Lcom/jcraft/jzlib/Deflate;->heap_len:I

    const/4 v11, 0x2

    if-ge v10, v11, :cond_3

    .line 264
    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/jcraft/jzlib/Deflate;->heap:[I

    move-object/from16 v0, p1

    iget v11, v0, Lcom/jcraft/jzlib/Deflate;->heap_len:I

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p1

    iput v11, v0, Lcom/jcraft/jzlib/Deflate;->heap_len:I

    const/4 v12, 0x2

    if-ge v4, v12, :cond_2

    add-int/lit8 v4, v4, 0x1

    move v6, v4

    :goto_3
    aput v6, v10, v11

    .line 265
    .local v6, "node":I
    mul-int/lit8 v10, v6, 0x2

    const/4 v11, 0x1

    aput-short v11, v9, v10

    .line 266
    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/jcraft/jzlib/Deflate;->depth:[B

    const/4 v11, 0x0

    aput-byte v11, v10, v6

    .line 267
    move-object/from16 v0, p1

    iget v10, v0, Lcom/jcraft/jzlib/Deflate;->opt_len:I

    add-int/lit8 v10, v10, -0x1

    move-object/from16 v0, p1

    iput v10, v0, Lcom/jcraft/jzlib/Deflate;->opt_len:I

    if-eqz v8, :cond_1

    move-object/from16 v0, p1

    iget v10, v0, Lcom/jcraft/jzlib/Deflate;->static_len:I

    mul-int/lit8 v11, v6, 0x2

    add-int/lit8 v11, v11, 0x1

    aget-short v11, v8, v11

    sub-int/2addr v10, v11

    move-object/from16 v0, p1

    iput v10, v0, Lcom/jcraft/jzlib/Deflate;->static_len:I

    goto :goto_2

    .line 264
    .end local v6    # "node":I
    :cond_2
    const/4 v6, 0x0

    goto :goto_3

    .line 270
    :cond_3
    move-object/from16 v0, p0

    iput v4, v0, Lcom/jcraft/jzlib/Tree;->max_code:I

    .line 275
    move-object/from16 v0, p1

    iget v10, v0, Lcom/jcraft/jzlib/Deflate;->heap_len:I

    div-int/lit8 v5, v10, 0x2

    :goto_4
    if-lez v5, :cond_4

    .line 276
    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v5}, Lcom/jcraft/jzlib/Deflate;->pqdownheap([SI)V

    .line 275
    add-int/lit8 v5, v5, -0x1

    goto :goto_4

    .line 281
    :cond_4
    move v6, v2

    .line 284
    .restart local v6    # "node":I
    :goto_5
    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/jcraft/jzlib/Deflate;->heap:[I

    const/4 v11, 0x1

    aget v5, v10, v11

    .line 285
    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/jcraft/jzlib/Deflate;->heap:[I

    const/4 v11, 0x1

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/jcraft/jzlib/Deflate;->heap:[I

    move-object/from16 v0, p1

    iget v13, v0, Lcom/jcraft/jzlib/Deflate;->heap_len:I

    add-int/lit8 v14, v13, -0x1

    move-object/from16 v0, p1

    iput v14, v0, Lcom/jcraft/jzlib/Deflate;->heap_len:I

    aget v12, v12, v13

    aput v12, v10, v11

    .line 286
    const/4 v10, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v10}, Lcom/jcraft/jzlib/Deflate;->pqdownheap([SI)V

    .line 287
    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/jcraft/jzlib/Deflate;->heap:[I

    const/4 v11, 0x1

    aget v3, v10, v11

    .line 289
    .local v3, "m":I
    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/jcraft/jzlib/Deflate;->heap:[I

    move-object/from16 v0, p1

    iget v11, v0, Lcom/jcraft/jzlib/Deflate;->heap_max:I

    add-int/lit8 v11, v11, -0x1

    move-object/from16 v0, p1

    iput v11, v0, Lcom/jcraft/jzlib/Deflate;->heap_max:I

    aput v5, v10, v11

    .line 290
    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/jcraft/jzlib/Deflate;->heap:[I

    move-object/from16 v0, p1

    iget v11, v0, Lcom/jcraft/jzlib/Deflate;->heap_max:I

    add-int/lit8 v11, v11, -0x1

    move-object/from16 v0, p1

    iput v11, v0, Lcom/jcraft/jzlib/Deflate;->heap_max:I

    aput v3, v10, v11

    .line 293
    mul-int/lit8 v10, v6, 0x2

    mul-int/lit8 v11, v5, 0x2

    aget-short v11, v9, v11

    mul-int/lit8 v12, v3, 0x2

    aget-short v12, v9, v12

    add-int/2addr v11, v12

    int-to-short v11, v11

    aput-short v11, v9, v10

    .line 294
    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/jcraft/jzlib/Deflate;->depth:[B

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/jcraft/jzlib/Deflate;->depth:[B

    aget-byte v11, v11, v5

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/jcraft/jzlib/Deflate;->depth:[B

    aget-byte v12, v12, v3

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    add-int/lit8 v11, v11, 0x1

    int-to-byte v11, v11

    aput-byte v11, v10, v6

    .line 295
    mul-int/lit8 v10, v5, 0x2

    add-int/lit8 v10, v10, 0x1

    mul-int/lit8 v11, v3, 0x2

    add-int/lit8 v11, v11, 0x1

    int-to-short v12, v6

    aput-short v12, v9, v11

    aput-short v12, v9, v10

    .line 298
    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/jcraft/jzlib/Deflate;->heap:[I

    const/4 v11, 0x1

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "node":I
    .local v7, "node":I
    aput v6, v10, v11

    .line 299
    const/4 v10, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v10}, Lcom/jcraft/jzlib/Deflate;->pqdownheap([SI)V

    .line 301
    move-object/from16 v0, p1

    iget v10, v0, Lcom/jcraft/jzlib/Deflate;->heap_len:I

    const/4 v11, 0x2

    if-ge v10, v11, :cond_14

    .line 303
    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/jcraft/jzlib/Deflate;->heap:[I

    move-object/from16 v0, p1

    iget v11, v0, Lcom/jcraft/jzlib/Deflate;->heap_max:I

    add-int/lit8 v11, v11, -0x1

    move-object/from16 v0, p1

    iput v11, v0, Lcom/jcraft/jzlib/Deflate;->heap_max:I

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/jcraft/jzlib/Deflate;->heap:[I

    const/4 v13, 0x1

    aget v12, v12, v13

    aput v12, v10, v11

    .line 308
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/jcraft/jzlib/Tree;->dyn_tree:[S

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/jcraft/jzlib/Tree;->stat_desc:Lcom/jcraft/jzlib/StaticTree;

    iget-object v0, v10, Lcom/jcraft/jzlib/StaticTree;->static_tree:[S

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/jcraft/jzlib/Tree;->stat_desc:Lcom/jcraft/jzlib/StaticTree;

    iget-object v0, v10, Lcom/jcraft/jzlib/StaticTree;->extra_bits:[I

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/jcraft/jzlib/Tree;->stat_desc:Lcom/jcraft/jzlib/StaticTree;

    iget v0, v10, Lcom/jcraft/jzlib/StaticTree;->extra_base:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/jcraft/jzlib/Tree;->stat_desc:Lcom/jcraft/jzlib/StaticTree;

    iget v12, v10, Lcom/jcraft/jzlib/StaticTree;->max_length:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_6
    const/16 v13, 0xf

    if-gt v11, v13, :cond_5

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/jcraft/jzlib/Deflate;->bl_count:[S

    const/4 v14, 0x0

    aput-short v14, v13, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    :cond_5
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/jcraft/jzlib/Deflate;->heap:[I

    move-object/from16 v0, p1

    iget v13, v0, Lcom/jcraft/jzlib/Deflate;->heap_max:I

    aget v11, v11, v13

    mul-int/lit8 v11, v11, 0x2

    add-int/lit8 v11, v11, 0x1

    const/4 v13, 0x0

    aput-short v13, v15, v11

    move-object/from16 v0, p1

    iget v11, v0, Lcom/jcraft/jzlib/Deflate;->heap_max:I

    add-int/lit8 v14, v11, 0x1

    :goto_7
    const/16 v11, 0x23d

    if-ge v14, v11, :cond_9

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/jcraft/jzlib/Deflate;->heap:[I

    aget v19, v11, v14

    mul-int/lit8 v11, v19, 0x2

    add-int/lit8 v11, v11, 0x1

    aget-short v11, v15, v11

    mul-int/lit8 v11, v11, 0x2

    add-int/lit8 v11, v11, 0x1

    aget-short v11, v15, v11

    add-int/lit8 v11, v11, 0x1

    if-le v11, v12, :cond_6

    add-int/lit8 v10, v10, 0x1

    move v11, v12

    :cond_6
    mul-int/lit8 v13, v19, 0x2

    add-int/lit8 v13, v13, 0x1

    int-to-short v0, v11

    move/from16 v20, v0

    aput-short v20, v15, v13

    move-object/from16 v0, p0

    iget v13, v0, Lcom/jcraft/jzlib/Tree;->max_code:I

    move/from16 v0, v19

    if-gt v0, v13, :cond_8

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/jcraft/jzlib/Deflate;->bl_count:[S

    aget-short v20, v13, v11

    add-int/lit8 v20, v20, 0x1

    move/from16 v0, v20

    int-to-short v0, v0

    move/from16 v20, v0

    aput-short v20, v13, v11

    const/4 v13, 0x0

    move/from16 v0, v19

    move/from16 v1, v18

    if-lt v0, v1, :cond_7

    sub-int v13, v19, v18

    aget v13, v17, v13

    :cond_7
    mul-int/lit8 v20, v19, 0x2

    aget-short v20, v15, v20

    move-object/from16 v0, p1

    iget v0, v0, Lcom/jcraft/jzlib/Deflate;->opt_len:I

    move/from16 v21, v0

    add-int/2addr v11, v13

    mul-int v11, v11, v20

    add-int v11, v11, v21

    move-object/from16 v0, p1

    iput v11, v0, Lcom/jcraft/jzlib/Deflate;->opt_len:I

    if-eqz v16, :cond_8

    move-object/from16 v0, p1

    iget v11, v0, Lcom/jcraft/jzlib/Deflate;->static_len:I

    mul-int/lit8 v19, v19, 0x2

    add-int/lit8 v19, v19, 0x1

    aget-short v19, v16, v19

    add-int v13, v13, v19

    mul-int v13, v13, v20

    add-int/2addr v11, v13

    move-object/from16 v0, p1

    iput v11, v0, Lcom/jcraft/jzlib/Deflate;->static_len:I

    :cond_8
    add-int/lit8 v14, v14, 0x1

    goto :goto_7

    :cond_9
    if-eqz v10, :cond_f

    :cond_a
    add-int/lit8 v11, v12, -0x1

    :goto_8
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/jcraft/jzlib/Deflate;->bl_count:[S

    aget-short v13, v13, v11

    if-nez v13, :cond_b

    add-int/lit8 v11, v11, -0x1

    goto :goto_8

    :cond_b
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/jcraft/jzlib/Deflate;->bl_count:[S

    aget-short v16, v13, v11

    add-int/lit8 v16, v16, -0x1

    move/from16 v0, v16

    int-to-short v0, v0

    move/from16 v16, v0

    aput-short v16, v13, v11

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/jcraft/jzlib/Deflate;->bl_count:[S

    add-int/lit8 v11, v11, 0x1

    aget-short v16, v13, v11

    add-int/lit8 v16, v16, 0x2

    move/from16 v0, v16

    int-to-short v0, v0

    move/from16 v16, v0

    aput-short v16, v13, v11

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/jcraft/jzlib/Deflate;->bl_count:[S

    aget-short v13, v11, v12

    add-int/lit8 v13, v13, -0x1

    int-to-short v13, v13

    aput-short v13, v11, v12

    add-int/lit8 v10, v10, -0x2

    if-gtz v10, :cond_a

    move v11, v14

    :goto_9
    if-eqz v12, :cond_f

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/jcraft/jzlib/Deflate;->bl_count:[S

    aget-short v10, v10, v12

    :cond_c
    :goto_a
    if-eqz v10, :cond_e

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/jcraft/jzlib/Deflate;->heap:[I

    add-int/lit8 v11, v11, -0x1

    aget v13, v13, v11

    move-object/from16 v0, p0

    iget v14, v0, Lcom/jcraft/jzlib/Tree;->max_code:I

    if-gt v13, v14, :cond_c

    mul-int/lit8 v14, v13, 0x2

    add-int/lit8 v14, v14, 0x1

    aget-short v14, v15, v14

    if-eq v14, v12, :cond_d

    move-object/from16 v0, p1

    iget v14, v0, Lcom/jcraft/jzlib/Deflate;->opt_len:I

    int-to-long v0, v14

    move-wide/from16 v16, v0

    int-to-long v0, v12

    move-wide/from16 v18, v0

    mul-int/lit8 v14, v13, 0x2

    add-int/lit8 v14, v14, 0x1

    aget-short v14, v15, v14

    int-to-long v0, v14

    move-wide/from16 v20, v0

    sub-long v18, v18, v20

    mul-int/lit8 v14, v13, 0x2

    aget-short v14, v15, v14

    int-to-long v0, v14

    move-wide/from16 v20, v0

    mul-long v18, v18, v20

    add-long v16, v16, v18

    move-wide/from16 v0, v16

    long-to-int v14, v0

    move-object/from16 v0, p1

    iput v14, v0, Lcom/jcraft/jzlib/Deflate;->opt_len:I

    mul-int/lit8 v13, v13, 0x2

    add-int/lit8 v13, v13, 0x1

    int-to-short v14, v12

    aput-short v14, v15, v13

    :cond_d
    add-int/lit8 v10, v10, -0x1

    goto :goto_a

    :cond_e
    add-int/lit8 v12, v12, -0x1

    goto :goto_9

    .line 311
    :cond_f
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/jcraft/jzlib/Deflate;->bl_count:[S

    const/16 v10, 0x10

    new-array v14, v10, [S

    const/4 v11, 0x0

    const/4 v10, 0x1

    :goto_b
    const/16 v13, 0xf

    if-gt v10, v13, :cond_10

    add-int/lit8 v13, v10, -0x1

    aget-short v13, v12, v13

    add-int/2addr v11, v13

    shl-int/lit8 v11, v11, 0x1

    int-to-short v11, v11

    aput-short v11, v14, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_b

    :cond_10
    const/4 v10, 0x0

    move v13, v10

    :goto_c
    if-gt v13, v4, :cond_13

    mul-int/lit8 v10, v13, 0x2

    add-int/lit8 v10, v10, 0x1

    aget-short v11, v9, v10

    if-eqz v11, :cond_12

    mul-int/lit8 v15, v13, 0x2

    aget-short v12, v14, v11

    add-int/lit8 v10, v12, 0x1

    int-to-short v10, v10

    aput-short v10, v14, v11

    const/4 v10, 0x0

    :cond_11
    and-int/lit8 v16, v12, 0x1

    or-int v10, v10, v16

    ushr-int/lit8 v12, v12, 0x1

    shl-int/lit8 v10, v10, 0x1

    add-int/lit8 v11, v11, -0x1

    if-gtz v11, :cond_11

    ushr-int/lit8 v10, v10, 0x1

    int-to-short v10, v10

    aput-short v10, v9, v15

    :cond_12
    add-int/lit8 v10, v13, 0x1

    move v13, v10

    goto :goto_c

    .line 312
    :cond_13
    return-void

    :cond_14
    move v6, v7

    .end local v7    # "node":I
    .restart local v6    # "node":I
    goto/16 :goto_5
.end method
