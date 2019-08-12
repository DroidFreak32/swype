.class final Lcom/jcraft/jzlib/InfCodes;
.super Ljava/lang/Object;
.source "InfCodes.java"


# static fields
.field private static final inflate_mask:[I


# instance fields
.field private dbits:B

.field private dist:I

.field private dtree:[I

.field private dtree_index:I

.field private get:I

.field private lbits:B

.field private len:I

.field private lit:I

.field private ltree:[I

.field private ltree_index:I

.field private mode:I

.field private need:I

.field private tree:[I

.field private tree_index:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const/16 v0, 0x11

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/jcraft/jzlib/InfCodes;->inflate_mask:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x1
        0x3
        0x7
        0xf
        0x1f
        0x3f
        0x7f
        0xff
        0x1ff
        0x3ff
        0x7ff
        0xfff
        0x1fff
        0x3fff
        0x7fff
        0xffff
    .end array-data
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const/4 v0, 0x0

    iput v0, p0, Lcom/jcraft/jzlib/InfCodes;->tree_index:I

    .line 93
    return-void
.end method

.method static free$4d8c69ef()V
    .locals 0

    .prologue
    .line 394
    return-void
.end method


# virtual methods
.method final init$3f75552f(II[II[II)V
    .locals 1
    .param p1, "bl"    # I
    .param p2, "bd"    # I
    .param p3, "tl"    # [I
    .param p4, "tl_index"    # I
    .param p5, "td"    # [I
    .param p6, "td_index"    # I

    .prologue
    .line 97
    const/4 v0, 0x0

    iput v0, p0, Lcom/jcraft/jzlib/InfCodes;->mode:I

    .line 98
    int-to-byte v0, p1

    iput-byte v0, p0, Lcom/jcraft/jzlib/InfCodes;->lbits:B

    .line 99
    int-to-byte v0, p2

    iput-byte v0, p0, Lcom/jcraft/jzlib/InfCodes;->dbits:B

    .line 100
    iput-object p3, p0, Lcom/jcraft/jzlib/InfCodes;->ltree:[I

    .line 101
    iput p4, p0, Lcom/jcraft/jzlib/InfCodes;->ltree_index:I

    .line 102
    iput-object p5, p0, Lcom/jcraft/jzlib/InfCodes;->dtree:[I

    .line 103
    iput p6, p0, Lcom/jcraft/jzlib/InfCodes;->dtree_index:I

    .line 104
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jcraft/jzlib/InfCodes;->tree:[I

    .line 105
    return-void
.end method

.method final proc(Lcom/jcraft/jzlib/InfBlocks;Lcom/jcraft/jzlib/ZStream;I)I
    .locals 38
    .param p1, "s"    # Lcom/jcraft/jzlib/InfBlocks;
    .param p2, "z"    # Lcom/jcraft/jzlib/ZStream;
    .param p3, "r"    # I

    .prologue
    .line 112
    move-object/from16 v0, p2

    iget v14, v0, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    .local v14, "p":I
    move-object/from16 v0, p2

    iget v13, v0, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    .local v13, "n":I
    move-object/from16 v0, p1

    iget v6, v0, Lcom/jcraft/jzlib/InfBlocks;->bitb:I

    .local v6, "b":I
    move-object/from16 v0, p1

    iget v11, v0, Lcom/jcraft/jzlib/InfBlocks;->bitk:I

    .line 122
    .local v11, "k":I
    move-object/from16 v0, p1

    iget v0, v0, Lcom/jcraft/jzlib/InfBlocks;->write:I

    move/from16 v16, v0

    .local v16, "q":I
    move-object/from16 v0, p1

    iget v0, v0, Lcom/jcraft/jzlib/InfBlocks;->read:I

    move/from16 v19, v0

    move/from16 v0, v16

    move/from16 v1, v19

    if-ge v0, v1, :cond_0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/jcraft/jzlib/InfBlocks;->read:I

    move/from16 v19, v0

    sub-int v19, v19, v16

    add-int/lit8 v12, v19, -0x1

    .line 126
    .local v12, "m":I
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jcraft/jzlib/InfCodes;->mode:I

    move/from16 v19, v0

    packed-switch v19, :pswitch_data_0

    .line 382
    move-object/from16 v0, p1

    iput v6, v0, Lcom/jcraft/jzlib/InfBlocks;->bitb:I

    move-object/from16 v0, p1

    iput v11, v0, Lcom/jcraft/jzlib/InfBlocks;->bitk:I

    .line 385
    move-object/from16 v0, p2

    iput v13, v0, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/jcraft/jzlib/ZStream;->total_in:J

    move-wide/from16 v20, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    move/from16 v19, v0

    sub-int v19, v14, v19

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v22, v0

    add-long v20, v20, v22

    move-wide/from16 v0, v20

    move-object/from16 v2, p2

    iput-wide v0, v2, Lcom/jcraft/jzlib/ZStream;->total_in:J

    move-object/from16 v0, p2

    iput v14, v0, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    .line 386
    move/from16 v0, v16

    move-object/from16 v1, p1

    iput v0, v1, Lcom/jcraft/jzlib/InfBlocks;->write:I

    .line 387
    const/16 v19, -0x2

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/jcraft/jzlib/InfBlocks;->inflate_flush(Lcom/jcraft/jzlib/ZStream;I)I

    move-result v19

    :goto_1
    return v19

    .line 122
    .end local v12    # "m":I
    :cond_0
    move-object/from16 v0, p1

    iget v0, v0, Lcom/jcraft/jzlib/InfBlocks;->end:I

    move/from16 v19, v0

    sub-int v12, v19, v16

    goto :goto_0

    .line 129
    .restart local v12    # "m":I
    :pswitch_0
    const/16 v19, 0x102

    move/from16 v0, v19

    if-lt v12, v0, :cond_17

    const/16 v19, 0xa

    move/from16 v0, v19

    if-lt v13, v0, :cond_17

    .line 131
    move-object/from16 v0, p1

    iput v6, v0, Lcom/jcraft/jzlib/InfBlocks;->bitb:I

    move-object/from16 v0, p1

    iput v11, v0, Lcom/jcraft/jzlib/InfBlocks;->bitk:I

    .line 132
    move-object/from16 v0, p2

    iput v13, v0, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/jcraft/jzlib/ZStream;->total_in:J

    move-wide/from16 v20, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    move/from16 v19, v0

    sub-int v19, v14, v19

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v22, v0

    add-long v20, v20, v22

    move-wide/from16 v0, v20

    move-object/from16 v2, p2

    iput-wide v0, v2, Lcom/jcraft/jzlib/ZStream;->total_in:J

    move-object/from16 v0, p2

    iput v14, v0, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    .line 133
    move/from16 v0, v16

    move-object/from16 v1, p1

    iput v0, v1, Lcom/jcraft/jzlib/InfBlocks;->write:I

    .line 134
    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/jcraft/jzlib/InfCodes;->lbits:B

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/jcraft/jzlib/InfCodes;->dbits:B

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jzlib/InfCodes;->ltree:[I

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jcraft/jzlib/InfCodes;->ltree_index:I

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jzlib/InfCodes;->dtree:[I

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jcraft/jzlib/InfCodes;->dtree_index:I

    move/from16 v35, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    move/from16 v26, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    move/from16 v25, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/jcraft/jzlib/InfBlocks;->bitb:I

    move/from16 v21, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/jcraft/jzlib/InfBlocks;->bitk:I

    move/from16 v20, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/jcraft/jzlib/InfBlocks;->write:I

    move/from16 v24, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/jcraft/jzlib/InfBlocks;->read:I

    move/from16 v19, v0

    move/from16 v0, v24

    move/from16 v1, v19

    if-ge v0, v1, :cond_1

    move-object/from16 v0, p1

    iget v0, v0, Lcom/jcraft/jzlib/InfBlocks;->read:I

    move/from16 v19, v0

    sub-int v19, v19, v24

    add-int/lit8 v19, v19, -0x1

    :goto_2
    sget-object v27, Lcom/jcraft/jzlib/InfCodes;->inflate_mask:[I

    aget v36, v27, v22

    sget-object v22, Lcom/jcraft/jzlib/InfCodes;->inflate_mask:[I

    aget v37, v22, v23

    move/from16 v31, v19

    :goto_3
    const/16 v19, 0x14

    move/from16 v0, v20

    move/from16 v1, v19

    if-ge v0, v1, :cond_2

    add-int/lit8 v25, v25, -0x1

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/jcraft/jzlib/ZStream;->next_in:[B

    move-object/from16 v22, v0

    add-int/lit8 v19, v26, 0x1

    aget-byte v22, v22, v26

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0xff

    move/from16 v22, v0

    shl-int v22, v22, v20

    or-int v21, v21, v22

    add-int/lit8 v20, v20, 0x8

    move/from16 v26, v19

    goto :goto_3

    :cond_1
    move-object/from16 v0, p1

    iget v0, v0, Lcom/jcraft/jzlib/InfBlocks;->end:I

    move/from16 v19, v0

    sub-int v19, v19, v24

    goto :goto_2

    :cond_2
    and-int v23, v21, v36

    add-int v19, v33, v23

    mul-int/lit8 v19, v19, 0x3

    aget v22, v32, v19

    if-nez v22, :cond_5

    add-int/lit8 v22, v19, 0x1

    aget v22, v32, v22

    shr-int v21, v21, v22

    add-int/lit8 v22, v19, 0x1

    aget v22, v32, v22

    sub-int v20, v20, v22

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/jcraft/jzlib/InfBlocks;->window:[B

    move-object/from16 v22, v0

    add-int/lit8 v23, v24, 0x1

    add-int/lit8 v19, v19, 0x2

    aget v19, v32, v19

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    aput-byte v19, v22, v24

    add-int/lit8 v19, v31, -0x1

    move/from16 v22, v20

    move/from16 v24, v21

    move/from16 v20, v25

    move/from16 v21, v26

    :goto_4
    const/16 v25, 0x102

    move/from16 v0, v19

    move/from16 v1, v25

    if-lt v0, v1, :cond_3

    const/16 v25, 0xa

    move/from16 v0, v20

    move/from16 v1, v25

    if-ge v0, v1, :cond_38

    :cond_3
    move-object/from16 v0, p2

    iget v0, v0, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    move/from16 v19, v0

    sub-int v19, v19, v20

    shr-int/lit8 v25, v22, 0x3

    move/from16 v0, v25

    move/from16 v1, v19

    if-ge v0, v1, :cond_4

    shr-int/lit8 v19, v22, 0x3

    :cond_4
    add-int v20, v20, v19

    sub-int v21, v21, v19

    shl-int/lit8 v19, v19, 0x3

    sub-int v19, v22, v19

    move/from16 v0, v24

    move-object/from16 v1, p1

    iput v0, v1, Lcom/jcraft/jzlib/InfBlocks;->bitb:I

    move/from16 v0, v19

    move-object/from16 v1, p1

    iput v0, v1, Lcom/jcraft/jzlib/InfBlocks;->bitk:I

    move/from16 v0, v20

    move-object/from16 v1, p2

    iput v0, v1, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/jcraft/jzlib/ZStream;->total_in:J

    move-wide/from16 v24, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    move/from16 v19, v0

    sub-int v19, v21, v19

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v26, v0

    add-long v24, v24, v26

    move-wide/from16 v0, v24

    move-object/from16 v2, p2

    iput-wide v0, v2, Lcom/jcraft/jzlib/ZStream;->total_in:J

    move/from16 v0, v21

    move-object/from16 v1, p2

    iput v0, v1, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    move/from16 v0, v23

    move-object/from16 v1, p1

    iput v0, v1, Lcom/jcraft/jzlib/InfBlocks;->write:I

    const/16 p3, 0x0

    .line 139
    :goto_5
    move-object/from16 v0, p2

    iget v14, v0, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    move-object/from16 v0, p2

    iget v13, v0, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    move-object/from16 v0, p1

    iget v6, v0, Lcom/jcraft/jzlib/InfBlocks;->bitb:I

    move-object/from16 v0, p1

    iget v11, v0, Lcom/jcraft/jzlib/InfBlocks;->bitk:I

    .line 140
    move-object/from16 v0, p1

    iget v0, v0, Lcom/jcraft/jzlib/InfBlocks;->write:I

    move/from16 v16, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/jcraft/jzlib/InfBlocks;->read:I

    move/from16 v19, v0

    move/from16 v0, v16

    move/from16 v1, v19

    if-ge v0, v1, :cond_15

    move-object/from16 v0, p1

    iget v0, v0, Lcom/jcraft/jzlib/InfBlocks;->read:I

    move/from16 v19, v0

    sub-int v19, v19, v16

    add-int/lit8 v12, v19, -0x1

    .line 142
    :goto_6
    if-eqz p3, :cond_17

    .line 143
    const/16 v19, 0x1

    move/from16 v0, p3

    move/from16 v1, v19

    if-ne v0, v1, :cond_16

    const/16 v19, 0x7

    :goto_7
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jcraft/jzlib/InfCodes;->mode:I

    goto/16 :goto_0

    .line 134
    :cond_5
    add-int/lit8 v27, v19, 0x1

    aget v27, v32, v27

    shr-int v21, v21, v27

    add-int/lit8 v27, v19, 0x1

    aget v27, v32, v27

    sub-int v20, v20, v27

    and-int/lit8 v27, v22, 0x10

    if-eqz v27, :cond_10

    and-int/lit8 v22, v22, 0xf

    add-int/lit8 v19, v19, 0x2

    aget v19, v32, v19

    sget-object v23, Lcom/jcraft/jzlib/InfCodes;->inflate_mask:[I

    aget v23, v23, v22

    and-int v23, v23, v21

    add-int v30, v19, v23

    shr-int v21, v21, v22

    sub-int v20, v20, v22

    move/from16 v27, v26

    move/from16 v26, v25

    :goto_8
    const/16 v19, 0xf

    move/from16 v0, v20

    move/from16 v1, v19

    if-ge v0, v1, :cond_6

    add-int/lit8 v26, v26, -0x1

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/jcraft/jzlib/ZStream;->next_in:[B

    move-object/from16 v22, v0

    add-int/lit8 v19, v27, 0x1

    aget-byte v22, v22, v27

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0xff

    move/from16 v22, v0

    shl-int v22, v22, v20

    or-int v21, v21, v22

    add-int/lit8 v20, v20, 0x8

    move/from16 v27, v19

    goto :goto_8

    :cond_6
    and-int v23, v21, v37

    add-int v19, v35, v23

    mul-int/lit8 v19, v19, 0x3

    aget v22, v34, v19

    :goto_9
    add-int/lit8 v25, v19, 0x1

    aget v25, v34, v25

    shr-int v21, v21, v25

    add-int/lit8 v25, v19, 0x1

    aget v25, v34, v25

    sub-int v20, v20, v25

    and-int/lit8 v25, v22, 0x10

    if-eqz v25, :cond_d

    and-int/lit8 v23, v22, 0xf

    move/from16 v22, v21

    move/from16 v21, v20

    :goto_a
    move/from16 v0, v21

    move/from16 v1, v23

    if-ge v0, v1, :cond_7

    add-int/lit8 v26, v26, -0x1

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/jcraft/jzlib/ZStream;->next_in:[B

    move-object/from16 v25, v0

    add-int/lit8 v20, v27, 0x1

    aget-byte v25, v25, v27

    move/from16 v0, v25

    and-int/lit16 v0, v0, 0xff

    move/from16 v25, v0

    shl-int v25, v25, v21

    or-int v22, v22, v25

    add-int/lit8 v21, v21, 0x8

    move/from16 v27, v20

    goto :goto_a

    :cond_7
    add-int/lit8 v19, v19, 0x2

    aget v19, v34, v19

    sget-object v20, Lcom/jcraft/jzlib/InfCodes;->inflate_mask:[I

    aget v20, v20, v23

    and-int v20, v20, v22

    add-int v19, v19, v20

    shr-int v29, v22, v23

    sub-int v28, v21, v23

    sub-int v25, v31, v30

    move/from16 v0, v24

    move/from16 v1, v19

    if-lt v0, v1, :cond_9

    sub-int v19, v24, v19

    sub-int v20, v24, v19

    if-lez v20, :cond_8

    const/16 v20, 0x2

    sub-int v21, v24, v19

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_8

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/jcraft/jzlib/InfBlocks;->window:[B

    move-object/from16 v20, v0

    add-int/lit8 v22, v24, 0x1

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/jcraft/jzlib/InfBlocks;->window:[B

    move-object/from16 v21, v0

    add-int/lit8 v23, v19, 0x1

    aget-byte v19, v21, v19

    aput-byte v19, v20, v24

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/jcraft/jzlib/InfBlocks;->window:[B

    move-object/from16 v20, v0

    add-int/lit8 v21, v22, 0x1

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/jcraft/jzlib/InfBlocks;->window:[B

    move-object/from16 v24, v0

    add-int/lit8 v19, v23, 0x1

    aget-byte v23, v24, v23

    aput-byte v23, v20, v22

    add-int/lit8 v20, v30, -0x2

    :goto_b
    sub-int v22, v21, v19

    if-lez v22, :cond_c

    sub-int v22, v21, v19

    move/from16 v0, v20

    move/from16 v1, v22

    if-le v0, v1, :cond_c

    move/from16 v22, v21

    move/from16 v21, v20

    :goto_c
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/jcraft/jzlib/InfBlocks;->window:[B

    move-object/from16 v24, v0

    add-int/lit8 v23, v22, 0x1

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/jcraft/jzlib/InfBlocks;->window:[B

    move-object/from16 v30, v0

    add-int/lit8 v20, v19, 0x1

    aget-byte v19, v30, v19

    aput-byte v19, v24, v22

    add-int/lit8 v19, v21, -0x1

    if-nez v19, :cond_39

    move/from16 v19, v25

    move/from16 v20, v26

    move/from16 v21, v27

    move/from16 v22, v28

    move/from16 v24, v29

    goto/16 :goto_4

    :cond_8
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/jcraft/jzlib/InfBlocks;->window:[B

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/jcraft/jzlib/InfBlocks;->window:[B

    move-object/from16 v21, v0

    const/16 v22, 0x2

    move-object/from16 v0, v20

    move/from16 v1, v19

    move-object/from16 v2, v21

    move/from16 v3, v24

    move/from16 v4, v22

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v21, v24, 0x2

    add-int/lit8 v19, v19, 0x2

    add-int/lit8 v20, v30, -0x2

    goto :goto_b

    :cond_9
    sub-int v19, v24, v19

    :cond_a
    move-object/from16 v0, p1

    iget v0, v0, Lcom/jcraft/jzlib/InfBlocks;->end:I

    move/from16 v20, v0

    add-int v19, v19, v20

    if-ltz v19, :cond_a

    move-object/from16 v0, p1

    iget v0, v0, Lcom/jcraft/jzlib/InfBlocks;->end:I

    move/from16 v20, v0

    sub-int v20, v20, v19

    move/from16 v0, v30

    move/from16 v1, v20

    if-le v0, v1, :cond_3b

    sub-int v30, v30, v20

    sub-int v21, v24, v19

    if-lez v21, :cond_b

    sub-int v21, v24, v19

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_b

    move/from16 v21, v24

    move/from16 v23, v20

    :goto_d
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/jcraft/jzlib/InfBlocks;->window:[B

    move-object/from16 v24, v0

    add-int/lit8 v22, v21, 0x1

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/jcraft/jzlib/InfBlocks;->window:[B

    move-object/from16 v31, v0

    add-int/lit8 v20, v19, 0x1

    aget-byte v19, v31, v19

    aput-byte v19, v24, v21

    add-int/lit8 v19, v23, -0x1

    if-nez v19, :cond_3a

    :goto_e
    const/16 v19, 0x0

    move/from16 v20, v30

    move/from16 v21, v22

    goto/16 :goto_b

    :cond_b
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/jcraft/jzlib/InfBlocks;->window:[B

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/jcraft/jzlib/InfBlocks;->window:[B

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move/from16 v1, v19

    move-object/from16 v2, v22

    move/from16 v3, v24

    move/from16 v4, v20

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v22, v24, v20

    goto :goto_e

    :cond_c
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/jcraft/jzlib/InfBlocks;->window:[B

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/jcraft/jzlib/InfBlocks;->window:[B

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move/from16 v1, v19

    move-object/from16 v2, v23

    move/from16 v3, v21

    move/from16 v4, v20

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v23, v21, v20

    move/from16 v19, v25

    move/from16 v20, v26

    move/from16 v21, v27

    move/from16 v22, v28

    move/from16 v24, v29

    goto/16 :goto_4

    :cond_d
    and-int/lit8 v25, v22, 0x40

    if-nez v25, :cond_e

    add-int/lit8 v19, v19, 0x2

    aget v19, v34, v19

    add-int v19, v19, v23

    sget-object v23, Lcom/jcraft/jzlib/InfCodes;->inflate_mask:[I

    aget v22, v23, v22

    and-int v22, v22, v21

    add-int v23, v19, v22

    add-int v19, v35, v23

    mul-int/lit8 v19, v19, 0x3

    aget v22, v34, v19

    goto/16 :goto_9

    :cond_e
    const-string v19, "invalid distance code"

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/jcraft/jzlib/ZStream;->msg:Ljava/lang/String;

    move-object/from16 v0, p2

    iget v0, v0, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    move/from16 v19, v0

    sub-int v19, v19, v26

    shr-int/lit8 v22, v20, 0x3

    move/from16 v0, v22

    move/from16 v1, v19

    if-ge v0, v1, :cond_f

    shr-int/lit8 v19, v20, 0x3

    :cond_f
    add-int v22, v26, v19

    sub-int v23, v27, v19

    shl-int/lit8 v19, v19, 0x3

    sub-int v19, v20, v19

    move/from16 v0, v21

    move-object/from16 v1, p1

    iput v0, v1, Lcom/jcraft/jzlib/InfBlocks;->bitb:I

    move/from16 v0, v19

    move-object/from16 v1, p1

    iput v0, v1, Lcom/jcraft/jzlib/InfBlocks;->bitk:I

    move/from16 v0, v22

    move-object/from16 v1, p2

    iput v0, v1, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/jcraft/jzlib/ZStream;->total_in:J

    move-wide/from16 v20, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    move/from16 v19, v0

    sub-int v19, v23, v19

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v26, v0

    add-long v20, v20, v26

    move-wide/from16 v0, v20

    move-object/from16 v2, p2

    iput-wide v0, v2, Lcom/jcraft/jzlib/ZStream;->total_in:J

    move/from16 v0, v23

    move-object/from16 v1, p2

    iput v0, v1, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    move/from16 v0, v24

    move-object/from16 v1, p1

    iput v0, v1, Lcom/jcraft/jzlib/InfBlocks;->write:I

    const/16 p3, -0x3

    goto/16 :goto_5

    :cond_10
    and-int/lit8 v27, v22, 0x40

    if-nez v27, :cond_11

    add-int/lit8 v19, v19, 0x2

    aget v19, v32, v19

    add-int v19, v19, v23

    sget-object v23, Lcom/jcraft/jzlib/InfCodes;->inflate_mask:[I

    aget v22, v23, v22

    and-int v22, v22, v21

    add-int v23, v19, v22

    add-int v19, v33, v23

    mul-int/lit8 v19, v19, 0x3

    aget v22, v32, v19

    if-nez v22, :cond_5

    add-int/lit8 v22, v19, 0x1

    aget v22, v32, v22

    shr-int v21, v21, v22

    add-int/lit8 v22, v19, 0x1

    aget v22, v32, v22

    sub-int v20, v20, v22

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/jcraft/jzlib/InfBlocks;->window:[B

    move-object/from16 v22, v0

    add-int/lit8 v23, v24, 0x1

    add-int/lit8 v19, v19, 0x2

    aget v19, v32, v19

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    aput-byte v19, v22, v24

    add-int/lit8 v19, v31, -0x1

    move/from16 v22, v20

    move/from16 v24, v21

    move/from16 v20, v25

    move/from16 v21, v26

    goto/16 :goto_4

    :cond_11
    and-int/lit8 v19, v22, 0x20

    if-eqz v19, :cond_13

    move-object/from16 v0, p2

    iget v0, v0, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    move/from16 v19, v0

    sub-int v19, v19, v25

    shr-int/lit8 v22, v20, 0x3

    move/from16 v0, v22

    move/from16 v1, v19

    if-ge v0, v1, :cond_12

    shr-int/lit8 v19, v20, 0x3

    :cond_12
    add-int v22, v25, v19

    sub-int v23, v26, v19

    shl-int/lit8 v19, v19, 0x3

    sub-int v19, v20, v19

    move/from16 v0, v21

    move-object/from16 v1, p1

    iput v0, v1, Lcom/jcraft/jzlib/InfBlocks;->bitb:I

    move/from16 v0, v19

    move-object/from16 v1, p1

    iput v0, v1, Lcom/jcraft/jzlib/InfBlocks;->bitk:I

    move/from16 v0, v22

    move-object/from16 v1, p2

    iput v0, v1, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/jcraft/jzlib/ZStream;->total_in:J

    move-wide/from16 v20, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    move/from16 v19, v0

    sub-int v19, v23, v19

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v26, v0

    add-long v20, v20, v26

    move-wide/from16 v0, v20

    move-object/from16 v2, p2

    iput-wide v0, v2, Lcom/jcraft/jzlib/ZStream;->total_in:J

    move/from16 v0, v23

    move-object/from16 v1, p2

    iput v0, v1, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    move/from16 v0, v24

    move-object/from16 v1, p1

    iput v0, v1, Lcom/jcraft/jzlib/InfBlocks;->write:I

    const/16 p3, 0x1

    goto/16 :goto_5

    :cond_13
    const-string v19, "invalid literal/length code"

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/jcraft/jzlib/ZStream;->msg:Ljava/lang/String;

    move-object/from16 v0, p2

    iget v0, v0, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    move/from16 v19, v0

    sub-int v19, v19, v25

    shr-int/lit8 v22, v20, 0x3

    move/from16 v0, v22

    move/from16 v1, v19

    if-ge v0, v1, :cond_14

    shr-int/lit8 v19, v20, 0x3

    :cond_14
    add-int v22, v25, v19

    sub-int v23, v26, v19

    shl-int/lit8 v19, v19, 0x3

    sub-int v19, v20, v19

    move/from16 v0, v21

    move-object/from16 v1, p1

    iput v0, v1, Lcom/jcraft/jzlib/InfBlocks;->bitb:I

    move/from16 v0, v19

    move-object/from16 v1, p1

    iput v0, v1, Lcom/jcraft/jzlib/InfBlocks;->bitk:I

    move/from16 v0, v22

    move-object/from16 v1, p2

    iput v0, v1, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/jcraft/jzlib/ZStream;->total_in:J

    move-wide/from16 v20, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    move/from16 v19, v0

    sub-int v19, v23, v19

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v26, v0

    add-long v20, v20, v26

    move-wide/from16 v0, v20

    move-object/from16 v2, p2

    iput-wide v0, v2, Lcom/jcraft/jzlib/ZStream;->total_in:J

    move/from16 v0, v23

    move-object/from16 v1, p2

    iput v0, v1, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    move/from16 v0, v24

    move-object/from16 v1, p1

    iput v0, v1, Lcom/jcraft/jzlib/InfBlocks;->write:I

    const/16 p3, -0x3

    goto/16 :goto_5

    .line 140
    :cond_15
    move-object/from16 v0, p1

    iget v0, v0, Lcom/jcraft/jzlib/InfBlocks;->end:I

    move/from16 v19, v0

    sub-int v12, v19, v16

    goto/16 :goto_6

    .line 143
    :cond_16
    const/16 v19, 0x9

    goto/16 :goto_7

    .line 147
    :cond_17
    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/jcraft/jzlib/InfCodes;->lbits:B

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jcraft/jzlib/InfCodes;->need:I

    .line 148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jzlib/InfCodes;->ltree:[I

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/jcraft/jzlib/InfCodes;->tree:[I

    .line 149
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jcraft/jzlib/InfCodes;->ltree_index:I

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jcraft/jzlib/InfCodes;->tree_index:I

    .line 151
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jcraft/jzlib/InfCodes;->mode:I

    .line 153
    :pswitch_1
    move-object/from16 v0, p0

    iget v10, v0, Lcom/jcraft/jzlib/InfCodes;->need:I

    .local v10, "j":I
    move v15, v14

    .line 155
    .end local v14    # "p":I
    .local v15, "p":I
    :goto_f
    if-ge v11, v10, :cond_19

    .line 156
    if-eqz v13, :cond_18

    const/16 p3, 0x0

    .line 164
    add-int/lit8 v13, v13, -0x1

    .line 165
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/jcraft/jzlib/ZStream;->next_in:[B

    move-object/from16 v19, v0

    add-int/lit8 v14, v15, 0x1

    .end local v15    # "p":I
    .restart local v14    # "p":I
    aget-byte v19, v19, v15

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    shl-int v19, v19, v11

    or-int v6, v6, v19

    .line 166
    add-int/lit8 v11, v11, 0x8

    move v15, v14

    .end local v14    # "p":I
    .restart local v15    # "p":I
    goto :goto_f

    .line 159
    :cond_18
    move-object/from16 v0, p1

    iput v6, v0, Lcom/jcraft/jzlib/InfBlocks;->bitb:I

    move-object/from16 v0, p1

    iput v11, v0, Lcom/jcraft/jzlib/InfBlocks;->bitk:I

    .line 160
    move-object/from16 v0, p2

    iput v13, v0, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/jcraft/jzlib/ZStream;->total_in:J

    move-wide/from16 v20, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    move/from16 v19, v0

    sub-int v19, v15, v19

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v22, v0

    add-long v20, v20, v22

    move-wide/from16 v0, v20

    move-object/from16 v2, p2

    iput-wide v0, v2, Lcom/jcraft/jzlib/ZStream;->total_in:J

    move-object/from16 v0, p2

    iput v15, v0, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    .line 161
    move/from16 v0, v16

    move-object/from16 v1, p1

    iput v0, v1, Lcom/jcraft/jzlib/InfBlocks;->write:I

    .line 162
    invoke-virtual/range {p1 .. p3}, Lcom/jcraft/jzlib/InfBlocks;->inflate_flush(Lcom/jcraft/jzlib/ZStream;I)I

    move-result v19

    move v14, v15

    .end local v15    # "p":I
    .restart local v14    # "p":I
    goto/16 :goto_1

    .line 169
    .end local v14    # "p":I
    .restart local v15    # "p":I
    :cond_19
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jcraft/jzlib/InfCodes;->tree_index:I

    move/from16 v19, v0

    sget-object v20, Lcom/jcraft/jzlib/InfCodes;->inflate_mask:[I

    aget v20, v20, v10

    and-int v20, v20, v6

    add-int v19, v19, v20

    mul-int/lit8 v18, v19, 0x3

    .line 171
    .local v18, "tindex":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jzlib/InfCodes;->tree:[I

    move-object/from16 v19, v0

    add-int/lit8 v20, v18, 0x1

    aget v19, v19, v20

    ushr-int v6, v6, v19

    .line 172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jzlib/InfCodes;->tree:[I

    move-object/from16 v19, v0

    add-int/lit8 v20, v18, 0x1

    aget v19, v19, v20

    sub-int v11, v11, v19

    .line 174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jzlib/InfCodes;->tree:[I

    move-object/from16 v19, v0

    aget v7, v19, v18

    .line 176
    .local v7, "e":I
    if-nez v7, :cond_1a

    .line 177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jzlib/InfCodes;->tree:[I

    move-object/from16 v19, v0

    add-int/lit8 v20, v18, 0x2

    aget v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jcraft/jzlib/InfCodes;->lit:I

    .line 178
    const/16 v19, 0x6

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jcraft/jzlib/InfCodes;->mode:I

    move v14, v15

    .line 179
    .end local v15    # "p":I
    .restart local v14    # "p":I
    goto/16 :goto_0

    .line 181
    .end local v14    # "p":I
    .restart local v15    # "p":I
    :cond_1a
    and-int/lit8 v19, v7, 0x10

    if-eqz v19, :cond_1b

    .line 182
    and-int/lit8 v19, v7, 0xf

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jcraft/jzlib/InfCodes;->get:I

    .line 183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jzlib/InfCodes;->tree:[I

    move-object/from16 v19, v0

    add-int/lit8 v20, v18, 0x2

    aget v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jcraft/jzlib/InfCodes;->len:I

    .line 184
    const/16 v19, 0x2

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jcraft/jzlib/InfCodes;->mode:I

    move v14, v15

    .line 185
    .end local v15    # "p":I
    .restart local v14    # "p":I
    goto/16 :goto_0

    .line 187
    .end local v14    # "p":I
    .restart local v15    # "p":I
    :cond_1b
    and-int/lit8 v19, v7, 0x40

    if-nez v19, :cond_1c

    .line 188
    move-object/from16 v0, p0

    iput v7, v0, Lcom/jcraft/jzlib/InfCodes;->need:I

    .line 189
    div-int/lit8 v19, v18, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jzlib/InfCodes;->tree:[I

    move-object/from16 v20, v0

    add-int/lit8 v21, v18, 0x2

    aget v20, v20, v21

    add-int v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jcraft/jzlib/InfCodes;->tree_index:I

    move v14, v15

    .line 190
    .end local v15    # "p":I
    .restart local v14    # "p":I
    goto/16 :goto_0

    .line 192
    .end local v14    # "p":I
    .restart local v15    # "p":I
    :cond_1c
    and-int/lit8 v19, v7, 0x20

    if-eqz v19, :cond_1d

    .line 193
    const/16 v19, 0x7

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jcraft/jzlib/InfCodes;->mode:I

    move v14, v15

    .line 194
    .end local v15    # "p":I
    .restart local v14    # "p":I
    goto/16 :goto_0

    .line 196
    .end local v14    # "p":I
    .restart local v15    # "p":I
    :cond_1d
    const/16 v19, 0x9

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jcraft/jzlib/InfCodes;->mode:I

    .line 197
    const-string v19, "invalid literal/length code"

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/jcraft/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 198
    move-object/from16 v0, p1

    iput v6, v0, Lcom/jcraft/jzlib/InfBlocks;->bitb:I

    move-object/from16 v0, p1

    iput v11, v0, Lcom/jcraft/jzlib/InfBlocks;->bitk:I

    .line 201
    move-object/from16 v0, p2

    iput v13, v0, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/jcraft/jzlib/ZStream;->total_in:J

    move-wide/from16 v20, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    move/from16 v19, v0

    sub-int v19, v15, v19

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v22, v0

    add-long v20, v20, v22

    move-wide/from16 v0, v20

    move-object/from16 v2, p2

    iput-wide v0, v2, Lcom/jcraft/jzlib/ZStream;->total_in:J

    move-object/from16 v0, p2

    iput v15, v0, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    .line 202
    move/from16 v0, v16

    move-object/from16 v1, p1

    iput v0, v1, Lcom/jcraft/jzlib/InfBlocks;->write:I

    .line 203
    const/16 v19, -0x3

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/jcraft/jzlib/InfBlocks;->inflate_flush(Lcom/jcraft/jzlib/ZStream;I)I

    move-result v19

    move v14, v15

    .end local v15    # "p":I
    .restart local v14    # "p":I
    goto/16 :goto_1

    .line 206
    .end local v7    # "e":I
    .end local v10    # "j":I
    .end local v18    # "tindex":I
    :pswitch_2
    move-object/from16 v0, p0

    iget v10, v0, Lcom/jcraft/jzlib/InfCodes;->get:I

    .restart local v10    # "j":I
    move v15, v14

    .line 208
    .end local v14    # "p":I
    .restart local v15    # "p":I
    :goto_10
    if-ge v11, v10, :cond_1f

    .line 209
    if-eqz v13, :cond_1e

    const/16 p3, 0x0

    .line 217
    add-int/lit8 v13, v13, -0x1

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/jcraft/jzlib/ZStream;->next_in:[B

    move-object/from16 v19, v0

    add-int/lit8 v14, v15, 0x1

    .end local v15    # "p":I
    .restart local v14    # "p":I
    aget-byte v19, v19, v15

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    shl-int v19, v19, v11

    or-int v6, v6, v19

    .line 218
    add-int/lit8 v11, v11, 0x8

    move v15, v14

    .end local v14    # "p":I
    .restart local v15    # "p":I
    goto :goto_10

    .line 212
    :cond_1e
    move-object/from16 v0, p1

    iput v6, v0, Lcom/jcraft/jzlib/InfBlocks;->bitb:I

    move-object/from16 v0, p1

    iput v11, v0, Lcom/jcraft/jzlib/InfBlocks;->bitk:I

    .line 213
    move-object/from16 v0, p2

    iput v13, v0, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/jcraft/jzlib/ZStream;->total_in:J

    move-wide/from16 v20, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    move/from16 v19, v0

    sub-int v19, v15, v19

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v22, v0

    add-long v20, v20, v22

    move-wide/from16 v0, v20

    move-object/from16 v2, p2

    iput-wide v0, v2, Lcom/jcraft/jzlib/ZStream;->total_in:J

    move-object/from16 v0, p2

    iput v15, v0, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    .line 214
    move/from16 v0, v16

    move-object/from16 v1, p1

    iput v0, v1, Lcom/jcraft/jzlib/InfBlocks;->write:I

    .line 215
    invoke-virtual/range {p1 .. p3}, Lcom/jcraft/jzlib/InfBlocks;->inflate_flush(Lcom/jcraft/jzlib/ZStream;I)I

    move-result v19

    move v14, v15

    .end local v15    # "p":I
    .restart local v14    # "p":I
    goto/16 :goto_1

    .line 221
    .end local v14    # "p":I
    .restart local v15    # "p":I
    :cond_1f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jcraft/jzlib/InfCodes;->len:I

    move/from16 v19, v0

    sget-object v20, Lcom/jcraft/jzlib/InfCodes;->inflate_mask:[I

    aget v20, v20, v10

    and-int v20, v20, v6

    add-int v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jcraft/jzlib/InfCodes;->len:I

    .line 223
    shr-int/2addr v6, v10

    .line 224
    sub-int/2addr v11, v10

    .line 226
    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/jcraft/jzlib/InfCodes;->dbits:B

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jcraft/jzlib/InfCodes;->need:I

    .line 227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jzlib/InfCodes;->dtree:[I

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/jcraft/jzlib/InfCodes;->tree:[I

    .line 228
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jcraft/jzlib/InfCodes;->dtree_index:I

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jcraft/jzlib/InfCodes;->tree_index:I

    .line 229
    const/16 v19, 0x3

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jcraft/jzlib/InfCodes;->mode:I

    move v14, v15

    .line 231
    .end local v10    # "j":I
    .end local v15    # "p":I
    .restart local v14    # "p":I
    :pswitch_3
    move-object/from16 v0, p0

    iget v10, v0, Lcom/jcraft/jzlib/InfCodes;->need:I

    .restart local v10    # "j":I
    move v15, v14

    .line 233
    .end local v14    # "p":I
    .restart local v15    # "p":I
    :goto_11
    if-ge v11, v10, :cond_21

    .line 234
    if-eqz v13, :cond_20

    const/16 p3, 0x0

    .line 242
    add-int/lit8 v13, v13, -0x1

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/jcraft/jzlib/ZStream;->next_in:[B

    move-object/from16 v19, v0

    add-int/lit8 v14, v15, 0x1

    .end local v15    # "p":I
    .restart local v14    # "p":I
    aget-byte v19, v19, v15

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    shl-int v19, v19, v11

    or-int v6, v6, v19

    .line 243
    add-int/lit8 v11, v11, 0x8

    move v15, v14

    .end local v14    # "p":I
    .restart local v15    # "p":I
    goto :goto_11

    .line 237
    :cond_20
    move-object/from16 v0, p1

    iput v6, v0, Lcom/jcraft/jzlib/InfBlocks;->bitb:I

    move-object/from16 v0, p1

    iput v11, v0, Lcom/jcraft/jzlib/InfBlocks;->bitk:I

    .line 238
    move-object/from16 v0, p2

    iput v13, v0, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/jcraft/jzlib/ZStream;->total_in:J

    move-wide/from16 v20, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    move/from16 v19, v0

    sub-int v19, v15, v19

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v22, v0

    add-long v20, v20, v22

    move-wide/from16 v0, v20

    move-object/from16 v2, p2

    iput-wide v0, v2, Lcom/jcraft/jzlib/ZStream;->total_in:J

    move-object/from16 v0, p2

    iput v15, v0, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    .line 239
    move/from16 v0, v16

    move-object/from16 v1, p1

    iput v0, v1, Lcom/jcraft/jzlib/InfBlocks;->write:I

    .line 240
    invoke-virtual/range {p1 .. p3}, Lcom/jcraft/jzlib/InfBlocks;->inflate_flush(Lcom/jcraft/jzlib/ZStream;I)I

    move-result v19

    move v14, v15

    .end local v15    # "p":I
    .restart local v14    # "p":I
    goto/16 :goto_1

    .line 246
    .end local v14    # "p":I
    .restart local v15    # "p":I
    :cond_21
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jcraft/jzlib/InfCodes;->tree_index:I

    move/from16 v19, v0

    sget-object v20, Lcom/jcraft/jzlib/InfCodes;->inflate_mask:[I

    aget v20, v20, v10

    and-int v20, v20, v6

    add-int v19, v19, v20

    mul-int/lit8 v18, v19, 0x3

    .line 248
    .restart local v18    # "tindex":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jzlib/InfCodes;->tree:[I

    move-object/from16 v19, v0

    add-int/lit8 v20, v18, 0x1

    aget v19, v19, v20

    shr-int v6, v6, v19

    .line 249
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jzlib/InfCodes;->tree:[I

    move-object/from16 v19, v0

    add-int/lit8 v20, v18, 0x1

    aget v19, v19, v20

    sub-int v11, v11, v19

    .line 251
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jzlib/InfCodes;->tree:[I

    move-object/from16 v19, v0

    aget v7, v19, v18

    .line 252
    .restart local v7    # "e":I
    and-int/lit8 v19, v7, 0x10

    if-eqz v19, :cond_22

    .line 253
    and-int/lit8 v19, v7, 0xf

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jcraft/jzlib/InfCodes;->get:I

    .line 254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jzlib/InfCodes;->tree:[I

    move-object/from16 v19, v0

    add-int/lit8 v20, v18, 0x2

    aget v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jcraft/jzlib/InfCodes;->dist:I

    .line 255
    const/16 v19, 0x4

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jcraft/jzlib/InfCodes;->mode:I

    move v14, v15

    .line 256
    .end local v15    # "p":I
    .restart local v14    # "p":I
    goto/16 :goto_0

    .line 258
    .end local v14    # "p":I
    .restart local v15    # "p":I
    :cond_22
    and-int/lit8 v19, v7, 0x40

    if-nez v19, :cond_23

    .line 259
    move-object/from16 v0, p0

    iput v7, v0, Lcom/jcraft/jzlib/InfCodes;->need:I

    .line 260
    div-int/lit8 v19, v18, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jzlib/InfCodes;->tree:[I

    move-object/from16 v20, v0

    add-int/lit8 v21, v18, 0x2

    aget v20, v20, v21

    add-int v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jcraft/jzlib/InfCodes;->tree_index:I

    move v14, v15

    .line 261
    .end local v15    # "p":I
    .restart local v14    # "p":I
    goto/16 :goto_0

    .line 263
    .end local v14    # "p":I
    .restart local v15    # "p":I
    :cond_23
    const/16 v19, 0x9

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jcraft/jzlib/InfCodes;->mode:I

    .line 264
    const-string v19, "invalid distance code"

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/jcraft/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 265
    move-object/from16 v0, p1

    iput v6, v0, Lcom/jcraft/jzlib/InfBlocks;->bitb:I

    move-object/from16 v0, p1

    iput v11, v0, Lcom/jcraft/jzlib/InfBlocks;->bitk:I

    .line 268
    move-object/from16 v0, p2

    iput v13, v0, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/jcraft/jzlib/ZStream;->total_in:J

    move-wide/from16 v20, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    move/from16 v19, v0

    sub-int v19, v15, v19

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v22, v0

    add-long v20, v20, v22

    move-wide/from16 v0, v20

    move-object/from16 v2, p2

    iput-wide v0, v2, Lcom/jcraft/jzlib/ZStream;->total_in:J

    move-object/from16 v0, p2

    iput v15, v0, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    .line 269
    move/from16 v0, v16

    move-object/from16 v1, p1

    iput v0, v1, Lcom/jcraft/jzlib/InfBlocks;->write:I

    .line 270
    const/16 v19, -0x3

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/jcraft/jzlib/InfBlocks;->inflate_flush(Lcom/jcraft/jzlib/ZStream;I)I

    move-result v19

    move v14, v15

    .end local v15    # "p":I
    .restart local v14    # "p":I
    goto/16 :goto_1

    .line 273
    .end local v7    # "e":I
    .end local v10    # "j":I
    .end local v18    # "tindex":I
    :pswitch_4
    move-object/from16 v0, p0

    iget v10, v0, Lcom/jcraft/jzlib/InfCodes;->get:I

    .restart local v10    # "j":I
    move v15, v14

    .line 275
    .end local v14    # "p":I
    .restart local v15    # "p":I
    :goto_12
    if-ge v11, v10, :cond_25

    .line 276
    if-eqz v13, :cond_24

    const/16 p3, 0x0

    .line 284
    add-int/lit8 v13, v13, -0x1

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/jcraft/jzlib/ZStream;->next_in:[B

    move-object/from16 v19, v0

    add-int/lit8 v14, v15, 0x1

    .end local v15    # "p":I
    .restart local v14    # "p":I
    aget-byte v19, v19, v15

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    shl-int v19, v19, v11

    or-int v6, v6, v19

    .line 285
    add-int/lit8 v11, v11, 0x8

    move v15, v14

    .end local v14    # "p":I
    .restart local v15    # "p":I
    goto :goto_12

    .line 279
    :cond_24
    move-object/from16 v0, p1

    iput v6, v0, Lcom/jcraft/jzlib/InfBlocks;->bitb:I

    move-object/from16 v0, p1

    iput v11, v0, Lcom/jcraft/jzlib/InfBlocks;->bitk:I

    .line 280
    move-object/from16 v0, p2

    iput v13, v0, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/jcraft/jzlib/ZStream;->total_in:J

    move-wide/from16 v20, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    move/from16 v19, v0

    sub-int v19, v15, v19

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v22, v0

    add-long v20, v20, v22

    move-wide/from16 v0, v20

    move-object/from16 v2, p2

    iput-wide v0, v2, Lcom/jcraft/jzlib/ZStream;->total_in:J

    move-object/from16 v0, p2

    iput v15, v0, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    .line 281
    move/from16 v0, v16

    move-object/from16 v1, p1

    iput v0, v1, Lcom/jcraft/jzlib/InfBlocks;->write:I

    .line 282
    invoke-virtual/range {p1 .. p3}, Lcom/jcraft/jzlib/InfBlocks;->inflate_flush(Lcom/jcraft/jzlib/ZStream;I)I

    move-result v19

    move v14, v15

    .end local v15    # "p":I
    .restart local v14    # "p":I
    goto/16 :goto_1

    .line 288
    .end local v14    # "p":I
    .restart local v15    # "p":I
    :cond_25
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jcraft/jzlib/InfCodes;->dist:I

    move/from16 v19, v0

    sget-object v20, Lcom/jcraft/jzlib/InfCodes;->inflate_mask:[I

    aget v20, v20, v10

    and-int v20, v20, v6

    add-int v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jcraft/jzlib/InfCodes;->dist:I

    .line 290
    shr-int/2addr v6, v10

    .line 291
    sub-int/2addr v11, v10

    .line 293
    const/16 v19, 0x5

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jcraft/jzlib/InfCodes;->mode:I

    move v14, v15

    .line 295
    .end local v10    # "j":I
    .end local v15    # "p":I
    .restart local v14    # "p":I
    :pswitch_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jcraft/jzlib/InfCodes;->dist:I

    move/from16 v19, v0

    sub-int v8, v16, v19

    .line 296
    .local v8, "f":I
    :goto_13
    if-gez v8, :cond_27

    .line 297
    move-object/from16 v0, p1

    iget v0, v0, Lcom/jcraft/jzlib/InfBlocks;->end:I

    move/from16 v19, v0

    add-int v8, v8, v19

    goto :goto_13

    .line 318
    :cond_26
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/jcraft/jzlib/InfBlocks;->window:[B

    move-object/from16 v19, v0

    add-int/lit8 v17, v16, 0x1

    .end local v16    # "q":I
    .local v17, "q":I
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/jcraft/jzlib/InfBlocks;->window:[B

    move-object/from16 v20, v0

    add-int/lit8 v9, v8, 0x1

    .end local v8    # "f":I
    .local v9, "f":I
    aget-byte v20, v20, v8

    aput-byte v20, v19, v16

    add-int/lit8 v12, v12, -0x1

    .line 320
    move-object/from16 v0, p1

    iget v0, v0, Lcom/jcraft/jzlib/InfBlocks;->end:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-ne v9, v0, :cond_37

    .line 321
    const/4 v8, 0x0

    .line 322
    .end local v9    # "f":I
    .restart local v8    # "f":I
    :goto_14
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jcraft/jzlib/InfCodes;->len:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jcraft/jzlib/InfCodes;->len:I

    move/from16 v16, v17

    .line 299
    .end local v17    # "q":I
    .restart local v16    # "q":I
    :cond_27
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jcraft/jzlib/InfCodes;->len:I

    move/from16 v19, v0

    if-eqz v19, :cond_2d

    .line 301
    if-nez v12, :cond_26

    .line 302
    move-object/from16 v0, p1

    iget v0, v0, Lcom/jcraft/jzlib/InfBlocks;->end:I

    move/from16 v19, v0

    move/from16 v0, v16

    move/from16 v1, v19

    if-ne v0, v1, :cond_28

    move-object/from16 v0, p1

    iget v0, v0, Lcom/jcraft/jzlib/InfBlocks;->read:I

    move/from16 v19, v0

    if-eqz v19, :cond_28

    const/16 v16, 0x0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/jcraft/jzlib/InfBlocks;->read:I

    move/from16 v19, v0

    if-lez v19, :cond_2a

    move-object/from16 v0, p1

    iget v0, v0, Lcom/jcraft/jzlib/InfBlocks;->read:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, 0x0

    add-int/lit8 v12, v19, -0x1

    .line 303
    :cond_28
    :goto_15
    if-nez v12, :cond_26

    .line 304
    move/from16 v0, v16

    move-object/from16 v1, p1

    iput v0, v1, Lcom/jcraft/jzlib/InfBlocks;->write:I

    invoke-virtual/range {p1 .. p3}, Lcom/jcraft/jzlib/InfBlocks;->inflate_flush(Lcom/jcraft/jzlib/ZStream;I)I

    move-result p3

    .line 305
    move-object/from16 v0, p1

    iget v0, v0, Lcom/jcraft/jzlib/InfBlocks;->write:I

    move/from16 v16, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/jcraft/jzlib/InfBlocks;->read:I

    move/from16 v19, v0

    move/from16 v0, v16

    move/from16 v1, v19

    if-ge v0, v1, :cond_2b

    move-object/from16 v0, p1

    iget v0, v0, Lcom/jcraft/jzlib/InfBlocks;->read:I

    move/from16 v19, v0

    sub-int v19, v19, v16

    add-int/lit8 v12, v19, -0x1

    .line 307
    :goto_16
    move-object/from16 v0, p1

    iget v0, v0, Lcom/jcraft/jzlib/InfBlocks;->end:I

    move/from16 v19, v0

    move/from16 v0, v16

    move/from16 v1, v19

    if-ne v0, v1, :cond_29

    move-object/from16 v0, p1

    iget v0, v0, Lcom/jcraft/jzlib/InfBlocks;->read:I

    move/from16 v19, v0

    if-eqz v19, :cond_29

    const/16 v16, 0x0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/jcraft/jzlib/InfBlocks;->read:I

    move/from16 v19, v0

    if-lez v19, :cond_2c

    move-object/from16 v0, p1

    iget v0, v0, Lcom/jcraft/jzlib/InfBlocks;->read:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, 0x0

    add-int/lit8 v12, v19, -0x1

    .line 309
    :cond_29
    :goto_17
    if-nez v12, :cond_26

    .line 310
    move-object/from16 v0, p1

    iput v6, v0, Lcom/jcraft/jzlib/InfBlocks;->bitb:I

    move-object/from16 v0, p1

    iput v11, v0, Lcom/jcraft/jzlib/InfBlocks;->bitk:I

    .line 311
    move-object/from16 v0, p2

    iput v13, v0, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/jcraft/jzlib/ZStream;->total_in:J

    move-wide/from16 v20, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    move/from16 v19, v0

    sub-int v19, v14, v19

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v22, v0

    add-long v20, v20, v22

    move-wide/from16 v0, v20

    move-object/from16 v2, p2

    iput-wide v0, v2, Lcom/jcraft/jzlib/ZStream;->total_in:J

    move-object/from16 v0, p2

    iput v14, v0, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    .line 312
    move/from16 v0, v16

    move-object/from16 v1, p1

    iput v0, v1, Lcom/jcraft/jzlib/InfBlocks;->write:I

    .line 313
    invoke-virtual/range {p1 .. p3}, Lcom/jcraft/jzlib/InfBlocks;->inflate_flush(Lcom/jcraft/jzlib/ZStream;I)I

    move-result v19

    goto/16 :goto_1

    .line 302
    :cond_2a
    move-object/from16 v0, p1

    iget v0, v0, Lcom/jcraft/jzlib/InfBlocks;->end:I

    move/from16 v19, v0

    add-int/lit8 v12, v19, 0x0

    goto/16 :goto_15

    .line 305
    :cond_2b
    move-object/from16 v0, p1

    iget v0, v0, Lcom/jcraft/jzlib/InfBlocks;->end:I

    move/from16 v19, v0

    sub-int v12, v19, v16

    goto :goto_16

    .line 307
    :cond_2c
    move-object/from16 v0, p1

    iget v0, v0, Lcom/jcraft/jzlib/InfBlocks;->end:I

    move/from16 v19, v0

    add-int/lit8 v12, v19, 0x0

    goto :goto_17

    .line 324
    :cond_2d
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jcraft/jzlib/InfCodes;->mode:I

    goto/16 :goto_0

    .line 327
    .end local v8    # "f":I
    :pswitch_6
    if-nez v12, :cond_33

    .line 328
    move-object/from16 v0, p1

    iget v0, v0, Lcom/jcraft/jzlib/InfBlocks;->end:I

    move/from16 v19, v0

    move/from16 v0, v16

    move/from16 v1, v19

    if-ne v0, v1, :cond_2e

    move-object/from16 v0, p1

    iget v0, v0, Lcom/jcraft/jzlib/InfBlocks;->read:I

    move/from16 v19, v0

    if-eqz v19, :cond_2e

    const/16 v16, 0x0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/jcraft/jzlib/InfBlocks;->read:I

    move/from16 v19, v0

    if-lez v19, :cond_30

    move-object/from16 v0, p1

    iget v0, v0, Lcom/jcraft/jzlib/InfBlocks;->read:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, 0x0

    add-int/lit8 v12, v19, -0x1

    .line 329
    :cond_2e
    :goto_18
    if-nez v12, :cond_33

    .line 330
    move/from16 v0, v16

    move-object/from16 v1, p1

    iput v0, v1, Lcom/jcraft/jzlib/InfBlocks;->write:I

    invoke-virtual/range {p1 .. p3}, Lcom/jcraft/jzlib/InfBlocks;->inflate_flush(Lcom/jcraft/jzlib/ZStream;I)I

    move-result p3

    .line 331
    move-object/from16 v0, p1

    iget v0, v0, Lcom/jcraft/jzlib/InfBlocks;->write:I

    move/from16 v16, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/jcraft/jzlib/InfBlocks;->read:I

    move/from16 v19, v0

    move/from16 v0, v16

    move/from16 v1, v19

    if-ge v0, v1, :cond_31

    move-object/from16 v0, p1

    iget v0, v0, Lcom/jcraft/jzlib/InfBlocks;->read:I

    move/from16 v19, v0

    sub-int v19, v19, v16

    add-int/lit8 v12, v19, -0x1

    .line 333
    :goto_19
    move-object/from16 v0, p1

    iget v0, v0, Lcom/jcraft/jzlib/InfBlocks;->end:I

    move/from16 v19, v0

    move/from16 v0, v16

    move/from16 v1, v19

    if-ne v0, v1, :cond_2f

    move-object/from16 v0, p1

    iget v0, v0, Lcom/jcraft/jzlib/InfBlocks;->read:I

    move/from16 v19, v0

    if-eqz v19, :cond_2f

    const/16 v16, 0x0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/jcraft/jzlib/InfBlocks;->read:I

    move/from16 v19, v0

    if-lez v19, :cond_32

    move-object/from16 v0, p1

    iget v0, v0, Lcom/jcraft/jzlib/InfBlocks;->read:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, 0x0

    add-int/lit8 v12, v19, -0x1

    .line 334
    :cond_2f
    :goto_1a
    if-nez v12, :cond_33

    .line 335
    move-object/from16 v0, p1

    iput v6, v0, Lcom/jcraft/jzlib/InfBlocks;->bitb:I

    move-object/from16 v0, p1

    iput v11, v0, Lcom/jcraft/jzlib/InfBlocks;->bitk:I

    .line 336
    move-object/from16 v0, p2

    iput v13, v0, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/jcraft/jzlib/ZStream;->total_in:J

    move-wide/from16 v20, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    move/from16 v19, v0

    sub-int v19, v14, v19

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v22, v0

    add-long v20, v20, v22

    move-wide/from16 v0, v20

    move-object/from16 v2, p2

    iput-wide v0, v2, Lcom/jcraft/jzlib/ZStream;->total_in:J

    move-object/from16 v0, p2

    iput v14, v0, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    .line 337
    move/from16 v0, v16

    move-object/from16 v1, p1

    iput v0, v1, Lcom/jcraft/jzlib/InfBlocks;->write:I

    .line 338
    invoke-virtual/range {p1 .. p3}, Lcom/jcraft/jzlib/InfBlocks;->inflate_flush(Lcom/jcraft/jzlib/ZStream;I)I

    move-result v19

    goto/16 :goto_1

    .line 328
    :cond_30
    move-object/from16 v0, p1

    iget v0, v0, Lcom/jcraft/jzlib/InfBlocks;->end:I

    move/from16 v19, v0

    add-int/lit8 v12, v19, 0x0

    goto/16 :goto_18

    .line 331
    :cond_31
    move-object/from16 v0, p1

    iget v0, v0, Lcom/jcraft/jzlib/InfBlocks;->end:I

    move/from16 v19, v0

    sub-int v12, v19, v16

    goto :goto_19

    .line 333
    :cond_32
    move-object/from16 v0, p1

    iget v0, v0, Lcom/jcraft/jzlib/InfBlocks;->end:I

    move/from16 v19, v0

    add-int/lit8 v12, v19, 0x0

    goto :goto_1a

    .line 342
    :cond_33
    const/16 p3, 0x0

    .line 344
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/jcraft/jzlib/InfBlocks;->window:[B

    move-object/from16 v19, v0

    add-int/lit8 v17, v16, 0x1

    .end local v16    # "q":I
    .restart local v17    # "q":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jcraft/jzlib/InfCodes;->lit:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-byte v0, v0

    move/from16 v20, v0

    aput-byte v20, v19, v16

    add-int/lit8 v12, v12, -0x1

    .line 346
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jcraft/jzlib/InfCodes;->mode:I

    move/from16 v16, v17

    .line 347
    .end local v17    # "q":I
    .restart local v16    # "q":I
    goto/16 :goto_0

    .line 349
    :pswitch_7
    const/16 v19, 0x7

    move/from16 v0, v19

    if-le v11, v0, :cond_34

    .line 350
    add-int/lit8 v11, v11, -0x8

    .line 351
    add-int/lit8 v13, v13, 0x1

    .line 352
    add-int/lit8 v14, v14, -0x1

    .line 355
    :cond_34
    move/from16 v0, v16

    move-object/from16 v1, p1

    iput v0, v1, Lcom/jcraft/jzlib/InfBlocks;->write:I

    invoke-virtual/range {p1 .. p3}, Lcom/jcraft/jzlib/InfBlocks;->inflate_flush(Lcom/jcraft/jzlib/ZStream;I)I

    move-result p3

    .line 356
    move-object/from16 v0, p1

    iget v0, v0, Lcom/jcraft/jzlib/InfBlocks;->write:I

    move/from16 v16, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/jcraft/jzlib/InfBlocks;->read:I

    move/from16 v19, v0

    move/from16 v0, v16

    move/from16 v1, v19

    if-ge v0, v1, :cond_35

    move-object/from16 v0, p1

    iget v0, v0, Lcom/jcraft/jzlib/InfBlocks;->read:I

    move/from16 v19, v0

    .line 358
    :goto_1b
    move-object/from16 v0, p1

    iget v0, v0, Lcom/jcraft/jzlib/InfBlocks;->read:I

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/jcraft/jzlib/InfBlocks;->write:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_36

    .line 359
    move-object/from16 v0, p1

    iput v6, v0, Lcom/jcraft/jzlib/InfBlocks;->bitb:I

    move-object/from16 v0, p1

    iput v11, v0, Lcom/jcraft/jzlib/InfBlocks;->bitk:I

    .line 360
    move-object/from16 v0, p2

    iput v13, v0, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/jcraft/jzlib/ZStream;->total_in:J

    move-wide/from16 v20, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    move/from16 v19, v0

    sub-int v19, v14, v19

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v22, v0

    add-long v20, v20, v22

    move-wide/from16 v0, v20

    move-object/from16 v2, p2

    iput-wide v0, v2, Lcom/jcraft/jzlib/ZStream;->total_in:J

    move-object/from16 v0, p2

    iput v14, v0, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    .line 361
    move/from16 v0, v16

    move-object/from16 v1, p1

    iput v0, v1, Lcom/jcraft/jzlib/InfBlocks;->write:I

    .line 362
    invoke-virtual/range {p1 .. p3}, Lcom/jcraft/jzlib/InfBlocks;->inflate_flush(Lcom/jcraft/jzlib/ZStream;I)I

    move-result v19

    goto/16 :goto_1

    .line 356
    :cond_35
    move-object/from16 v0, p1

    iget v0, v0, Lcom/jcraft/jzlib/InfBlocks;->end:I

    move/from16 v19, v0

    goto :goto_1b

    .line 364
    :cond_36
    const/16 v19, 0x8

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jcraft/jzlib/InfCodes;->mode:I

    .line 366
    :pswitch_8
    move-object/from16 v0, p1

    iput v6, v0, Lcom/jcraft/jzlib/InfBlocks;->bitb:I

    move-object/from16 v0, p1

    iput v11, v0, Lcom/jcraft/jzlib/InfBlocks;->bitk:I

    .line 368
    move-object/from16 v0, p2

    iput v13, v0, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/jcraft/jzlib/ZStream;->total_in:J

    move-wide/from16 v20, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    move/from16 v19, v0

    sub-int v19, v14, v19

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v22, v0

    add-long v20, v20, v22

    move-wide/from16 v0, v20

    move-object/from16 v2, p2

    iput-wide v0, v2, Lcom/jcraft/jzlib/ZStream;->total_in:J

    move-object/from16 v0, p2

    iput v14, v0, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    .line 369
    move/from16 v0, v16

    move-object/from16 v1, p1

    iput v0, v1, Lcom/jcraft/jzlib/InfBlocks;->write:I

    .line 370
    const/16 v19, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/jcraft/jzlib/InfBlocks;->inflate_flush(Lcom/jcraft/jzlib/ZStream;I)I

    move-result v19

    goto/16 :goto_1

    .line 374
    :pswitch_9
    move-object/from16 v0, p1

    iput v6, v0, Lcom/jcraft/jzlib/InfBlocks;->bitb:I

    move-object/from16 v0, p1

    iput v11, v0, Lcom/jcraft/jzlib/InfBlocks;->bitk:I

    .line 377
    move-object/from16 v0, p2

    iput v13, v0, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/jcraft/jzlib/ZStream;->total_in:J

    move-wide/from16 v20, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    move/from16 v19, v0

    sub-int v19, v14, v19

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v22, v0

    add-long v20, v20, v22

    move-wide/from16 v0, v20

    move-object/from16 v2, p2

    iput-wide v0, v2, Lcom/jcraft/jzlib/ZStream;->total_in:J

    move-object/from16 v0, p2

    iput v14, v0, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    .line 378
    move/from16 v0, v16

    move-object/from16 v1, p1

    iput v0, v1, Lcom/jcraft/jzlib/InfBlocks;->write:I

    .line 379
    const/16 v19, -0x3

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/jcraft/jzlib/InfBlocks;->inflate_flush(Lcom/jcraft/jzlib/ZStream;I)I

    move-result v19

    goto/16 :goto_1

    .end local v16    # "q":I
    .restart local v9    # "f":I
    .restart local v17    # "q":I
    :cond_37
    move v8, v9

    .end local v9    # "f":I
    .restart local v8    # "f":I
    goto/16 :goto_14

    .end local v8    # "f":I
    .end local v17    # "q":I
    .restart local v16    # "q":I
    :cond_38
    move/from16 v31, v19

    move/from16 v25, v20

    move/from16 v26, v21

    move/from16 v20, v22

    move/from16 v21, v24

    move/from16 v24, v23

    goto/16 :goto_3

    :cond_39
    move/from16 v21, v19

    move/from16 v22, v23

    move/from16 v19, v20

    goto/16 :goto_c

    :cond_3a
    move/from16 v21, v22

    move/from16 v23, v19

    move/from16 v19, v20

    goto/16 :goto_d

    :cond_3b
    move/from16 v20, v30

    move/from16 v21, v24

    goto/16 :goto_b

    .line 126
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method
