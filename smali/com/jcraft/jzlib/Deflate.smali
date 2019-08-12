.class public final Lcom/jcraft/jzlib/Deflate;
.super Ljava/lang/Object;
.source "Deflate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jcraft/jzlib/Deflate$Config;
    }
.end annotation


# static fields
.field private static final config_table:[Lcom/jcraft/jzlib/Deflate$Config;

.field private static final z_errmsg:[Ljava/lang/String;


# instance fields
.field private bi_buf:S

.field private bi_valid:I

.field bl_count:[S

.field private bl_desc:Lcom/jcraft/jzlib/Tree;

.field private bl_tree:[S

.field private block_start:I

.field private d_buf:I

.field private d_desc:Lcom/jcraft/jzlib/Tree;

.field private data_type:B

.field depth:[B

.field private dyn_dtree:[S

.field private dyn_ltree:[S

.field private good_match:I

.field private hash_bits:I

.field private hash_mask:I

.field private hash_shift:I

.field private hash_size:I

.field private head:[S

.field heap:[I

.field heap_len:I

.field heap_max:I

.field private ins_h:I

.field private l_buf:I

.field private l_desc:Lcom/jcraft/jzlib/Tree;

.field private last_eob_len:I

.field private last_flush:I

.field private last_lit:I

.field private level:I

.field private lit_bufsize:I

.field private lookahead:I

.field private match_available:I

.field private match_length:I

.field private match_start:I

.field private matches:I

.field private max_chain_length:I

.field private max_lazy_match:I

.field private nice_match:I

.field private noheader:I

.field opt_len:I

.field pending:I

.field pending_buf:[B

.field private pending_buf_size:I

.field pending_out:I

.field private prev:[S

.field private prev_length:I

.field private prev_match:I

.field static_len:I

.field private status:I

.field private strm:Lcom/jcraft/jzlib/ZStream;

.field private strstart:I

.field private w_bits:I

.field private w_mask:I

.field private w_size:I

.field private window:[B

.field private window_size:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    const/16 v12, 0x20

    const/16 v11, 0x8

    const/4 v1, 0x0

    const/4 v10, 0x2

    const/4 v9, 0x4

    .line 68
    const/16 v0, 0xa

    new-array v6, v0, [Lcom/jcraft/jzlib/Deflate$Config;

    .line 70
    sput-object v6, Lcom/jcraft/jzlib/Deflate;->config_table:[Lcom/jcraft/jzlib/Deflate$Config;

    new-instance v0, Lcom/jcraft/jzlib/Deflate$Config;

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    invoke-direct/range {v0 .. v5}, Lcom/jcraft/jzlib/Deflate$Config;-><init>(IIIII)V

    aput-object v0, v6, v1

    .line 71
    sget-object v0, Lcom/jcraft/jzlib/Deflate;->config_table:[Lcom/jcraft/jzlib/Deflate$Config;

    const/4 v8, 0x1

    new-instance v2, Lcom/jcraft/jzlib/Deflate$Config;

    const/4 v7, 0x1

    move v3, v9

    move v4, v9

    move v5, v11

    move v6, v9

    invoke-direct/range {v2 .. v7}, Lcom/jcraft/jzlib/Deflate$Config;-><init>(IIIII)V

    aput-object v2, v0, v8

    .line 72
    sget-object v0, Lcom/jcraft/jzlib/Deflate;->config_table:[Lcom/jcraft/jzlib/Deflate$Config;

    new-instance v2, Lcom/jcraft/jzlib/Deflate$Config;

    const/4 v4, 0x5

    const/16 v5, 0x10

    const/4 v7, 0x1

    move v3, v9

    move v6, v11

    invoke-direct/range {v2 .. v7}, Lcom/jcraft/jzlib/Deflate$Config;-><init>(IIIII)V

    aput-object v2, v0, v10

    .line 73
    sget-object v0, Lcom/jcraft/jzlib/Deflate;->config_table:[Lcom/jcraft/jzlib/Deflate$Config;

    const/4 v8, 0x3

    new-instance v2, Lcom/jcraft/jzlib/Deflate$Config;

    const/4 v4, 0x6

    const/4 v7, 0x1

    move v3, v9

    move v5, v12

    move v6, v12

    invoke-direct/range {v2 .. v7}, Lcom/jcraft/jzlib/Deflate$Config;-><init>(IIIII)V

    aput-object v2, v0, v8

    .line 75
    sget-object v0, Lcom/jcraft/jzlib/Deflate;->config_table:[Lcom/jcraft/jzlib/Deflate$Config;

    new-instance v2, Lcom/jcraft/jzlib/Deflate$Config;

    const/16 v5, 0x10

    const/16 v6, 0x10

    move v3, v9

    move v4, v9

    move v7, v10

    invoke-direct/range {v2 .. v7}, Lcom/jcraft/jzlib/Deflate$Config;-><init>(IIIII)V

    aput-object v2, v0, v9

    .line 76
    sget-object v0, Lcom/jcraft/jzlib/Deflate;->config_table:[Lcom/jcraft/jzlib/Deflate$Config;

    const/4 v8, 0x5

    new-instance v2, Lcom/jcraft/jzlib/Deflate$Config;

    const/16 v4, 0x10

    move v3, v11

    move v5, v12

    move v6, v12

    move v7, v10

    invoke-direct/range {v2 .. v7}, Lcom/jcraft/jzlib/Deflate$Config;-><init>(IIIII)V

    aput-object v2, v0, v8

    .line 77
    sget-object v0, Lcom/jcraft/jzlib/Deflate;->config_table:[Lcom/jcraft/jzlib/Deflate$Config;

    const/4 v8, 0x6

    new-instance v2, Lcom/jcraft/jzlib/Deflate$Config;

    const/16 v4, 0x10

    const/16 v5, 0x80

    const/16 v6, 0x80

    move v3, v11

    move v7, v10

    invoke-direct/range {v2 .. v7}, Lcom/jcraft/jzlib/Deflate$Config;-><init>(IIIII)V

    aput-object v2, v0, v8

    .line 78
    sget-object v0, Lcom/jcraft/jzlib/Deflate;->config_table:[Lcom/jcraft/jzlib/Deflate$Config;

    const/4 v8, 0x7

    new-instance v2, Lcom/jcraft/jzlib/Deflate$Config;

    const/16 v5, 0x80

    const/16 v6, 0x100

    move v3, v11

    move v4, v12

    move v7, v10

    invoke-direct/range {v2 .. v7}, Lcom/jcraft/jzlib/Deflate$Config;-><init>(IIIII)V

    aput-object v2, v0, v8

    .line 79
    sget-object v0, Lcom/jcraft/jzlib/Deflate;->config_table:[Lcom/jcraft/jzlib/Deflate$Config;

    new-instance v2, Lcom/jcraft/jzlib/Deflate$Config;

    const/16 v4, 0x80

    const/16 v5, 0x102

    const/16 v6, 0x400

    move v3, v12

    move v7, v10

    invoke-direct/range {v2 .. v7}, Lcom/jcraft/jzlib/Deflate$Config;-><init>(IIIII)V

    aput-object v2, v0, v11

    .line 80
    sget-object v0, Lcom/jcraft/jzlib/Deflate;->config_table:[Lcom/jcraft/jzlib/Deflate$Config;

    const/16 v8, 0x9

    new-instance v2, Lcom/jcraft/jzlib/Deflate$Config;

    const/16 v4, 0x102

    const/16 v5, 0x102

    const/16 v6, 0x1000

    move v3, v12

    move v7, v10

    invoke-direct/range {v2 .. v7}, Lcom/jcraft/jzlib/Deflate$Config;-><init>(IIIII)V

    aput-object v2, v0, v8

    .line 83
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "need dictionary"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "stream end"

    aput-object v2, v0, v1

    const-string v1, ""

    aput-object v1, v0, v10

    const/4 v1, 0x3

    const-string v2, "file error"

    aput-object v2, v0, v1

    const-string v1, "stream error"

    aput-object v1, v0, v9

    const/4 v1, 0x5

    const-string v2, "data error"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "insufficient memory"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "buffer error"

    aput-object v2, v0, v1

    const-string v1, "incompatible version"

    aput-object v1, v0, v11

    const/16 v1, 0x9

    const-string v2, ""

    aput-object v2, v0, v1

    sput-object v0, Lcom/jcraft/jzlib/Deflate;->z_errmsg:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x23d

    .line 320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 260
    new-instance v0, Lcom/jcraft/jzlib/Tree;

    invoke-direct {v0}, Lcom/jcraft/jzlib/Tree;-><init>()V

    iput-object v0, p0, Lcom/jcraft/jzlib/Deflate;->l_desc:Lcom/jcraft/jzlib/Tree;

    .line 261
    new-instance v0, Lcom/jcraft/jzlib/Tree;

    invoke-direct {v0}, Lcom/jcraft/jzlib/Tree;-><init>()V

    iput-object v0, p0, Lcom/jcraft/jzlib/Deflate;->d_desc:Lcom/jcraft/jzlib/Tree;

    .line 262
    new-instance v0, Lcom/jcraft/jzlib/Tree;

    invoke-direct {v0}, Lcom/jcraft/jzlib/Tree;-><init>()V

    iput-object v0, p0, Lcom/jcraft/jzlib/Deflate;->bl_desc:Lcom/jcraft/jzlib/Tree;

    .line 265
    const/16 v0, 0x10

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/jcraft/jzlib/Deflate;->bl_count:[S

    .line 268
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/jcraft/jzlib/Deflate;->heap:[I

    .line 276
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/jcraft/jzlib/Deflate;->depth:[B

    .line 321
    const/16 v0, 0x47a

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/jcraft/jzlib/Deflate;->dyn_ltree:[S

    .line 322
    const/16 v0, 0x7a

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/jcraft/jzlib/Deflate;->dyn_dtree:[S

    .line 323
    const/16 v0, 0x4e

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/jcraft/jzlib/Deflate;->bl_tree:[S

    .line 324
    return-void
.end method

.method private _tr_stored_block(IIZ)V
    .locals 3
    .param p1, "buf"    # I
    .param p2, "stored_len"    # I
    .param p3, "eof"    # Z

    .prologue
    .line 841
    if-eqz p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    add-int/lit8 v0, v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lcom/jcraft/jzlib/Deflate;->send_bits(II)V

    .line 842
    invoke-direct {p0}, Lcom/jcraft/jzlib/Deflate;->bi_windup()V

    const/16 v0, 0x8

    iput v0, p0, Lcom/jcraft/jzlib/Deflate;->last_eob_len:I

    int-to-short v0, p2

    invoke-direct {p0, v0}, Lcom/jcraft/jzlib/Deflate;->put_short(I)V

    xor-int/lit8 v0, p2, -0x1

    int-to-short v0, v0

    invoke-direct {p0, v0}, Lcom/jcraft/jzlib/Deflate;->put_short(I)V

    iget-object v0, p0, Lcom/jcraft/jzlib/Deflate;->window:[B

    iget-object v1, p0, Lcom/jcraft/jzlib/Deflate;->pending_buf:[B

    iget v2, p0, Lcom/jcraft/jzlib/Deflate;->pending:I

    invoke-static {v0, p1, v1, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/jcraft/jzlib/Deflate;->pending:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/jcraft/jzlib/Deflate;->pending:I

    .line 843
    return-void

    .line 841
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private _tr_tally(II)Z
    .locals 12
    .param p1, "dist"    # I
    .param p2, "lc"    # I

    .prologue
    const/4 v3, 0x1

    .line 627
    iget-object v4, p0, Lcom/jcraft/jzlib/Deflate;->pending_buf:[B

    iget v5, p0, Lcom/jcraft/jzlib/Deflate;->d_buf:I

    iget v6, p0, Lcom/jcraft/jzlib/Deflate;->last_lit:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    ushr-int/lit8 v6, p1, 0x8

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 628
    iget-object v4, p0, Lcom/jcraft/jzlib/Deflate;->pending_buf:[B

    iget v5, p0, Lcom/jcraft/jzlib/Deflate;->d_buf:I

    iget v6, p0, Lcom/jcraft/jzlib/Deflate;->last_lit:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x1

    int-to-byte v6, p1

    aput-byte v6, v4, v5

    .line 630
    iget-object v4, p0, Lcom/jcraft/jzlib/Deflate;->pending_buf:[B

    iget v5, p0, Lcom/jcraft/jzlib/Deflate;->l_buf:I

    iget v6, p0, Lcom/jcraft/jzlib/Deflate;->last_lit:I

    add-int/2addr v5, v6

    int-to-byte v6, p2

    aput-byte v6, v4, v5

    iget v4, p0, Lcom/jcraft/jzlib/Deflate;->last_lit:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/jcraft/jzlib/Deflate;->last_lit:I

    .line 632
    if-nez p1, :cond_0

    .line 634
    iget-object v4, p0, Lcom/jcraft/jzlib/Deflate;->dyn_ltree:[S

    mul-int/lit8 v5, p2, 0x2

    aget-short v6, v4, v5

    add-int/lit8 v6, v6, 0x1

    int-to-short v6, v6

    aput-short v6, v4, v5

    .line 644
    :goto_0
    iget v4, p0, Lcom/jcraft/jzlib/Deflate;->last_lit:I

    and-int/lit16 v4, v4, 0x1fff

    if-nez v4, :cond_3

    iget v4, p0, Lcom/jcraft/jzlib/Deflate;->level:I

    const/4 v5, 0x2

    if-le v4, v5, :cond_3

    .line 646
    iget v4, p0, Lcom/jcraft/jzlib/Deflate;->last_lit:I

    mul-int/lit8 v2, v4, 0x8

    .line 647
    .local v2, "out_length":I
    iget v4, p0, Lcom/jcraft/jzlib/Deflate;->strstart:I

    iget v5, p0, Lcom/jcraft/jzlib/Deflate;->block_start:I

    sub-int v1, v4, v5

    .line 649
    .local v1, "in_length":I
    const/4 v0, 0x0

    .local v0, "dcode":I
    :goto_1
    const/16 v4, 0x1e

    if-ge v0, v4, :cond_1

    .line 650
    int-to-long v4, v2

    iget-object v6, p0, Lcom/jcraft/jzlib/Deflate;->dyn_dtree:[S

    mul-int/lit8 v7, v0, 0x2

    aget-short v6, v6, v7

    int-to-long v6, v6

    const-wide/16 v8, 0x5

    sget-object v10, Lcom/jcraft/jzlib/Tree;->extra_dbits:[I

    aget v10, v10, v0

    int-to-long v10, v10

    add-long/2addr v8, v10

    mul-long/2addr v6, v8

    add-long/2addr v4, v6

    long-to-int v2, v4

    .line 649
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 637
    .end local v0    # "dcode":I
    .end local v1    # "in_length":I
    .end local v2    # "out_length":I
    :cond_0
    iget v4, p0, Lcom/jcraft/jzlib/Deflate;->matches:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/jcraft/jzlib/Deflate;->matches:I

    .line 639
    add-int/lit8 p1, p1, -0x1

    .line 640
    iget-object v4, p0, Lcom/jcraft/jzlib/Deflate;->dyn_ltree:[S

    sget-object v5, Lcom/jcraft/jzlib/Tree;->_length_code:[B

    aget-byte v5, v5, p2

    add-int/lit16 v5, v5, 0x100

    add-int/lit8 v5, v5, 0x1

    mul-int/lit8 v5, v5, 0x2

    aget-short v6, v4, v5

    add-int/lit8 v6, v6, 0x1

    int-to-short v6, v6

    aput-short v6, v4, v5

    .line 641
    iget-object v4, p0, Lcom/jcraft/jzlib/Deflate;->dyn_dtree:[S

    invoke-static {p1}, Lcom/jcraft/jzlib/Tree;->d_code(I)I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    aget-short v6, v4, v5

    add-int/lit8 v6, v6, 0x1

    int-to-short v6, v6

    aput-short v6, v4, v5

    goto :goto_0

    .line 653
    .restart local v0    # "dcode":I
    .restart local v1    # "in_length":I
    .restart local v2    # "out_length":I
    :cond_1
    ushr-int/lit8 v2, v2, 0x3

    .line 654
    iget v4, p0, Lcom/jcraft/jzlib/Deflate;->matches:I

    iget v5, p0, Lcom/jcraft/jzlib/Deflate;->last_lit:I

    div-int/lit8 v5, v5, 0x2

    if-ge v4, v5, :cond_3

    div-int/lit8 v4, v1, 0x2

    if-ge v2, v4, :cond_3

    .line 657
    .end local v0    # "dcode":I
    .end local v1    # "in_length":I
    .end local v2    # "out_length":I
    :cond_2
    :goto_2
    return v3

    :cond_3
    iget v4, p0, Lcom/jcraft/jzlib/Deflate;->last_lit:I

    iget v5, p0, Lcom/jcraft/jzlib/Deflate;->lit_bufsize:I

    add-int/lit8 v5, v5, -0x1

    if-eq v4, v5, :cond_2

    const/4 v3, 0x0

    goto :goto_2
.end method

.method private bi_flush()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 726
    iget v0, p0, Lcom/jcraft/jzlib/Deflate;->bi_valid:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    .line 727
    iget-short v0, p0, Lcom/jcraft/jzlib/Deflate;->bi_buf:S

    invoke-direct {p0, v0}, Lcom/jcraft/jzlib/Deflate;->put_short(I)V

    .line 728
    iput-short v2, p0, Lcom/jcraft/jzlib/Deflate;->bi_buf:S

    .line 729
    iput v2, p0, Lcom/jcraft/jzlib/Deflate;->bi_valid:I

    .line 736
    :cond_0
    :goto_0
    return-void

    .line 731
    :cond_1
    iget v0, p0, Lcom/jcraft/jzlib/Deflate;->bi_valid:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 732
    iget-short v0, p0, Lcom/jcraft/jzlib/Deflate;->bi_buf:S

    int-to-byte v0, v0

    invoke-direct {p0, v0}, Lcom/jcraft/jzlib/Deflate;->put_byte(B)V

    .line 733
    iget-short v0, p0, Lcom/jcraft/jzlib/Deflate;->bi_buf:S

    ushr-int/lit8 v0, v0, 0x8

    int-to-short v0, v0

    iput-short v0, p0, Lcom/jcraft/jzlib/Deflate;->bi_buf:S

    .line 734
    iget v0, p0, Lcom/jcraft/jzlib/Deflate;->bi_valid:I

    add-int/lit8 v0, v0, -0x8

    iput v0, p0, Lcom/jcraft/jzlib/Deflate;->bi_valid:I

    goto :goto_0
.end method

.method private bi_windup()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 740
    iget v0, p0, Lcom/jcraft/jzlib/Deflate;->bi_valid:I

    const/16 v1, 0x8

    if-le v0, v1, :cond_1

    .line 741
    iget-short v0, p0, Lcom/jcraft/jzlib/Deflate;->bi_buf:S

    invoke-direct {p0, v0}, Lcom/jcraft/jzlib/Deflate;->put_short(I)V

    .line 745
    :cond_0
    :goto_0
    iput-short v2, p0, Lcom/jcraft/jzlib/Deflate;->bi_buf:S

    .line 746
    iput v2, p0, Lcom/jcraft/jzlib/Deflate;->bi_valid:I

    .line 747
    return-void

    .line 742
    :cond_1
    iget v0, p0, Lcom/jcraft/jzlib/Deflate;->bi_valid:I

    if-lez v0, :cond_0

    .line 743
    iget-short v0, p0, Lcom/jcraft/jzlib/Deflate;->bi_buf:S

    int-to-byte v0, v0

    invoke-direct {p0, v0}, Lcom/jcraft/jzlib/Deflate;->put_byte(B)V

    goto :goto_0
.end method

.method private compress_block([S[S)V
    .locals 9
    .param p1, "ltree"    # [S
    .param p2, "dtree"    # [S

    .prologue
    .line 667
    const/4 v4, 0x0

    .line 671
    .local v4, "lx":I
    iget v5, p0, Lcom/jcraft/jzlib/Deflate;->last_lit:I

    if-eqz v5, :cond_2

    .line 673
    :cond_0
    iget-object v5, p0, Lcom/jcraft/jzlib/Deflate;->pending_buf:[B

    iget v6, p0, Lcom/jcraft/jzlib/Deflate;->d_buf:I

    mul-int/lit8 v7, v4, 0x2

    add-int/2addr v6, v7

    aget-byte v5, v5, v6

    shl-int/lit8 v5, v5, 0x8

    const v6, 0xff00

    and-int/2addr v5, v6

    iget-object v6, p0, Lcom/jcraft/jzlib/Deflate;->pending_buf:[B

    iget v7, p0, Lcom/jcraft/jzlib/Deflate;->d_buf:I

    mul-int/lit8 v8, v4, 0x2

    add-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x1

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    or-int v1, v5, v6

    .line 675
    .local v1, "dist":I
    iget-object v5, p0, Lcom/jcraft/jzlib/Deflate;->pending_buf:[B

    iget v6, p0, Lcom/jcraft/jzlib/Deflate;->l_buf:I

    add-int/2addr v6, v4

    aget-byte v5, v5, v6

    and-int/lit16 v3, v5, 0xff

    .local v3, "lc":I
    add-int/lit8 v4, v4, 0x1

    .line 677
    if-nez v1, :cond_3

    .line 678
    invoke-direct {p0, v3, p1}, Lcom/jcraft/jzlib/Deflate;->send_code(I[S)V

    .line 703
    :cond_1
    :goto_0
    iget v5, p0, Lcom/jcraft/jzlib/Deflate;->last_lit:I

    if-lt v4, v5, :cond_0

    .line 706
    .end local v1    # "dist":I
    .end local v3    # "lc":I
    :cond_2
    const/16 v5, 0x100

    invoke-direct {p0, v5, p1}, Lcom/jcraft/jzlib/Deflate;->send_code(I[S)V

    .line 707
    const/16 v5, 0x201

    aget-short v5, p1, v5

    iput v5, p0, Lcom/jcraft/jzlib/Deflate;->last_eob_len:I

    .line 708
    return-void

    .line 682
    .restart local v1    # "dist":I
    .restart local v3    # "lc":I
    :cond_3
    sget-object v5, Lcom/jcraft/jzlib/Tree;->_length_code:[B

    aget-byte v0, v5, v3

    .line 684
    .local v0, "code":I
    add-int/lit16 v5, v0, 0x100

    add-int/lit8 v5, v5, 0x1

    invoke-direct {p0, v5, p1}, Lcom/jcraft/jzlib/Deflate;->send_code(I[S)V

    .line 685
    sget-object v5, Lcom/jcraft/jzlib/Tree;->extra_lbits:[I

    aget v2, v5, v0

    .line 686
    .local v2, "extra":I
    if-eqz v2, :cond_4

    .line 687
    sget-object v5, Lcom/jcraft/jzlib/Tree;->base_length:[I

    aget v5, v5, v0

    sub-int/2addr v3, v5

    .line 688
    invoke-direct {p0, v3, v2}, Lcom/jcraft/jzlib/Deflate;->send_bits(II)V

    .line 690
    :cond_4
    add-int/lit8 v1, v1, -0x1

    .line 691
    invoke-static {v1}, Lcom/jcraft/jzlib/Tree;->d_code(I)I

    move-result v0

    .line 693
    invoke-direct {p0, v0, p2}, Lcom/jcraft/jzlib/Deflate;->send_code(I[S)V

    .line 694
    sget-object v5, Lcom/jcraft/jzlib/Tree;->extra_dbits:[I

    aget v2, v5, v0

    .line 695
    if-eqz v2, :cond_1

    .line 696
    sget-object v5, Lcom/jcraft/jzlib/Tree;->base_dist:[I

    aget v5, v5, v0

    sub-int/2addr v1, v5

    .line 697
    invoke-direct {p0, v1, v2}, Lcom/jcraft/jzlib/Deflate;->send_bits(II)V

    goto :goto_0
.end method

.method private fill_window()V
    .locals 13

    .prologue
    const v12, 0xffff

    const/4 v5, 0x0

    .line 924
    :cond_0
    iget v4, p0, Lcom/jcraft/jzlib/Deflate;->window_size:I

    iget v6, p0, Lcom/jcraft/jzlib/Deflate;->lookahead:I

    sub-int/2addr v4, v6

    iget v6, p0, Lcom/jcraft/jzlib/Deflate;->strstart:I

    sub-int v1, v4, v6

    .line 927
    .local v1, "more":I
    if-nez v1, :cond_3

    iget v4, p0, Lcom/jcraft/jzlib/Deflate;->strstart:I

    if-nez v4, :cond_3

    iget v4, p0, Lcom/jcraft/jzlib/Deflate;->lookahead:I

    if-nez v4, :cond_3

    .line 928
    iget v1, p0, Lcom/jcraft/jzlib/Deflate;->w_size:I

    .line 970
    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/jcraft/jzlib/Deflate;->strm:Lcom/jcraft/jzlib/ZStream;

    iget v4, v4, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    if-nez v4, :cond_9

    .line 995
    :cond_2
    :goto_1
    return-void

    .line 930
    :cond_3
    const/4 v4, -0x1

    if-ne v1, v4, :cond_4

    .line 933
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 938
    :cond_4
    iget v4, p0, Lcom/jcraft/jzlib/Deflate;->strstart:I

    iget v6, p0, Lcom/jcraft/jzlib/Deflate;->w_size:I

    iget v7, p0, Lcom/jcraft/jzlib/Deflate;->w_size:I

    add-int/2addr v6, v7

    add-int/lit16 v6, v6, -0x106

    if-lt v4, v6, :cond_1

    .line 939
    iget-object v4, p0, Lcom/jcraft/jzlib/Deflate;->window:[B

    iget v6, p0, Lcom/jcraft/jzlib/Deflate;->w_size:I

    iget-object v7, p0, Lcom/jcraft/jzlib/Deflate;->window:[B

    iget v8, p0, Lcom/jcraft/jzlib/Deflate;->w_size:I

    invoke-static {v4, v6, v7, v5, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 940
    iget v4, p0, Lcom/jcraft/jzlib/Deflate;->match_start:I

    iget v6, p0, Lcom/jcraft/jzlib/Deflate;->w_size:I

    sub-int/2addr v4, v6

    iput v4, p0, Lcom/jcraft/jzlib/Deflate;->match_start:I

    .line 941
    iget v4, p0, Lcom/jcraft/jzlib/Deflate;->strstart:I

    iget v6, p0, Lcom/jcraft/jzlib/Deflate;->w_size:I

    sub-int/2addr v4, v6

    iput v4, p0, Lcom/jcraft/jzlib/Deflate;->strstart:I

    .line 942
    iget v4, p0, Lcom/jcraft/jzlib/Deflate;->block_start:I

    iget v6, p0, Lcom/jcraft/jzlib/Deflate;->w_size:I

    sub-int/2addr v4, v6

    iput v4, p0, Lcom/jcraft/jzlib/Deflate;->block_start:I

    .line 950
    iget v2, p0, Lcom/jcraft/jzlib/Deflate;->hash_size:I

    .line 951
    .local v2, "n":I
    move v3, v2

    .line 953
    .local v3, "p":I
    :cond_5
    iget-object v4, p0, Lcom/jcraft/jzlib/Deflate;->head:[S

    add-int/lit8 v3, v3, -0x1

    aget-short v4, v4, v3

    and-int v0, v4, v12

    .line 954
    .local v0, "m":I
    iget-object v6, p0, Lcom/jcraft/jzlib/Deflate;->head:[S

    iget v4, p0, Lcom/jcraft/jzlib/Deflate;->w_size:I

    if-lt v0, v4, :cond_7

    iget v4, p0, Lcom/jcraft/jzlib/Deflate;->w_size:I

    sub-int v4, v0, v4

    int-to-short v4, v4

    :goto_2
    aput-short v4, v6, v3

    .line 956
    add-int/lit8 v2, v2, -0x1

    if-nez v2, :cond_5

    .line 958
    iget v2, p0, Lcom/jcraft/jzlib/Deflate;->w_size:I

    .line 959
    move v3, v2

    .line 961
    :cond_6
    iget-object v4, p0, Lcom/jcraft/jzlib/Deflate;->prev:[S

    add-int/lit8 v3, v3, -0x1

    aget-short v4, v4, v3

    and-int v0, v4, v12

    .line 962
    iget-object v6, p0, Lcom/jcraft/jzlib/Deflate;->prev:[S

    iget v4, p0, Lcom/jcraft/jzlib/Deflate;->w_size:I

    if-lt v0, v4, :cond_8

    iget v4, p0, Lcom/jcraft/jzlib/Deflate;->w_size:I

    sub-int v4, v0, v4

    int-to-short v4, v4

    :goto_3
    aput-short v4, v6, v3

    .line 966
    add-int/lit8 v2, v2, -0x1

    if-nez v2, :cond_6

    .line 967
    iget v4, p0, Lcom/jcraft/jzlib/Deflate;->w_size:I

    add-int/2addr v1, v4

    goto :goto_0

    :cond_7
    move v4, v5

    .line 954
    goto :goto_2

    :cond_8
    move v4, v5

    .line 962
    goto :goto_3

    .line 983
    .end local v0    # "m":I
    .end local v2    # "n":I
    .end local v3    # "p":I
    :cond_9
    iget-object v4, p0, Lcom/jcraft/jzlib/Deflate;->strm:Lcom/jcraft/jzlib/ZStream;

    iget-object v6, p0, Lcom/jcraft/jzlib/Deflate;->window:[B

    iget v7, p0, Lcom/jcraft/jzlib/Deflate;->strstart:I

    iget v8, p0, Lcom/jcraft/jzlib/Deflate;->lookahead:I

    add-int/2addr v7, v8

    iget v2, v4, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    if-le v2, v1, :cond_a

    move v2, v1

    :cond_a
    if-nez v2, :cond_c

    move v2, v5

    .line 984
    .restart local v2    # "n":I
    :goto_4
    iget v4, p0, Lcom/jcraft/jzlib/Deflate;->lookahead:I

    add-int/2addr v4, v2

    iput v4, p0, Lcom/jcraft/jzlib/Deflate;->lookahead:I

    .line 987
    iget v4, p0, Lcom/jcraft/jzlib/Deflate;->lookahead:I

    const/4 v6, 0x3

    if-lt v4, v6, :cond_b

    .line 988
    iget-object v4, p0, Lcom/jcraft/jzlib/Deflate;->window:[B

    iget v6, p0, Lcom/jcraft/jzlib/Deflate;->strstart:I

    aget-byte v4, v4, v6

    and-int/lit16 v4, v4, 0xff

    iput v4, p0, Lcom/jcraft/jzlib/Deflate;->ins_h:I

    .line 989
    iget v4, p0, Lcom/jcraft/jzlib/Deflate;->ins_h:I

    iget v6, p0, Lcom/jcraft/jzlib/Deflate;->hash_shift:I

    shl-int/2addr v4, v6

    iget-object v6, p0, Lcom/jcraft/jzlib/Deflate;->window:[B

    iget v7, p0, Lcom/jcraft/jzlib/Deflate;->strstart:I

    add-int/lit8 v7, v7, 0x1

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    xor-int/2addr v4, v6

    iget v6, p0, Lcom/jcraft/jzlib/Deflate;->hash_mask:I

    and-int/2addr v4, v6

    iput v4, p0, Lcom/jcraft/jzlib/Deflate;->ins_h:I

    .line 994
    :cond_b
    iget v4, p0, Lcom/jcraft/jzlib/Deflate;->lookahead:I

    const/16 v6, 0x106

    if-ge v4, v6, :cond_2

    iget-object v4, p0, Lcom/jcraft/jzlib/Deflate;->strm:Lcom/jcraft/jzlib/ZStream;

    iget v4, v4, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    if-nez v4, :cond_0

    goto/16 :goto_1

    .line 983
    .end local v2    # "n":I
    :cond_c
    iget v8, v4, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    sub-int/2addr v8, v2

    iput v8, v4, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    iget-object v8, v4, Lcom/jcraft/jzlib/ZStream;->dstate:Lcom/jcraft/jzlib/Deflate;

    iget v8, v8, Lcom/jcraft/jzlib/Deflate;->noheader:I

    if-nez v8, :cond_d

    iget-object v8, v4, Lcom/jcraft/jzlib/ZStream;->_adler:Lcom/jcraft/jzlib/Adler32;

    iget-wide v8, v4, Lcom/jcraft/jzlib/ZStream;->adler:J

    iget-object v10, v4, Lcom/jcraft/jzlib/ZStream;->next_in:[B

    iget v11, v4, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    invoke-static {v8, v9, v10, v11, v2}, Lcom/jcraft/jzlib/Adler32;->adler32(J[BII)J

    move-result-wide v8

    iput-wide v8, v4, Lcom/jcraft/jzlib/ZStream;->adler:J

    :cond_d
    iget-object v8, v4, Lcom/jcraft/jzlib/ZStream;->next_in:[B

    iget v9, v4, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    invoke-static {v8, v9, v6, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v6, v4, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    add-int/2addr v6, v2

    iput v6, v4, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    iget-wide v6, v4, Lcom/jcraft/jzlib/ZStream;->total_in:J

    int-to-long v8, v2

    add-long/2addr v6, v8

    iput-wide v6, v4, Lcom/jcraft/jzlib/ZStream;->total_in:J

    goto :goto_4
.end method

.method private flush_block_only(Z)V
    .locals 12
    .param p1, "eof"    # Z

    .prologue
    const/4 v11, 0x5

    const/4 v1, -0x1

    const/4 v4, 0x1

    const/4 v10, 0x3

    const/4 v3, 0x0

    .line 772
    iget v0, p0, Lcom/jcraft/jzlib/Deflate;->block_start:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/jcraft/jzlib/Deflate;->block_start:I

    :goto_0
    iget v2, p0, Lcom/jcraft/jzlib/Deflate;->strstart:I

    iget v5, p0, Lcom/jcraft/jzlib/Deflate;->block_start:I

    sub-int v7, v2, v5

    iget v2, p0, Lcom/jcraft/jzlib/Deflate;->level:I

    if-lez v2, :cond_8

    iget-byte v2, p0, Lcom/jcraft/jzlib/Deflate;->data_type:B

    const/4 v5, 0x2

    if-ne v2, v5, :cond_3

    move v2, v3

    move v5, v3

    :goto_1
    const/4 v6, 0x7

    if-ge v5, v6, :cond_e

    iget-object v6, p0, Lcom/jcraft/jzlib/Deflate;->dyn_ltree:[S

    mul-int/lit8 v8, v5, 0x2

    aget-short v6, v6, v8

    add-int/2addr v2, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    move v0, v1

    goto :goto_0

    :goto_2
    const/16 v8, 0x80

    if-ge v5, v8, :cond_1

    iget-object v8, p0, Lcom/jcraft/jzlib/Deflate;->dyn_ltree:[S

    mul-int/lit8 v9, v5, 0x2

    aget-short v8, v8, v9

    add-int/2addr v6, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_1
    :goto_3
    const/16 v8, 0x100

    if-ge v5, v8, :cond_2

    iget-object v8, p0, Lcom/jcraft/jzlib/Deflate;->dyn_ltree:[S

    mul-int/lit8 v9, v5, 0x2

    aget-short v8, v8, v9

    add-int/2addr v2, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_2
    ushr-int/lit8 v5, v6, 0x2

    if-le v2, v5, :cond_4

    move v2, v3

    :goto_4
    int-to-byte v2, v2

    iput-byte v2, p0, Lcom/jcraft/jzlib/Deflate;->data_type:B

    :cond_3
    iget-object v2, p0, Lcom/jcraft/jzlib/Deflate;->l_desc:Lcom/jcraft/jzlib/Tree;

    invoke-virtual {v2, p0}, Lcom/jcraft/jzlib/Tree;->build_tree(Lcom/jcraft/jzlib/Deflate;)V

    iget-object v2, p0, Lcom/jcraft/jzlib/Deflate;->d_desc:Lcom/jcraft/jzlib/Tree;

    invoke-virtual {v2, p0}, Lcom/jcraft/jzlib/Tree;->build_tree(Lcom/jcraft/jzlib/Deflate;)V

    iget-object v2, p0, Lcom/jcraft/jzlib/Deflate;->dyn_ltree:[S

    iget-object v5, p0, Lcom/jcraft/jzlib/Deflate;->l_desc:Lcom/jcraft/jzlib/Tree;

    iget v5, v5, Lcom/jcraft/jzlib/Tree;->max_code:I

    invoke-direct {p0, v2, v5}, Lcom/jcraft/jzlib/Deflate;->scan_tree([SI)V

    iget-object v2, p0, Lcom/jcraft/jzlib/Deflate;->dyn_dtree:[S

    iget-object v5, p0, Lcom/jcraft/jzlib/Deflate;->d_desc:Lcom/jcraft/jzlib/Tree;

    iget v5, v5, Lcom/jcraft/jzlib/Tree;->max_code:I

    invoke-direct {p0, v2, v5}, Lcom/jcraft/jzlib/Deflate;->scan_tree([SI)V

    iget-object v2, p0, Lcom/jcraft/jzlib/Deflate;->bl_desc:Lcom/jcraft/jzlib/Tree;

    invoke-virtual {v2, p0}, Lcom/jcraft/jzlib/Tree;->build_tree(Lcom/jcraft/jzlib/Deflate;)V

    const/16 v2, 0x12

    :goto_5
    if-lt v2, v10, :cond_5

    iget-object v5, p0, Lcom/jcraft/jzlib/Deflate;->bl_tree:[S

    sget-object v6, Lcom/jcraft/jzlib/Tree;->bl_order:[B

    aget-byte v6, v6, v2

    mul-int/lit8 v6, v6, 0x2

    add-int/lit8 v6, v6, 0x1

    aget-short v5, v5, v6

    if-nez v5, :cond_5

    add-int/lit8 v2, v2, -0x1

    goto :goto_5

    :cond_4
    move v2, v4

    goto :goto_4

    :cond_5
    iget v5, p0, Lcom/jcraft/jzlib/Deflate;->opt_len:I

    add-int/lit8 v6, v2, 0x1

    mul-int/lit8 v6, v6, 0x3

    add-int/lit8 v6, v6, 0x5

    add-int/lit8 v6, v6, 0x5

    add-int/lit8 v6, v6, 0x4

    add-int/2addr v5, v6

    iput v5, p0, Lcom/jcraft/jzlib/Deflate;->opt_len:I

    iget v5, p0, Lcom/jcraft/jzlib/Deflate;->opt_len:I

    add-int/lit8 v5, v5, 0x3

    add-int/lit8 v5, v5, 0x7

    ushr-int/lit8 v6, v5, 0x3

    iget v5, p0, Lcom/jcraft/jzlib/Deflate;->static_len:I

    add-int/lit8 v5, v5, 0x3

    add-int/lit8 v5, v5, 0x7

    ushr-int/lit8 v5, v5, 0x3

    if-gt v5, v6, :cond_6

    move v6, v5

    :cond_6
    :goto_6
    add-int/lit8 v8, v7, 0x4

    if-gt v8, v6, :cond_9

    if-eq v0, v1, :cond_9

    invoke-direct {p0, v0, v7, p1}, Lcom/jcraft/jzlib/Deflate;->_tr_stored_block(IIZ)V

    :goto_7
    invoke-direct {p0}, Lcom/jcraft/jzlib/Deflate;->init_block()V

    if-eqz p1, :cond_7

    invoke-direct {p0}, Lcom/jcraft/jzlib/Deflate;->bi_windup()V

    .line 775
    :cond_7
    iget v0, p0, Lcom/jcraft/jzlib/Deflate;->strstart:I

    iput v0, p0, Lcom/jcraft/jzlib/Deflate;->block_start:I

    .line 776
    iget-object v0, p0, Lcom/jcraft/jzlib/Deflate;->strm:Lcom/jcraft/jzlib/ZStream;

    invoke-virtual {v0}, Lcom/jcraft/jzlib/ZStream;->flush_pending()V

    .line 777
    return-void

    .line 772
    :cond_8
    add-int/lit8 v2, v7, 0x5

    move v5, v2

    move v6, v2

    move v2, v3

    goto :goto_6

    :cond_9
    if-ne v5, v6, :cond_b

    if-eqz p1, :cond_a

    :goto_8
    add-int/lit8 v0, v4, 0x2

    invoke-direct {p0, v0, v10}, Lcom/jcraft/jzlib/Deflate;->send_bits(II)V

    sget-object v0, Lcom/jcraft/jzlib/StaticTree;->static_ltree:[S

    sget-object v1, Lcom/jcraft/jzlib/StaticTree;->static_dtree:[S

    invoke-direct {p0, v0, v1}, Lcom/jcraft/jzlib/Deflate;->compress_block([S[S)V

    goto :goto_7

    :cond_a
    move v4, v3

    goto :goto_8

    :cond_b
    if-eqz p1, :cond_c

    :goto_9
    add-int/lit8 v0, v4, 0x4

    invoke-direct {p0, v0, v10}, Lcom/jcraft/jzlib/Deflate;->send_bits(II)V

    iget-object v0, p0, Lcom/jcraft/jzlib/Deflate;->l_desc:Lcom/jcraft/jzlib/Tree;

    iget v0, v0, Lcom/jcraft/jzlib/Tree;->max_code:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/jcraft/jzlib/Deflate;->d_desc:Lcom/jcraft/jzlib/Tree;

    iget v1, v1, Lcom/jcraft/jzlib/Tree;->max_code:I

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    add-int/lit16 v4, v0, -0x101

    invoke-direct {p0, v4, v11}, Lcom/jcraft/jzlib/Deflate;->send_bits(II)V

    add-int/lit8 v4, v1, -0x1

    invoke-direct {p0, v4, v11}, Lcom/jcraft/jzlib/Deflate;->send_bits(II)V

    add-int/lit8 v4, v2, -0x4

    const/4 v5, 0x4

    invoke-direct {p0, v4, v5}, Lcom/jcraft/jzlib/Deflate;->send_bits(II)V

    :goto_a
    if-ge v3, v2, :cond_d

    iget-object v4, p0, Lcom/jcraft/jzlib/Deflate;->bl_tree:[S

    sget-object v5, Lcom/jcraft/jzlib/Tree;->bl_order:[B

    aget-byte v5, v5, v3

    mul-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, 0x1

    aget-short v4, v4, v5

    invoke-direct {p0, v4, v10}, Lcom/jcraft/jzlib/Deflate;->send_bits(II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_c
    move v4, v3

    goto :goto_9

    :cond_d
    iget-object v2, p0, Lcom/jcraft/jzlib/Deflate;->dyn_ltree:[S

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v2, v0}, Lcom/jcraft/jzlib/Deflate;->send_tree([SI)V

    iget-object v0, p0, Lcom/jcraft/jzlib/Deflate;->dyn_dtree:[S

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/jcraft/jzlib/Deflate;->send_tree([SI)V

    iget-object v0, p0, Lcom/jcraft/jzlib/Deflate;->dyn_ltree:[S

    iget-object v1, p0, Lcom/jcraft/jzlib/Deflate;->dyn_dtree:[S

    invoke-direct {p0, v0, v1}, Lcom/jcraft/jzlib/Deflate;->compress_block([S[S)V

    goto :goto_7

    :cond_e
    move v6, v3

    goto/16 :goto_2
.end method

.method private init_block()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 370
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x11e

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/jcraft/jzlib/Deflate;->dyn_ltree:[S

    mul-int/lit8 v2, v0, 0x2

    aput-short v4, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 371
    :cond_0
    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0x1e

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/jcraft/jzlib/Deflate;->dyn_dtree:[S

    mul-int/lit8 v2, v0, 0x2

    aput-short v4, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 372
    :cond_1
    const/4 v0, 0x0

    :goto_2
    const/16 v1, 0x13

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/jcraft/jzlib/Deflate;->bl_tree:[S

    mul-int/lit8 v2, v0, 0x2

    aput-short v4, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 374
    :cond_2
    iget-object v1, p0, Lcom/jcraft/jzlib/Deflate;->dyn_ltree:[S

    const/16 v2, 0x200

    const/4 v3, 0x1

    aput-short v3, v1, v2

    .line 375
    iput v4, p0, Lcom/jcraft/jzlib/Deflate;->static_len:I

    iput v4, p0, Lcom/jcraft/jzlib/Deflate;->opt_len:I

    .line 376
    iput v4, p0, Lcom/jcraft/jzlib/Deflate;->matches:I

    iput v4, p0, Lcom/jcraft/jzlib/Deflate;->last_lit:I

    .line 377
    return-void
.end method

.method private longest_match(I)I
    .locals 14
    .param p1, "cur_match"    # I

    .prologue
    .line 1237
    iget v1, p0, Lcom/jcraft/jzlib/Deflate;->max_chain_length:I

    .line 1238
    .local v1, "chain_length":I
    iget v6, p0, Lcom/jcraft/jzlib/Deflate;->strstart:I

    .line 1241
    .local v6, "scan":I
    iget v0, p0, Lcom/jcraft/jzlib/Deflate;->prev_length:I

    .line 1242
    .local v0, "best_len":I
    iget v11, p0, Lcom/jcraft/jzlib/Deflate;->strstart:I

    iget v12, p0, Lcom/jcraft/jzlib/Deflate;->w_size:I

    add-int/lit16 v12, v12, -0x106

    if-le v11, v12, :cond_6

    iget v11, p0, Lcom/jcraft/jzlib/Deflate;->strstart:I

    iget v12, p0, Lcom/jcraft/jzlib/Deflate;->w_size:I

    add-int/lit16 v12, v12, -0x106

    sub-int v3, v11, v12

    .line 1244
    .local v3, "limit":I
    :goto_0
    iget v5, p0, Lcom/jcraft/jzlib/Deflate;->nice_match:I

    .line 1249
    .local v5, "nice_match":I
    iget v10, p0, Lcom/jcraft/jzlib/Deflate;->w_mask:I

    .line 1251
    .local v10, "wmask":I
    iget v11, p0, Lcom/jcraft/jzlib/Deflate;->strstart:I

    add-int/lit16 v9, v11, 0x102

    .line 1252
    .local v9, "strend":I
    iget-object v11, p0, Lcom/jcraft/jzlib/Deflate;->window:[B

    add-int v12, v6, v0

    add-int/lit8 v12, v12, -0x1

    aget-byte v8, v11, v12

    .line 1253
    .local v8, "scan_end1":B
    iget-object v11, p0, Lcom/jcraft/jzlib/Deflate;->window:[B

    add-int v12, v6, v0

    aget-byte v7, v11, v12

    .line 1259
    .local v7, "scan_end":B
    iget v11, p0, Lcom/jcraft/jzlib/Deflate;->prev_length:I

    iget v12, p0, Lcom/jcraft/jzlib/Deflate;->good_match:I

    if-lt v11, v12, :cond_0

    .line 1260
    shr-int/lit8 v1, v1, 0x2

    .line 1265
    :cond_0
    iget v11, p0, Lcom/jcraft/jzlib/Deflate;->lookahead:I

    if-le v5, v11, :cond_1

    iget v5, p0, Lcom/jcraft/jzlib/Deflate;->lookahead:I

    .line 1268
    :cond_1
    move v4, p1

    .line 1272
    .local v4, "match":I
    iget-object v11, p0, Lcom/jcraft/jzlib/Deflate;->window:[B

    add-int v12, v4, v0

    aget-byte v11, v11, v12

    if-ne v11, v7, :cond_4

    iget-object v11, p0, Lcom/jcraft/jzlib/Deflate;->window:[B

    add-int v12, v4, v0

    add-int/lit8 v12, v12, -0x1

    aget-byte v11, v11, v12

    if-ne v11, v8, :cond_4

    iget-object v11, p0, Lcom/jcraft/jzlib/Deflate;->window:[B

    aget-byte v11, v11, v4

    iget-object v12, p0, Lcom/jcraft/jzlib/Deflate;->window:[B

    aget-byte v12, v12, v6

    if-ne v11, v12, :cond_4

    iget-object v11, p0, Lcom/jcraft/jzlib/Deflate;->window:[B

    add-int/lit8 v4, v4, 0x1

    aget-byte v11, v11, v4

    iget-object v12, p0, Lcom/jcraft/jzlib/Deflate;->window:[B

    add-int/lit8 v13, v6, 0x1

    aget-byte v12, v12, v13

    if-ne v11, v12, :cond_4

    .line 1275
    add-int/lit8 v6, v6, 0x2

    add-int/lit8 v4, v4, 0x1

    .line 1295
    :cond_2
    iget-object v11, p0, Lcom/jcraft/jzlib/Deflate;->window:[B

    add-int/lit8 v6, v6, 0x1

    aget-byte v11, v11, v6

    iget-object v12, p0, Lcom/jcraft/jzlib/Deflate;->window:[B

    add-int/lit8 v4, v4, 0x1

    aget-byte v12, v12, v4

    if-ne v11, v12, :cond_3

    iget-object v11, p0, Lcom/jcraft/jzlib/Deflate;->window:[B

    add-int/lit8 v6, v6, 0x1

    aget-byte v11, v11, v6

    iget-object v12, p0, Lcom/jcraft/jzlib/Deflate;->window:[B

    add-int/lit8 v4, v4, 0x1

    aget-byte v12, v12, v4

    if-ne v11, v12, :cond_3

    iget-object v11, p0, Lcom/jcraft/jzlib/Deflate;->window:[B

    add-int/lit8 v6, v6, 0x1

    aget-byte v11, v11, v6

    iget-object v12, p0, Lcom/jcraft/jzlib/Deflate;->window:[B

    add-int/lit8 v4, v4, 0x1

    aget-byte v12, v12, v4

    if-ne v11, v12, :cond_3

    iget-object v11, p0, Lcom/jcraft/jzlib/Deflate;->window:[B

    add-int/lit8 v6, v6, 0x1

    aget-byte v11, v11, v6

    iget-object v12, p0, Lcom/jcraft/jzlib/Deflate;->window:[B

    add-int/lit8 v4, v4, 0x1

    aget-byte v12, v12, v4

    if-ne v11, v12, :cond_3

    iget-object v11, p0, Lcom/jcraft/jzlib/Deflate;->window:[B

    add-int/lit8 v6, v6, 0x1

    aget-byte v11, v11, v6

    iget-object v12, p0, Lcom/jcraft/jzlib/Deflate;->window:[B

    add-int/lit8 v4, v4, 0x1

    aget-byte v12, v12, v4

    if-ne v11, v12, :cond_3

    iget-object v11, p0, Lcom/jcraft/jzlib/Deflate;->window:[B

    add-int/lit8 v6, v6, 0x1

    aget-byte v11, v11, v6

    iget-object v12, p0, Lcom/jcraft/jzlib/Deflate;->window:[B

    add-int/lit8 v4, v4, 0x1

    aget-byte v12, v12, v4

    if-ne v11, v12, :cond_3

    iget-object v11, p0, Lcom/jcraft/jzlib/Deflate;->window:[B

    add-int/lit8 v6, v6, 0x1

    aget-byte v11, v11, v6

    iget-object v12, p0, Lcom/jcraft/jzlib/Deflate;->window:[B

    add-int/lit8 v4, v4, 0x1

    aget-byte v12, v12, v4

    if-ne v11, v12, :cond_3

    iget-object v11, p0, Lcom/jcraft/jzlib/Deflate;->window:[B

    add-int/lit8 v6, v6, 0x1

    aget-byte v11, v11, v6

    iget-object v12, p0, Lcom/jcraft/jzlib/Deflate;->window:[B

    add-int/lit8 v4, v4, 0x1

    aget-byte v12, v12, v4

    if-ne v11, v12, :cond_3

    if-lt v6, v9, :cond_2

    .line 1297
    :cond_3
    sub-int v11, v9, v6

    rsub-int v2, v11, 0x102

    .line 1298
    .local v2, "len":I
    add-int/lit16 v6, v9, -0x102

    .line 1300
    if-le v2, v0, :cond_4

    .line 1301
    iput p1, p0, Lcom/jcraft/jzlib/Deflate;->match_start:I

    .line 1302
    move v0, v2

    .line 1303
    if-ge v2, v5, :cond_5

    .line 1304
    iget-object v11, p0, Lcom/jcraft/jzlib/Deflate;->window:[B

    add-int v12, v6, v0

    add-int/lit8 v12, v12, -0x1

    aget-byte v8, v11, v12

    .line 1305
    iget-object v11, p0, Lcom/jcraft/jzlib/Deflate;->window:[B

    add-int v12, v6, v0

    aget-byte v7, v11, v12

    .line 1309
    .end local v2    # "len":I
    :cond_4
    iget-object v11, p0, Lcom/jcraft/jzlib/Deflate;->prev:[S

    and-int v12, p1, v10

    aget-short v11, v11, v12

    const v12, 0xffff

    and-int p1, v11, v12

    if-le p1, v3, :cond_5

    add-int/lit8 v1, v1, -0x1

    if-nez v1, :cond_1

    .line 1311
    :cond_5
    iget v11, p0, Lcom/jcraft/jzlib/Deflate;->lookahead:I

    if-gt v0, v11, :cond_7

    .line 1312
    .end local v0    # "best_len":I
    :goto_1
    return v0

    .line 1242
    .end local v3    # "limit":I
    .end local v4    # "match":I
    .end local v5    # "nice_match":I
    .end local v7    # "scan_end":B
    .end local v8    # "scan_end1":B
    .end local v9    # "strend":I
    .end local v10    # "wmask":I
    .restart local v0    # "best_len":I
    :cond_6
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 1312
    .restart local v3    # "limit":I
    .restart local v4    # "match":I
    .restart local v5    # "nice_match":I
    .restart local v7    # "scan_end":B
    .restart local v8    # "scan_end1":B
    .restart local v9    # "strend":I
    .restart local v10    # "wmask":I
    :cond_7
    iget v0, p0, Lcom/jcraft/jzlib/Deflate;->lookahead:I

    goto :goto_1
.end method

.method private putShortMSB(I)V
    .locals 1
    .param p1, "b"    # I

    .prologue
    .line 568
    shr-int/lit8 v0, p1, 0x8

    int-to-byte v0, v0

    invoke-direct {p0, v0}, Lcom/jcraft/jzlib/Deflate;->put_byte(B)V

    .line 569
    int-to-byte v0, p1

    invoke-direct {p0, v0}, Lcom/jcraft/jzlib/Deflate;->put_byte(B)V

    .line 570
    return-void
.end method

.method private put_byte(B)V
    .locals 3
    .param p1, "c"    # B

    .prologue
    .line 561
    iget-object v0, p0, Lcom/jcraft/jzlib/Deflate;->pending_buf:[B

    iget v1, p0, Lcom/jcraft/jzlib/Deflate;->pending:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/jcraft/jzlib/Deflate;->pending:I

    aput-byte p1, v0, v1

    .line 562
    return-void
.end method

.method private put_short(I)V
    .locals 1
    .param p1, "w"    # I

    .prologue
    .line 564
    int-to-byte v0, p1

    invoke-direct {p0, v0}, Lcom/jcraft/jzlib/Deflate;->put_byte(B)V

    .line 565
    ushr-int/lit8 v0, p1, 0x8

    int-to-byte v0, v0

    invoke-direct {p0, v0}, Lcom/jcraft/jzlib/Deflate;->put_byte(B)V

    .line 566
    return-void
.end method

.method private scan_tree([SI)V
    .locals 10
    .param p1, "tree"    # [S
    .param p2, "max_code"    # I

    .prologue
    .line 418
    const/4 v6, -0x1

    .line 420
    .local v6, "prevlen":I
    const/4 v7, 0x1

    aget-short v5, p1, v7

    .line 421
    .local v5, "nextlen":I
    const/4 v0, 0x0

    .line 422
    .local v0, "count":I
    const/4 v2, 0x7

    .line 423
    .local v2, "max_count":I
    const/4 v3, 0x4

    .line 425
    .local v3, "min_count":I
    if-nez v5, :cond_0

    const/16 v2, 0x8a

    const/4 v3, 0x3

    .line 426
    :cond_0
    add-int/lit8 v7, p2, 0x1

    mul-int/lit8 v7, v7, 0x2

    add-int/lit8 v7, v7, 0x1

    const/4 v8, -0x1

    aput-short v8, p1, v7

    .line 428
    const/4 v4, 0x0

    .local v4, "n":I
    :goto_0
    if-gt v4, p2, :cond_9

    .line 429
    move v1, v5

    .local v1, "curlen":I
    add-int/lit8 v7, v4, 0x1

    mul-int/lit8 v7, v7, 0x2

    add-int/lit8 v7, v7, 0x1

    aget-short v5, p1, v7

    .line 430
    add-int/lit8 v0, v0, 0x1

    if-ge v0, v2, :cond_1

    if-eq v1, v5, :cond_2

    .line 431
    :cond_1
    if-ge v0, v3, :cond_3

    .line 434
    iget-object v7, p0, Lcom/jcraft/jzlib/Deflate;->bl_tree:[S

    mul-int/lit8 v8, v1, 0x2

    aget-short v9, v7, v8

    add-int/2addr v9, v0

    int-to-short v9, v9

    aput-short v9, v7, v8

    .line 446
    :goto_1
    const/4 v0, 0x0

    move v6, v1

    .line 447
    if-nez v5, :cond_7

    .line 448
    const/16 v2, 0x8a

    const/4 v3, 0x3

    .line 428
    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 436
    :cond_3
    if-eqz v1, :cond_5

    .line 437
    if-eq v1, v6, :cond_4

    iget-object v7, p0, Lcom/jcraft/jzlib/Deflate;->bl_tree:[S

    mul-int/lit8 v8, v1, 0x2

    aget-short v9, v7, v8

    add-int/lit8 v9, v9, 0x1

    int-to-short v9, v9

    aput-short v9, v7, v8

    .line 438
    :cond_4
    iget-object v7, p0, Lcom/jcraft/jzlib/Deflate;->bl_tree:[S

    const/16 v8, 0x20

    aget-short v9, v7, v8

    add-int/lit8 v9, v9, 0x1

    int-to-short v9, v9

    aput-short v9, v7, v8

    goto :goto_1

    .line 440
    :cond_5
    const/16 v7, 0xa

    if-gt v0, v7, :cond_6

    .line 441
    iget-object v7, p0, Lcom/jcraft/jzlib/Deflate;->bl_tree:[S

    const/16 v8, 0x22

    aget-short v9, v7, v8

    add-int/lit8 v9, v9, 0x1

    int-to-short v9, v9

    aput-short v9, v7, v8

    goto :goto_1

    .line 444
    :cond_6
    iget-object v7, p0, Lcom/jcraft/jzlib/Deflate;->bl_tree:[S

    const/16 v8, 0x24

    aget-short v9, v7, v8

    add-int/lit8 v9, v9, 0x1

    int-to-short v9, v9

    aput-short v9, v7, v8

    goto :goto_1

    .line 450
    :cond_7
    if-ne v1, v5, :cond_8

    .line 451
    const/4 v2, 0x6

    const/4 v3, 0x3

    goto :goto_2

    .line 454
    :cond_8
    const/4 v2, 0x7

    const/4 v3, 0x4

    goto :goto_2

    .line 457
    .end local v1    # "curlen":I
    :cond_9
    return-void
.end method

.method private send_bits(II)V
    .locals 3
    .param p1, "value"    # I
    .param p2, "length"    # I

    .prologue
    const v2, 0xffff

    .line 578
    iget v0, p0, Lcom/jcraft/jzlib/Deflate;->bi_valid:I

    rsub-int/lit8 v1, p2, 0x10

    if-le v0, v1, :cond_0

    .line 580
    iget-short v0, p0, Lcom/jcraft/jzlib/Deflate;->bi_buf:S

    iget v1, p0, Lcom/jcraft/jzlib/Deflate;->bi_valid:I

    shl-int v1, p1, v1

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Lcom/jcraft/jzlib/Deflate;->bi_buf:S

    .line 583
    iget-short v0, p0, Lcom/jcraft/jzlib/Deflate;->bi_buf:S

    invoke-direct {p0, v0}, Lcom/jcraft/jzlib/Deflate;->put_short(I)V

    .line 584
    iget v0, p0, Lcom/jcraft/jzlib/Deflate;->bi_valid:I

    rsub-int/lit8 v0, v0, 0x10

    ushr-int v0, p1, v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/jcraft/jzlib/Deflate;->bi_buf:S

    .line 585
    iget v0, p0, Lcom/jcraft/jzlib/Deflate;->bi_valid:I

    add-int/lit8 v1, p2, -0x10

    add-int/2addr v0, v1

    iput v0, p0, Lcom/jcraft/jzlib/Deflate;->bi_valid:I

    .line 591
    :goto_0
    return-void

    .line 588
    :cond_0
    iget-short v0, p0, Lcom/jcraft/jzlib/Deflate;->bi_buf:S

    iget v1, p0, Lcom/jcraft/jzlib/Deflate;->bi_valid:I

    shl-int v1, p1, v1

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Lcom/jcraft/jzlib/Deflate;->bi_buf:S

    .line 589
    iget v0, p0, Lcom/jcraft/jzlib/Deflate;->bi_valid:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/jcraft/jzlib/Deflate;->bi_valid:I

    goto :goto_0
.end method

.method private send_code(I[S)V
    .locals 4
    .param p1, "c"    # I
    .param p2, "tree"    # [S

    .prologue
    const v3, 0xffff

    .line 573
    mul-int/lit8 v0, p1, 0x2

    .line 574
    .local v0, "c2":I
    aget-short v1, p2, v0

    and-int/2addr v1, v3

    add-int/lit8 v2, v0, 0x1

    aget-short v2, p2, v2

    and-int/2addr v2, v3

    invoke-direct {p0, v1, v2}, Lcom/jcraft/jzlib/Deflate;->send_bits(II)V

    .line 575
    return-void
.end method

.method private send_tree([SI)V
    .locals 9
    .param p1, "tree"    # [S
    .param p2, "max_code"    # I

    .prologue
    .line 508
    const/4 v6, -0x1

    .line 510
    .local v6, "prevlen":I
    const/4 v7, 0x1

    aget-short v5, p1, v7

    .line 511
    .local v5, "nextlen":I
    const/4 v0, 0x0

    .line 512
    .local v0, "count":I
    const/4 v2, 0x7

    .line 513
    .local v2, "max_count":I
    const/4 v3, 0x4

    .line 515
    .local v3, "min_count":I
    if-nez v5, :cond_0

    const/16 v2, 0x8a

    const/4 v3, 0x3

    .line 517
    :cond_0
    const/4 v4, 0x0

    .local v4, "n":I
    :goto_0
    if-gt v4, p2, :cond_a

    .line 518
    move v1, v5

    .local v1, "curlen":I
    add-int/lit8 v7, v4, 0x1

    mul-int/lit8 v7, v7, 0x2

    add-int/lit8 v7, v7, 0x1

    aget-short v5, p1, v7

    .line 519
    add-int/lit8 v0, v0, 0x1

    if-ge v0, v2, :cond_1

    if-eq v1, v5, :cond_3

    .line 520
    :cond_1
    if-ge v0, v3, :cond_4

    .line 523
    :cond_2
    iget-object v7, p0, Lcom/jcraft/jzlib/Deflate;->bl_tree:[S

    invoke-direct {p0, v1, v7}, Lcom/jcraft/jzlib/Deflate;->send_code(I[S)V

    add-int/lit8 v0, v0, -0x1

    if-nez v0, :cond_2

    .line 540
    :goto_1
    const/4 v0, 0x0

    move v6, v1

    .line 541
    if-nez v5, :cond_8

    .line 542
    const/16 v2, 0x8a

    const/4 v3, 0x3

    .line 517
    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 525
    :cond_4
    if-eqz v1, :cond_6

    .line 526
    if-eq v1, v6, :cond_5

    .line 527
    iget-object v7, p0, Lcom/jcraft/jzlib/Deflate;->bl_tree:[S

    invoke-direct {p0, v1, v7}, Lcom/jcraft/jzlib/Deflate;->send_code(I[S)V

    add-int/lit8 v0, v0, -0x1

    .line 529
    :cond_5
    const/16 v7, 0x10

    iget-object v8, p0, Lcom/jcraft/jzlib/Deflate;->bl_tree:[S

    invoke-direct {p0, v7, v8}, Lcom/jcraft/jzlib/Deflate;->send_code(I[S)V

    .line 530
    add-int/lit8 v7, v0, -0x3

    const/4 v8, 0x2

    invoke-direct {p0, v7, v8}, Lcom/jcraft/jzlib/Deflate;->send_bits(II)V

    goto :goto_1

    .line 532
    :cond_6
    const/16 v7, 0xa

    if-gt v0, v7, :cond_7

    .line 533
    const/16 v7, 0x11

    iget-object v8, p0, Lcom/jcraft/jzlib/Deflate;->bl_tree:[S

    invoke-direct {p0, v7, v8}, Lcom/jcraft/jzlib/Deflate;->send_code(I[S)V

    .line 534
    add-int/lit8 v7, v0, -0x3

    const/4 v8, 0x3

    invoke-direct {p0, v7, v8}, Lcom/jcraft/jzlib/Deflate;->send_bits(II)V

    goto :goto_1

    .line 537
    :cond_7
    const/16 v7, 0x12

    iget-object v8, p0, Lcom/jcraft/jzlib/Deflate;->bl_tree:[S

    invoke-direct {p0, v7, v8}, Lcom/jcraft/jzlib/Deflate;->send_code(I[S)V

    .line 538
    add-int/lit8 v7, v0, -0xb

    const/4 v8, 0x7

    invoke-direct {p0, v7, v8}, Lcom/jcraft/jzlib/Deflate;->send_bits(II)V

    goto :goto_1

    .line 544
    :cond_8
    if-ne v1, v5, :cond_9

    .line 545
    const/4 v2, 0x6

    const/4 v3, 0x3

    goto :goto_2

    .line 548
    :cond_9
    const/4 v2, 0x7

    const/4 v3, 0x4

    goto :goto_2

    .line 551
    .end local v1    # "curlen":I
    :cond_a
    return-void
.end method

.method private static smaller([SII[B)Z
    .locals 4
    .param p0, "tree"    # [S
    .param p1, "n"    # I
    .param p2, "m"    # I
    .param p3, "depth"    # [B

    .prologue
    .line 406
    mul-int/lit8 v2, p1, 0x2

    aget-short v1, p0, v2

    .line 407
    .local v1, "tn2":S
    mul-int/lit8 v2, p2, 0x2

    aget-short v0, p0, v2

    .line 408
    .local v0, "tm2":S
    if-lt v1, v0, :cond_0

    if-ne v1, v0, :cond_1

    aget-byte v2, p3, p1

    aget-byte v3, p3, p2

    if-gt v2, v3, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method final deflate(Lcom/jcraft/jzlib/ZStream;I)I
    .locals 13
    .param p1, "strm"    # Lcom/jcraft/jzlib/ZStream;
    .param p2, "flush"    # I

    .prologue
    .line 1484
    const/4 v5, 0x4

    if-gt p2, v5, :cond_0

    if-gez p2, :cond_1

    .line 1485
    :cond_0
    const/4 v5, -0x2

    .line 1621
    :goto_0
    return v5

    .line 1488
    :cond_1
    iget-object v5, p1, Lcom/jcraft/jzlib/ZStream;->next_out:[B

    if-eqz v5, :cond_3

    iget-object v5, p1, Lcom/jcraft/jzlib/ZStream;->next_in:[B

    if-nez v5, :cond_2

    iget v5, p1, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    if-nez v5, :cond_3

    :cond_2
    iget v5, p0, Lcom/jcraft/jzlib/Deflate;->status:I

    const/16 v6, 0x29a

    if-ne v5, v6, :cond_4

    const/4 v5, 0x4

    if-eq p2, v5, :cond_4

    .line 1491
    :cond_3
    sget-object v5, Lcom/jcraft/jzlib/Deflate;->z_errmsg:[Ljava/lang/String;

    const/4 v6, 0x4

    aget-object v5, v5, v6

    iput-object v5, p1, Lcom/jcraft/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 1492
    const/4 v5, -0x2

    goto :goto_0

    .line 1494
    :cond_4
    iget v5, p1, Lcom/jcraft/jzlib/ZStream;->avail_out:I

    if-nez v5, :cond_5

    .line 1495
    sget-object v5, Lcom/jcraft/jzlib/Deflate;->z_errmsg:[Ljava/lang/String;

    const/4 v6, 0x7

    aget-object v5, v5, v6

    iput-object v5, p1, Lcom/jcraft/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 1496
    const/4 v5, -0x5

    goto :goto_0

    .line 1499
    :cond_5
    iput-object p1, p0, Lcom/jcraft/jzlib/Deflate;->strm:Lcom/jcraft/jzlib/ZStream;

    .line 1500
    iget v4, p0, Lcom/jcraft/jzlib/Deflate;->last_flush:I

    .line 1501
    .local v4, "old_flush":I
    iput p2, p0, Lcom/jcraft/jzlib/Deflate;->last_flush:I

    .line 1504
    iget v5, p0, Lcom/jcraft/jzlib/Deflate;->status:I

    const/16 v6, 0x2a

    if-ne v5, v6, :cond_9

    .line 1505
    iget v5, p0, Lcom/jcraft/jzlib/Deflate;->w_bits:I

    add-int/lit8 v5, v5, -0x8

    shl-int/lit8 v5, v5, 0x4

    add-int/lit8 v5, v5, 0x8

    shl-int/lit8 v1, v5, 0x8

    .line 1506
    .local v1, "header":I
    iget v5, p0, Lcom/jcraft/jzlib/Deflate;->level:I

    add-int/lit8 v5, v5, -0x1

    and-int/lit16 v5, v5, 0xff

    shr-int/lit8 v3, v5, 0x1

    .line 1508
    .local v3, "level_flags":I
    const/4 v5, 0x3

    if-le v3, v5, :cond_6

    const/4 v3, 0x3

    .line 1509
    :cond_6
    shl-int/lit8 v5, v3, 0x6

    or-int/2addr v1, v5

    .line 1510
    iget v5, p0, Lcom/jcraft/jzlib/Deflate;->strstart:I

    if-eqz v5, :cond_7

    or-int/lit8 v1, v1, 0x20

    .line 1511
    :cond_7
    rem-int/lit8 v5, v1, 0x1f

    rsub-int/lit8 v5, v5, 0x1f

    add-int/2addr v1, v5

    .line 1513
    const/16 v5, 0x71

    iput v5, p0, Lcom/jcraft/jzlib/Deflate;->status:I

    .line 1514
    invoke-direct {p0, v1}, Lcom/jcraft/jzlib/Deflate;->putShortMSB(I)V

    .line 1518
    iget v5, p0, Lcom/jcraft/jzlib/Deflate;->strstart:I

    if-eqz v5, :cond_8

    .line 1519
    iget-wide v6, p1, Lcom/jcraft/jzlib/ZStream;->adler:J

    const/16 v5, 0x10

    ushr-long/2addr v6, v5

    long-to-int v5, v6

    invoke-direct {p0, v5}, Lcom/jcraft/jzlib/Deflate;->putShortMSB(I)V

    .line 1520
    iget-wide v6, p1, Lcom/jcraft/jzlib/ZStream;->adler:J

    const-wide/32 v8, 0xffff

    and-long/2addr v6, v8

    long-to-int v5, v6

    invoke-direct {p0, v5}, Lcom/jcraft/jzlib/Deflate;->putShortMSB(I)V

    .line 1522
    :cond_8
    iget-object v5, p1, Lcom/jcraft/jzlib/ZStream;->_adler:Lcom/jcraft/jzlib/Adler32;

    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v6, v7, v5, v8, v9}, Lcom/jcraft/jzlib/Adler32;->adler32(J[BII)J

    move-result-wide v6

    iput-wide v6, p1, Lcom/jcraft/jzlib/ZStream;->adler:J

    .line 1526
    .end local v1    # "header":I
    .end local v3    # "level_flags":I
    :cond_9
    iget v5, p0, Lcom/jcraft/jzlib/Deflate;->pending:I

    if-eqz v5, :cond_a

    .line 1527
    invoke-virtual {p1}, Lcom/jcraft/jzlib/ZStream;->flush_pending()V

    .line 1528
    iget v5, p1, Lcom/jcraft/jzlib/ZStream;->avail_out:I

    if-nez v5, :cond_b

    .line 1535
    const/4 v5, -0x1

    iput v5, p0, Lcom/jcraft/jzlib/Deflate;->last_flush:I

    .line 1536
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 1543
    :cond_a
    iget v5, p1, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    if-nez v5, :cond_b

    if-gt p2, v4, :cond_b

    const/4 v5, 0x4

    if-eq p2, v5, :cond_b

    .line 1545
    sget-object v5, Lcom/jcraft/jzlib/Deflate;->z_errmsg:[Ljava/lang/String;

    const/4 v6, 0x7

    aget-object v5, v5, v6

    iput-object v5, p1, Lcom/jcraft/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 1546
    const/4 v5, -0x5

    goto/16 :goto_0

    .line 1550
    :cond_b
    iget v5, p0, Lcom/jcraft/jzlib/Deflate;->status:I

    const/16 v6, 0x29a

    if-ne v5, v6, :cond_c

    iget v5, p1, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    if-eqz v5, :cond_c

    .line 1551
    sget-object v5, Lcom/jcraft/jzlib/Deflate;->z_errmsg:[Ljava/lang/String;

    const/4 v6, 0x7

    aget-object v5, v5, v6

    iput-object v5, p1, Lcom/jcraft/jzlib/ZStream;->msg:Ljava/lang/String;

    .line 1552
    const/4 v5, -0x5

    goto/16 :goto_0

    .line 1556
    :cond_c
    iget v5, p1, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    if-nez v5, :cond_d

    iget v5, p0, Lcom/jcraft/jzlib/Deflate;->lookahead:I

    if-nez v5, :cond_d

    if-eqz p2, :cond_3c

    iget v5, p0, Lcom/jcraft/jzlib/Deflate;->status:I

    const/16 v6, 0x29a

    if-eq v5, v6, :cond_3c

    .line 1558
    :cond_d
    const/4 v0, -0x1

    .line 1559
    .local v0, "bstate":I
    sget-object v5, Lcom/jcraft/jzlib/Deflate;->config_table:[Lcom/jcraft/jzlib/Deflate$Config;

    iget v6, p0, Lcom/jcraft/jzlib/Deflate;->level:I

    aget-object v5, v5, v6

    iget v5, v5, Lcom/jcraft/jzlib/Deflate$Config;->func:I

    packed-switch v5, :pswitch_data_0

    .line 1568
    :goto_1
    const/4 v5, 0x2

    if-eq v0, v5, :cond_e

    const/4 v5, 0x3

    if-ne v0, v5, :cond_f

    .line 1573
    :cond_e
    const/16 v5, 0x29a

    iput v5, p0, Lcom/jcraft/jzlib/Deflate;->status:I

    .line 1575
    :cond_f
    if-eqz v0, :cond_10

    const/4 v5, 0x2

    if-ne v0, v5, :cond_38

    .line 1576
    :cond_10
    iget v5, p1, Lcom/jcraft/jzlib/ZStream;->avail_out:I

    if-nez v5, :cond_11

    .line 1577
    const/4 v5, -0x1

    iput v5, p0, Lcom/jcraft/jzlib/Deflate;->last_flush:I

    .line 1579
    :cond_11
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 1561
    :pswitch_0
    const v5, 0xffff

    const v6, 0xffff

    iget v7, p0, Lcom/jcraft/jzlib/Deflate;->pending_buf_size:I

    add-int/lit8 v7, v7, -0x5

    if-le v6, v7, :cond_12

    iget v5, p0, Lcom/jcraft/jzlib/Deflate;->pending_buf_size:I

    add-int/lit8 v5, v5, -0x5

    :cond_12
    iget v6, p0, Lcom/jcraft/jzlib/Deflate;->lookahead:I

    const/4 v7, 0x1

    if-gt v6, v7, :cond_14

    invoke-direct {p0}, Lcom/jcraft/jzlib/Deflate;->fill_window()V

    iget v6, p0, Lcom/jcraft/jzlib/Deflate;->lookahead:I

    if-nez v6, :cond_13

    if-nez p2, :cond_13

    const/4 v0, 0x0

    .line 1562
    :goto_2
    goto :goto_1

    .line 1561
    :cond_13
    iget v6, p0, Lcom/jcraft/jzlib/Deflate;->lookahead:I

    if-eqz v6, :cond_17

    :cond_14
    iget v6, p0, Lcom/jcraft/jzlib/Deflate;->strstart:I

    iget v7, p0, Lcom/jcraft/jzlib/Deflate;->lookahead:I

    add-int/2addr v6, v7

    iput v6, p0, Lcom/jcraft/jzlib/Deflate;->strstart:I

    const/4 v6, 0x0

    iput v6, p0, Lcom/jcraft/jzlib/Deflate;->lookahead:I

    iget v6, p0, Lcom/jcraft/jzlib/Deflate;->block_start:I

    add-int/2addr v6, v5

    iget v7, p0, Lcom/jcraft/jzlib/Deflate;->strstart:I

    if-eqz v7, :cond_15

    iget v7, p0, Lcom/jcraft/jzlib/Deflate;->strstart:I

    if-lt v7, v6, :cond_16

    :cond_15
    iget v7, p0, Lcom/jcraft/jzlib/Deflate;->strstart:I

    sub-int/2addr v7, v6

    iput v7, p0, Lcom/jcraft/jzlib/Deflate;->lookahead:I

    iput v6, p0, Lcom/jcraft/jzlib/Deflate;->strstart:I

    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/jcraft/jzlib/Deflate;->flush_block_only(Z)V

    iget-object v6, p0, Lcom/jcraft/jzlib/Deflate;->strm:Lcom/jcraft/jzlib/ZStream;

    iget v6, v6, Lcom/jcraft/jzlib/ZStream;->avail_out:I

    if-nez v6, :cond_16

    const/4 v0, 0x0

    goto :goto_2

    :cond_16
    iget v6, p0, Lcom/jcraft/jzlib/Deflate;->strstart:I

    iget v7, p0, Lcom/jcraft/jzlib/Deflate;->block_start:I

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/jcraft/jzlib/Deflate;->w_size:I

    add-int/lit16 v7, v7, -0x106

    if-lt v6, v7, :cond_12

    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/jcraft/jzlib/Deflate;->flush_block_only(Z)V

    iget-object v6, p0, Lcom/jcraft/jzlib/Deflate;->strm:Lcom/jcraft/jzlib/ZStream;

    iget v6, v6, Lcom/jcraft/jzlib/ZStream;->avail_out:I

    if-nez v6, :cond_12

    const/4 v0, 0x0

    goto :goto_2

    :cond_17
    const/4 v5, 0x4

    if-ne p2, v5, :cond_18

    const/4 v5, 0x1

    :goto_3
    invoke-direct {p0, v5}, Lcom/jcraft/jzlib/Deflate;->flush_block_only(Z)V

    iget-object v5, p0, Lcom/jcraft/jzlib/Deflate;->strm:Lcom/jcraft/jzlib/ZStream;

    iget v5, v5, Lcom/jcraft/jzlib/ZStream;->avail_out:I

    if-nez v5, :cond_1a

    const/4 v5, 0x4

    if-ne p2, v5, :cond_19

    const/4 v0, 0x2

    goto :goto_2

    :cond_18
    const/4 v5, 0x0

    goto :goto_3

    :cond_19
    const/4 v0, 0x0

    goto :goto_2

    :cond_1a
    const/4 v5, 0x4

    if-ne p2, v5, :cond_1b

    const/4 v0, 0x3

    goto :goto_2

    :cond_1b
    const/4 v0, 0x1

    goto :goto_2

    .line 1564
    :pswitch_1
    const/4 v5, 0x0

    :cond_1c
    iget v6, p0, Lcom/jcraft/jzlib/Deflate;->lookahead:I

    const/16 v7, 0x106

    if-ge v6, v7, :cond_1e

    invoke-direct {p0}, Lcom/jcraft/jzlib/Deflate;->fill_window()V

    iget v6, p0, Lcom/jcraft/jzlib/Deflate;->lookahead:I

    const/16 v7, 0x106

    if-ge v6, v7, :cond_1d

    if-nez p2, :cond_1d

    const/4 v0, 0x0

    .line 1565
    :goto_4
    goto/16 :goto_1

    .line 1564
    :cond_1d
    iget v6, p0, Lcom/jcraft/jzlib/Deflate;->lookahead:I

    if-eqz v6, :cond_23

    :cond_1e
    iget v6, p0, Lcom/jcraft/jzlib/Deflate;->lookahead:I

    const/4 v7, 0x3

    if-lt v6, v7, :cond_40

    iget v5, p0, Lcom/jcraft/jzlib/Deflate;->ins_h:I

    iget v6, p0, Lcom/jcraft/jzlib/Deflate;->hash_shift:I

    shl-int/2addr v5, v6

    iget-object v6, p0, Lcom/jcraft/jzlib/Deflate;->window:[B

    iget v7, p0, Lcom/jcraft/jzlib/Deflate;->strstart:I

    add-int/lit8 v7, v7, 0x2

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    xor-int/2addr v5, v6

    iget v6, p0, Lcom/jcraft/jzlib/Deflate;->hash_mask:I

    and-int/2addr v5, v6

    iput v5, p0, Lcom/jcraft/jzlib/Deflate;->ins_h:I

    iget-object v5, p0, Lcom/jcraft/jzlib/Deflate;->head:[S

    iget v6, p0, Lcom/jcraft/jzlib/Deflate;->ins_h:I

    aget-short v5, v5, v6

    const v6, 0xffff

    and-int/2addr v6, v5

    iget-object v5, p0, Lcom/jcraft/jzlib/Deflate;->prev:[S

    iget v7, p0, Lcom/jcraft/jzlib/Deflate;->strstart:I

    iget v8, p0, Lcom/jcraft/jzlib/Deflate;->w_mask:I

    and-int/2addr v7, v8

    iget-object v8, p0, Lcom/jcraft/jzlib/Deflate;->head:[S

    iget v9, p0, Lcom/jcraft/jzlib/Deflate;->ins_h:I

    aget-short v8, v8, v9

    aput-short v8, v5, v7

    iget-object v5, p0, Lcom/jcraft/jzlib/Deflate;->head:[S

    iget v7, p0, Lcom/jcraft/jzlib/Deflate;->ins_h:I

    iget v8, p0, Lcom/jcraft/jzlib/Deflate;->strstart:I

    int-to-short v8, v8

    aput-short v8, v5, v7

    :goto_5
    int-to-long v8, v6

    const-wide/16 v10, 0x0

    cmp-long v5, v8, v10

    if-eqz v5, :cond_1f

    iget v5, p0, Lcom/jcraft/jzlib/Deflate;->strstart:I

    sub-int/2addr v5, v6

    const v7, 0xffff

    and-int/2addr v5, v7

    iget v7, p0, Lcom/jcraft/jzlib/Deflate;->w_size:I

    add-int/lit16 v7, v7, -0x106

    if-gt v5, v7, :cond_1f

    invoke-direct {p0, v6}, Lcom/jcraft/jzlib/Deflate;->longest_match(I)I

    move-result v5

    iput v5, p0, Lcom/jcraft/jzlib/Deflate;->match_length:I

    :cond_1f
    iget v5, p0, Lcom/jcraft/jzlib/Deflate;->match_length:I

    const/4 v7, 0x3

    if-lt v5, v7, :cond_22

    iget v5, p0, Lcom/jcraft/jzlib/Deflate;->strstart:I

    iget v7, p0, Lcom/jcraft/jzlib/Deflate;->match_start:I

    sub-int/2addr v5, v7

    iget v7, p0, Lcom/jcraft/jzlib/Deflate;->match_length:I

    add-int/lit8 v7, v7, -0x3

    invoke-direct {p0, v5, v7}, Lcom/jcraft/jzlib/Deflate;->_tr_tally(II)Z

    move-result v5

    iget v7, p0, Lcom/jcraft/jzlib/Deflate;->lookahead:I

    iget v8, p0, Lcom/jcraft/jzlib/Deflate;->match_length:I

    sub-int/2addr v7, v8

    iput v7, p0, Lcom/jcraft/jzlib/Deflate;->lookahead:I

    iget v7, p0, Lcom/jcraft/jzlib/Deflate;->match_length:I

    iget v8, p0, Lcom/jcraft/jzlib/Deflate;->max_lazy_match:I

    if-gt v7, v8, :cond_21

    iget v7, p0, Lcom/jcraft/jzlib/Deflate;->lookahead:I

    const/4 v8, 0x3

    if-lt v7, v8, :cond_21

    iget v6, p0, Lcom/jcraft/jzlib/Deflate;->match_length:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lcom/jcraft/jzlib/Deflate;->match_length:I

    :cond_20
    iget v6, p0, Lcom/jcraft/jzlib/Deflate;->strstart:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/jcraft/jzlib/Deflate;->strstart:I

    iget v6, p0, Lcom/jcraft/jzlib/Deflate;->ins_h:I

    iget v7, p0, Lcom/jcraft/jzlib/Deflate;->hash_shift:I

    shl-int/2addr v6, v7

    iget-object v7, p0, Lcom/jcraft/jzlib/Deflate;->window:[B

    iget v8, p0, Lcom/jcraft/jzlib/Deflate;->strstart:I

    add-int/lit8 v8, v8, 0x2

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    xor-int/2addr v6, v7

    iget v7, p0, Lcom/jcraft/jzlib/Deflate;->hash_mask:I

    and-int/2addr v6, v7

    iput v6, p0, Lcom/jcraft/jzlib/Deflate;->ins_h:I

    iget-object v6, p0, Lcom/jcraft/jzlib/Deflate;->head:[S

    iget v7, p0, Lcom/jcraft/jzlib/Deflate;->ins_h:I

    aget-short v6, v6, v7

    const v7, 0xffff

    and-int/2addr v6, v7

    iget-object v7, p0, Lcom/jcraft/jzlib/Deflate;->prev:[S

    iget v8, p0, Lcom/jcraft/jzlib/Deflate;->strstart:I

    iget v9, p0, Lcom/jcraft/jzlib/Deflate;->w_mask:I

    and-int/2addr v8, v9

    iget-object v9, p0, Lcom/jcraft/jzlib/Deflate;->head:[S

    iget v10, p0, Lcom/jcraft/jzlib/Deflate;->ins_h:I

    aget-short v9, v9, v10

    aput-short v9, v7, v8

    iget-object v7, p0, Lcom/jcraft/jzlib/Deflate;->head:[S

    iget v8, p0, Lcom/jcraft/jzlib/Deflate;->ins_h:I

    iget v9, p0, Lcom/jcraft/jzlib/Deflate;->strstart:I

    int-to-short v9, v9

    aput-short v9, v7, v8

    iget v7, p0, Lcom/jcraft/jzlib/Deflate;->match_length:I

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Lcom/jcraft/jzlib/Deflate;->match_length:I

    if-nez v7, :cond_20

    iget v7, p0, Lcom/jcraft/jzlib/Deflate;->strstart:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/jcraft/jzlib/Deflate;->strstart:I

    move v12, v5

    move v5, v6

    move v6, v12

    :goto_6
    if-eqz v6, :cond_1c

    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/jcraft/jzlib/Deflate;->flush_block_only(Z)V

    iget-object v6, p0, Lcom/jcraft/jzlib/Deflate;->strm:Lcom/jcraft/jzlib/ZStream;

    iget v6, v6, Lcom/jcraft/jzlib/ZStream;->avail_out:I

    if-nez v6, :cond_1c

    const/4 v0, 0x0

    goto/16 :goto_4

    :cond_21
    iget v7, p0, Lcom/jcraft/jzlib/Deflate;->strstart:I

    iget v8, p0, Lcom/jcraft/jzlib/Deflate;->match_length:I

    add-int/2addr v7, v8

    iput v7, p0, Lcom/jcraft/jzlib/Deflate;->strstart:I

    const/4 v7, 0x0

    iput v7, p0, Lcom/jcraft/jzlib/Deflate;->match_length:I

    iget-object v7, p0, Lcom/jcraft/jzlib/Deflate;->window:[B

    iget v8, p0, Lcom/jcraft/jzlib/Deflate;->strstart:I

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    iput v7, p0, Lcom/jcraft/jzlib/Deflate;->ins_h:I

    iget v7, p0, Lcom/jcraft/jzlib/Deflate;->ins_h:I

    iget v8, p0, Lcom/jcraft/jzlib/Deflate;->hash_shift:I

    shl-int/2addr v7, v8

    iget-object v8, p0, Lcom/jcraft/jzlib/Deflate;->window:[B

    iget v9, p0, Lcom/jcraft/jzlib/Deflate;->strstart:I

    add-int/lit8 v9, v9, 0x1

    aget-byte v8, v8, v9

    and-int/lit16 v8, v8, 0xff

    xor-int/2addr v7, v8

    iget v8, p0, Lcom/jcraft/jzlib/Deflate;->hash_mask:I

    and-int/2addr v7, v8

    iput v7, p0, Lcom/jcraft/jzlib/Deflate;->ins_h:I

    move v12, v5

    move v5, v6

    move v6, v12

    goto :goto_6

    :cond_22
    const/4 v5, 0x0

    iget-object v7, p0, Lcom/jcraft/jzlib/Deflate;->window:[B

    iget v8, p0, Lcom/jcraft/jzlib/Deflate;->strstart:I

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    invoke-direct {p0, v5, v7}, Lcom/jcraft/jzlib/Deflate;->_tr_tally(II)Z

    move-result v5

    iget v7, p0, Lcom/jcraft/jzlib/Deflate;->lookahead:I

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Lcom/jcraft/jzlib/Deflate;->lookahead:I

    iget v7, p0, Lcom/jcraft/jzlib/Deflate;->strstart:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/jcraft/jzlib/Deflate;->strstart:I

    move v12, v5

    move v5, v6

    move v6, v12

    goto :goto_6

    :cond_23
    const/4 v5, 0x4

    if-ne p2, v5, :cond_24

    const/4 v5, 0x1

    :goto_7
    invoke-direct {p0, v5}, Lcom/jcraft/jzlib/Deflate;->flush_block_only(Z)V

    iget-object v5, p0, Lcom/jcraft/jzlib/Deflate;->strm:Lcom/jcraft/jzlib/ZStream;

    iget v5, v5, Lcom/jcraft/jzlib/ZStream;->avail_out:I

    if-nez v5, :cond_26

    const/4 v5, 0x4

    if-ne p2, v5, :cond_25

    const/4 v0, 0x2

    goto/16 :goto_4

    :cond_24
    const/4 v5, 0x0

    goto :goto_7

    :cond_25
    const/4 v0, 0x0

    goto/16 :goto_4

    :cond_26
    const/4 v5, 0x4

    if-ne p2, v5, :cond_27

    const/4 v0, 0x3

    goto/16 :goto_4

    :cond_27
    const/4 v0, 0x1

    goto/16 :goto_4

    .line 1567
    :pswitch_2
    const/4 v5, 0x0

    :cond_28
    :goto_8
    iget v6, p0, Lcom/jcraft/jzlib/Deflate;->lookahead:I

    const/16 v7, 0x106

    if-ge v6, v7, :cond_2a

    invoke-direct {p0}, Lcom/jcraft/jzlib/Deflate;->fill_window()V

    iget v6, p0, Lcom/jcraft/jzlib/Deflate;->lookahead:I

    const/16 v7, 0x106

    if-ge v6, v7, :cond_29

    if-nez p2, :cond_29

    const/4 v0, 0x0

    :goto_9
    goto/16 :goto_1

    :cond_29
    iget v6, p0, Lcom/jcraft/jzlib/Deflate;->lookahead:I

    if-eqz v6, :cond_32

    :cond_2a
    iget v6, p0, Lcom/jcraft/jzlib/Deflate;->lookahead:I

    const/4 v7, 0x3

    if-lt v6, v7, :cond_2b

    iget v5, p0, Lcom/jcraft/jzlib/Deflate;->ins_h:I

    iget v6, p0, Lcom/jcraft/jzlib/Deflate;->hash_shift:I

    shl-int/2addr v5, v6

    iget-object v6, p0, Lcom/jcraft/jzlib/Deflate;->window:[B

    iget v7, p0, Lcom/jcraft/jzlib/Deflate;->strstart:I

    add-int/lit8 v7, v7, 0x2

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    xor-int/2addr v5, v6

    iget v6, p0, Lcom/jcraft/jzlib/Deflate;->hash_mask:I

    and-int/2addr v5, v6

    iput v5, p0, Lcom/jcraft/jzlib/Deflate;->ins_h:I

    iget-object v5, p0, Lcom/jcraft/jzlib/Deflate;->head:[S

    iget v6, p0, Lcom/jcraft/jzlib/Deflate;->ins_h:I

    aget-short v5, v5, v6

    const v6, 0xffff

    and-int/2addr v5, v6

    iget-object v6, p0, Lcom/jcraft/jzlib/Deflate;->prev:[S

    iget v7, p0, Lcom/jcraft/jzlib/Deflate;->strstart:I

    iget v8, p0, Lcom/jcraft/jzlib/Deflate;->w_mask:I

    and-int/2addr v7, v8

    iget-object v8, p0, Lcom/jcraft/jzlib/Deflate;->head:[S

    iget v9, p0, Lcom/jcraft/jzlib/Deflate;->ins_h:I

    aget-short v8, v8, v9

    aput-short v8, v6, v7

    iget-object v6, p0, Lcom/jcraft/jzlib/Deflate;->head:[S

    iget v7, p0, Lcom/jcraft/jzlib/Deflate;->ins_h:I

    iget v8, p0, Lcom/jcraft/jzlib/Deflate;->strstart:I

    int-to-short v8, v8

    aput-short v8, v6, v7

    :cond_2b
    iget v6, p0, Lcom/jcraft/jzlib/Deflate;->match_length:I

    iput v6, p0, Lcom/jcraft/jzlib/Deflate;->prev_length:I

    iget v6, p0, Lcom/jcraft/jzlib/Deflate;->match_start:I

    iput v6, p0, Lcom/jcraft/jzlib/Deflate;->prev_match:I

    const/4 v6, 0x2

    iput v6, p0, Lcom/jcraft/jzlib/Deflate;->match_length:I

    if-eqz v5, :cond_2c

    iget v6, p0, Lcom/jcraft/jzlib/Deflate;->prev_length:I

    iget v7, p0, Lcom/jcraft/jzlib/Deflate;->max_lazy_match:I

    if-ge v6, v7, :cond_2c

    iget v6, p0, Lcom/jcraft/jzlib/Deflate;->strstart:I

    sub-int/2addr v6, v5

    const v7, 0xffff

    and-int/2addr v6, v7

    iget v7, p0, Lcom/jcraft/jzlib/Deflate;->w_size:I

    add-int/lit16 v7, v7, -0x106

    if-gt v6, v7, :cond_2c

    invoke-direct {p0, v5}, Lcom/jcraft/jzlib/Deflate;->longest_match(I)I

    move-result v6

    iput v6, p0, Lcom/jcraft/jzlib/Deflate;->match_length:I

    iget v6, p0, Lcom/jcraft/jzlib/Deflate;->match_length:I

    const/4 v7, 0x5

    if-gt v6, v7, :cond_2c

    iget v6, p0, Lcom/jcraft/jzlib/Deflate;->match_length:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_2c

    iget v6, p0, Lcom/jcraft/jzlib/Deflate;->strstart:I

    iget v7, p0, Lcom/jcraft/jzlib/Deflate;->match_start:I

    sub-int/2addr v6, v7

    const/16 v7, 0x1000

    if-le v6, v7, :cond_2c

    const/4 v6, 0x2

    iput v6, p0, Lcom/jcraft/jzlib/Deflate;->match_length:I

    :cond_2c
    iget v6, p0, Lcom/jcraft/jzlib/Deflate;->prev_length:I

    const/4 v7, 0x3

    if-lt v6, v7, :cond_2f

    iget v6, p0, Lcom/jcraft/jzlib/Deflate;->match_length:I

    iget v7, p0, Lcom/jcraft/jzlib/Deflate;->prev_length:I

    if-gt v6, v7, :cond_2f

    iget v6, p0, Lcom/jcraft/jzlib/Deflate;->strstart:I

    iget v7, p0, Lcom/jcraft/jzlib/Deflate;->lookahead:I

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, -0x3

    iget v7, p0, Lcom/jcraft/jzlib/Deflate;->strstart:I

    add-int/lit8 v7, v7, -0x1

    iget v8, p0, Lcom/jcraft/jzlib/Deflate;->prev_match:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/jcraft/jzlib/Deflate;->prev_length:I

    add-int/lit8 v8, v8, -0x3

    invoke-direct {p0, v7, v8}, Lcom/jcraft/jzlib/Deflate;->_tr_tally(II)Z

    move-result v7

    iget v8, p0, Lcom/jcraft/jzlib/Deflate;->lookahead:I

    iget v9, p0, Lcom/jcraft/jzlib/Deflate;->prev_length:I

    add-int/lit8 v9, v9, -0x1

    sub-int/2addr v8, v9

    iput v8, p0, Lcom/jcraft/jzlib/Deflate;->lookahead:I

    iget v8, p0, Lcom/jcraft/jzlib/Deflate;->prev_length:I

    add-int/lit8 v8, v8, -0x2

    iput v8, p0, Lcom/jcraft/jzlib/Deflate;->prev_length:I

    :cond_2d
    iget v8, p0, Lcom/jcraft/jzlib/Deflate;->strstart:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/jcraft/jzlib/Deflate;->strstart:I

    if-gt v8, v6, :cond_2e

    iget v5, p0, Lcom/jcraft/jzlib/Deflate;->ins_h:I

    iget v8, p0, Lcom/jcraft/jzlib/Deflate;->hash_shift:I

    shl-int/2addr v5, v8

    iget-object v8, p0, Lcom/jcraft/jzlib/Deflate;->window:[B

    iget v9, p0, Lcom/jcraft/jzlib/Deflate;->strstart:I

    add-int/lit8 v9, v9, 0x2

    aget-byte v8, v8, v9

    and-int/lit16 v8, v8, 0xff

    xor-int/2addr v5, v8

    iget v8, p0, Lcom/jcraft/jzlib/Deflate;->hash_mask:I

    and-int/2addr v5, v8

    iput v5, p0, Lcom/jcraft/jzlib/Deflate;->ins_h:I

    iget-object v5, p0, Lcom/jcraft/jzlib/Deflate;->head:[S

    iget v8, p0, Lcom/jcraft/jzlib/Deflate;->ins_h:I

    aget-short v5, v5, v8

    const v8, 0xffff

    and-int/2addr v5, v8

    iget-object v8, p0, Lcom/jcraft/jzlib/Deflate;->prev:[S

    iget v9, p0, Lcom/jcraft/jzlib/Deflate;->strstart:I

    iget v10, p0, Lcom/jcraft/jzlib/Deflate;->w_mask:I

    and-int/2addr v9, v10

    iget-object v10, p0, Lcom/jcraft/jzlib/Deflate;->head:[S

    iget v11, p0, Lcom/jcraft/jzlib/Deflate;->ins_h:I

    aget-short v10, v10, v11

    aput-short v10, v8, v9

    iget-object v8, p0, Lcom/jcraft/jzlib/Deflate;->head:[S

    iget v9, p0, Lcom/jcraft/jzlib/Deflate;->ins_h:I

    iget v10, p0, Lcom/jcraft/jzlib/Deflate;->strstart:I

    int-to-short v10, v10

    aput-short v10, v8, v9

    :cond_2e
    iget v8, p0, Lcom/jcraft/jzlib/Deflate;->prev_length:I

    add-int/lit8 v8, v8, -0x1

    iput v8, p0, Lcom/jcraft/jzlib/Deflate;->prev_length:I

    if-nez v8, :cond_2d

    const/4 v6, 0x0

    iput v6, p0, Lcom/jcraft/jzlib/Deflate;->match_available:I

    const/4 v6, 0x2

    iput v6, p0, Lcom/jcraft/jzlib/Deflate;->match_length:I

    iget v6, p0, Lcom/jcraft/jzlib/Deflate;->strstart:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/jcraft/jzlib/Deflate;->strstart:I

    if-eqz v7, :cond_28

    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/jcraft/jzlib/Deflate;->flush_block_only(Z)V

    iget-object v6, p0, Lcom/jcraft/jzlib/Deflate;->strm:Lcom/jcraft/jzlib/ZStream;

    iget v6, v6, Lcom/jcraft/jzlib/ZStream;->avail_out:I

    if-nez v6, :cond_28

    const/4 v0, 0x0

    goto/16 :goto_9

    :cond_2f
    iget v6, p0, Lcom/jcraft/jzlib/Deflate;->match_available:I

    if-eqz v6, :cond_31

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/jcraft/jzlib/Deflate;->window:[B

    iget v8, p0, Lcom/jcraft/jzlib/Deflate;->strstart:I

    add-int/lit8 v8, v8, -0x1

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    invoke-direct {p0, v6, v7}, Lcom/jcraft/jzlib/Deflate;->_tr_tally(II)Z

    move-result v6

    if-eqz v6, :cond_30

    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/jcraft/jzlib/Deflate;->flush_block_only(Z)V

    :cond_30
    iget v6, p0, Lcom/jcraft/jzlib/Deflate;->strstart:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/jcraft/jzlib/Deflate;->strstart:I

    iget v6, p0, Lcom/jcraft/jzlib/Deflate;->lookahead:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lcom/jcraft/jzlib/Deflate;->lookahead:I

    iget-object v6, p0, Lcom/jcraft/jzlib/Deflate;->strm:Lcom/jcraft/jzlib/ZStream;

    iget v6, v6, Lcom/jcraft/jzlib/ZStream;->avail_out:I

    if-nez v6, :cond_28

    const/4 v0, 0x0

    goto/16 :goto_9

    :cond_31
    const/4 v6, 0x1

    iput v6, p0, Lcom/jcraft/jzlib/Deflate;->match_available:I

    iget v6, p0, Lcom/jcraft/jzlib/Deflate;->strstart:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/jcraft/jzlib/Deflate;->strstart:I

    iget v6, p0, Lcom/jcraft/jzlib/Deflate;->lookahead:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lcom/jcraft/jzlib/Deflate;->lookahead:I

    goto/16 :goto_8

    :cond_32
    iget v5, p0, Lcom/jcraft/jzlib/Deflate;->match_available:I

    if-eqz v5, :cond_33

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/jcraft/jzlib/Deflate;->window:[B

    iget v7, p0, Lcom/jcraft/jzlib/Deflate;->strstart:I

    add-int/lit8 v7, v7, -0x1

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    invoke-direct {p0, v5, v6}, Lcom/jcraft/jzlib/Deflate;->_tr_tally(II)Z

    const/4 v5, 0x0

    iput v5, p0, Lcom/jcraft/jzlib/Deflate;->match_available:I

    :cond_33
    const/4 v5, 0x4

    if-ne p2, v5, :cond_34

    const/4 v5, 0x1

    :goto_a
    invoke-direct {p0, v5}, Lcom/jcraft/jzlib/Deflate;->flush_block_only(Z)V

    iget-object v5, p0, Lcom/jcraft/jzlib/Deflate;->strm:Lcom/jcraft/jzlib/ZStream;

    iget v5, v5, Lcom/jcraft/jzlib/ZStream;->avail_out:I

    if-nez v5, :cond_36

    const/4 v5, 0x4

    if-ne p2, v5, :cond_35

    const/4 v0, 0x2

    goto/16 :goto_9

    :cond_34
    const/4 v5, 0x0

    goto :goto_a

    :cond_35
    const/4 v0, 0x0

    goto/16 :goto_9

    :cond_36
    const/4 v5, 0x4

    if-ne p2, v5, :cond_37

    const/4 v0, 0x3

    goto/16 :goto_9

    :cond_37
    const/4 v0, 0x1

    goto/16 :goto_9

    .line 1588
    :cond_38
    const/4 v5, 0x1

    if-ne v0, v5, :cond_3c

    .line 1589
    const/4 v5, 0x1

    if-ne p2, v5, :cond_3b

    .line 1590
    const/4 v5, 0x2

    const/4 v6, 0x3

    invoke-direct {p0, v5, v6}, Lcom/jcraft/jzlib/Deflate;->send_bits(II)V

    const/16 v5, 0x100

    sget-object v6, Lcom/jcraft/jzlib/StaticTree;->static_ltree:[S

    invoke-direct {p0, v5, v6}, Lcom/jcraft/jzlib/Deflate;->send_code(I[S)V

    invoke-direct {p0}, Lcom/jcraft/jzlib/Deflate;->bi_flush()V

    iget v5, p0, Lcom/jcraft/jzlib/Deflate;->last_eob_len:I

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v5, v5, 0xa

    iget v6, p0, Lcom/jcraft/jzlib/Deflate;->bi_valid:I

    sub-int/2addr v5, v6

    const/16 v6, 0x9

    if-ge v5, v6, :cond_39

    const/4 v5, 0x2

    const/4 v6, 0x3

    invoke-direct {p0, v5, v6}, Lcom/jcraft/jzlib/Deflate;->send_bits(II)V

    const/16 v5, 0x100

    sget-object v6, Lcom/jcraft/jzlib/StaticTree;->static_ltree:[S

    invoke-direct {p0, v5, v6}, Lcom/jcraft/jzlib/Deflate;->send_code(I[S)V

    invoke-direct {p0}, Lcom/jcraft/jzlib/Deflate;->bi_flush()V

    :cond_39
    const/4 v5, 0x7

    iput v5, p0, Lcom/jcraft/jzlib/Deflate;->last_eob_len:I

    .line 1602
    :cond_3a
    invoke-virtual {p1}, Lcom/jcraft/jzlib/ZStream;->flush_pending()V

    .line 1603
    iget v5, p1, Lcom/jcraft/jzlib/ZStream;->avail_out:I

    if-nez v5, :cond_3c

    .line 1604
    const/4 v5, -0x1

    iput v5, p0, Lcom/jcraft/jzlib/Deflate;->last_flush:I

    .line 1605
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 1593
    :cond_3b
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {p0, v5, v6, v7}, Lcom/jcraft/jzlib/Deflate;->_tr_stored_block(IIZ)V

    .line 1596
    const/4 v5, 0x3

    if-ne p2, v5, :cond_3a

    .line 1598
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    iget v5, p0, Lcom/jcraft/jzlib/Deflate;->hash_size:I

    if-ge v2, v5, :cond_3a

    .line 1599
    iget-object v5, p0, Lcom/jcraft/jzlib/Deflate;->head:[S

    const/4 v6, 0x0

    aput-short v6, v5, v2

    .line 1598
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 1610
    .end local v0    # "bstate":I
    .end local v2    # "i":I
    :cond_3c
    const/4 v5, 0x4

    if-eq p2, v5, :cond_3d

    const/4 v5, 0x0

    goto/16 :goto_0

    .line 1611
    :cond_3d
    iget v5, p0, Lcom/jcraft/jzlib/Deflate;->noheader:I

    if-eqz v5, :cond_3e

    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1614
    :cond_3e
    iget-wide v6, p1, Lcom/jcraft/jzlib/ZStream;->adler:J

    const/16 v5, 0x10

    ushr-long/2addr v6, v5

    long-to-int v5, v6

    invoke-direct {p0, v5}, Lcom/jcraft/jzlib/Deflate;->putShortMSB(I)V

    .line 1615
    iget-wide v6, p1, Lcom/jcraft/jzlib/ZStream;->adler:J

    const-wide/32 v8, 0xffff

    and-long/2addr v6, v8

    long-to-int v5, v6

    invoke-direct {p0, v5}, Lcom/jcraft/jzlib/Deflate;->putShortMSB(I)V

    .line 1616
    invoke-virtual {p1}, Lcom/jcraft/jzlib/ZStream;->flush_pending()V

    .line 1620
    const/4 v5, -0x1

    iput v5, p0, Lcom/jcraft/jzlib/Deflate;->noheader:I

    .line 1621
    iget v5, p0, Lcom/jcraft/jzlib/Deflate;->pending:I

    if-eqz v5, :cond_3f

    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_3f
    const/4 v5, 0x1

    goto/16 :goto_0

    .restart local v0    # "bstate":I
    :cond_40
    move v6, v5

    goto/16 :goto_5

    .line 1559
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method final deflateEnd()I
    .locals 4

    .prologue
    const/16 v3, 0x71

    const/4 v2, 0x0

    .line 1407
    iget v0, p0, Lcom/jcraft/jzlib/Deflate;->status:I

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/jcraft/jzlib/Deflate;->status:I

    if-eq v0, v3, :cond_0

    iget v0, p0, Lcom/jcraft/jzlib/Deflate;->status:I

    const/16 v1, 0x29a

    if-eq v0, v1, :cond_0

    .line 1408
    const/4 v0, -0x2

    .line 1417
    :goto_0
    return v0

    .line 1411
    :cond_0
    iput-object v2, p0, Lcom/jcraft/jzlib/Deflate;->pending_buf:[B

    .line 1412
    iput-object v2, p0, Lcom/jcraft/jzlib/Deflate;->head:[S

    .line 1413
    iput-object v2, p0, Lcom/jcraft/jzlib/Deflate;->prev:[S

    .line 1414
    iput-object v2, p0, Lcom/jcraft/jzlib/Deflate;->window:[B

    .line 1417
    iget v0, p0, Lcom/jcraft/jzlib/Deflate;->status:I

    if-ne v0, v3, :cond_1

    const/4 v0, -0x3

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final deflateInit$1c280a82(Lcom/jcraft/jzlib/ZStream;)I
    .locals 8
    .param p1, "strm"    # Lcom/jcraft/jzlib/ZStream;

    .prologue
    const-wide/16 v6, 0x0

    const/16 v4, 0xf

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1316
    iput-object v3, p1, Lcom/jcraft/jzlib/ZStream;->msg:Ljava/lang/String;

    iput-object p0, p1, Lcom/jcraft/jzlib/ZStream;->dstate:Lcom/jcraft/jzlib/Deflate;

    iput v2, p0, Lcom/jcraft/jzlib/Deflate;->noheader:I

    iput v4, p0, Lcom/jcraft/jzlib/Deflate;->w_bits:I

    iget v0, p0, Lcom/jcraft/jzlib/Deflate;->w_bits:I

    shl-int v0, v2, v0

    iput v0, p0, Lcom/jcraft/jzlib/Deflate;->w_size:I

    iget v0, p0, Lcom/jcraft/jzlib/Deflate;->w_size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/jcraft/jzlib/Deflate;->w_mask:I

    iput v4, p0, Lcom/jcraft/jzlib/Deflate;->hash_bits:I

    iget v0, p0, Lcom/jcraft/jzlib/Deflate;->hash_bits:I

    shl-int v0, v2, v0

    iput v0, p0, Lcom/jcraft/jzlib/Deflate;->hash_size:I

    iget v0, p0, Lcom/jcraft/jzlib/Deflate;->hash_size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/jcraft/jzlib/Deflate;->hash_mask:I

    iget v0, p0, Lcom/jcraft/jzlib/Deflate;->hash_bits:I

    add-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/jcraft/jzlib/Deflate;->hash_shift:I

    iget v0, p0, Lcom/jcraft/jzlib/Deflate;->w_size:I

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/jcraft/jzlib/Deflate;->window:[B

    iget v0, p0, Lcom/jcraft/jzlib/Deflate;->w_size:I

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/jcraft/jzlib/Deflate;->prev:[S

    iget v0, p0, Lcom/jcraft/jzlib/Deflate;->hash_size:I

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/jcraft/jzlib/Deflate;->head:[S

    const/16 v0, 0x4000

    iput v0, p0, Lcom/jcraft/jzlib/Deflate;->lit_bufsize:I

    iget v0, p0, Lcom/jcraft/jzlib/Deflate;->lit_bufsize:I

    mul-int/lit8 v0, v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/jcraft/jzlib/Deflate;->pending_buf:[B

    iget v0, p0, Lcom/jcraft/jzlib/Deflate;->lit_bufsize:I

    mul-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/jcraft/jzlib/Deflate;->pending_buf_size:I

    iget v0, p0, Lcom/jcraft/jzlib/Deflate;->lit_bufsize:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/jcraft/jzlib/Deflate;->d_buf:I

    iget v0, p0, Lcom/jcraft/jzlib/Deflate;->lit_bufsize:I

    mul-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/jcraft/jzlib/Deflate;->l_buf:I

    iput v2, p0, Lcom/jcraft/jzlib/Deflate;->level:I

    iput-wide v6, p1, Lcom/jcraft/jzlib/ZStream;->total_out:J

    iput-wide v6, p1, Lcom/jcraft/jzlib/ZStream;->total_in:J

    iput-object v3, p1, Lcom/jcraft/jzlib/ZStream;->msg:Ljava/lang/String;

    iput v1, p0, Lcom/jcraft/jzlib/Deflate;->pending:I

    iput v1, p0, Lcom/jcraft/jzlib/Deflate;->pending_out:I

    iget v0, p0, Lcom/jcraft/jzlib/Deflate;->noheader:I

    if-gez v0, :cond_0

    iput v1, p0, Lcom/jcraft/jzlib/Deflate;->noheader:I

    :cond_0
    iget v0, p0, Lcom/jcraft/jzlib/Deflate;->noheader:I

    if-eqz v0, :cond_1

    const/16 v0, 0x71

    :goto_0
    iput v0, p0, Lcom/jcraft/jzlib/Deflate;->status:I

    iget-object v0, p1, Lcom/jcraft/jzlib/ZStream;->_adler:Lcom/jcraft/jzlib/Adler32;

    invoke-static {v6, v7, v3, v1, v1}, Lcom/jcraft/jzlib/Adler32;->adler32(J[BII)J

    move-result-wide v2

    iput-wide v2, p1, Lcom/jcraft/jzlib/ZStream;->adler:J

    iput v1, p0, Lcom/jcraft/jzlib/Deflate;->last_flush:I

    iget-object v0, p0, Lcom/jcraft/jzlib/Deflate;->l_desc:Lcom/jcraft/jzlib/Tree;

    iget-object v2, p0, Lcom/jcraft/jzlib/Deflate;->dyn_ltree:[S

    iput-object v2, v0, Lcom/jcraft/jzlib/Tree;->dyn_tree:[S

    iget-object v0, p0, Lcom/jcraft/jzlib/Deflate;->l_desc:Lcom/jcraft/jzlib/Tree;

    sget-object v2, Lcom/jcraft/jzlib/StaticTree;->static_l_desc:Lcom/jcraft/jzlib/StaticTree;

    iput-object v2, v0, Lcom/jcraft/jzlib/Tree;->stat_desc:Lcom/jcraft/jzlib/StaticTree;

    iget-object v0, p0, Lcom/jcraft/jzlib/Deflate;->d_desc:Lcom/jcraft/jzlib/Tree;

    iget-object v2, p0, Lcom/jcraft/jzlib/Deflate;->dyn_dtree:[S

    iput-object v2, v0, Lcom/jcraft/jzlib/Tree;->dyn_tree:[S

    iget-object v0, p0, Lcom/jcraft/jzlib/Deflate;->d_desc:Lcom/jcraft/jzlib/Tree;

    sget-object v2, Lcom/jcraft/jzlib/StaticTree;->static_d_desc:Lcom/jcraft/jzlib/StaticTree;

    iput-object v2, v0, Lcom/jcraft/jzlib/Tree;->stat_desc:Lcom/jcraft/jzlib/StaticTree;

    iget-object v0, p0, Lcom/jcraft/jzlib/Deflate;->bl_desc:Lcom/jcraft/jzlib/Tree;

    iget-object v2, p0, Lcom/jcraft/jzlib/Deflate;->bl_tree:[S

    iput-object v2, v0, Lcom/jcraft/jzlib/Tree;->dyn_tree:[S

    iget-object v0, p0, Lcom/jcraft/jzlib/Deflate;->bl_desc:Lcom/jcraft/jzlib/Tree;

    sget-object v2, Lcom/jcraft/jzlib/StaticTree;->static_bl_desc:Lcom/jcraft/jzlib/StaticTree;

    iput-object v2, v0, Lcom/jcraft/jzlib/Tree;->stat_desc:Lcom/jcraft/jzlib/StaticTree;

    iput-short v1, p0, Lcom/jcraft/jzlib/Deflate;->bi_buf:S

    iput v1, p0, Lcom/jcraft/jzlib/Deflate;->bi_valid:I

    const/16 v0, 0x8

    iput v0, p0, Lcom/jcraft/jzlib/Deflate;->last_eob_len:I

    invoke-direct {p0}, Lcom/jcraft/jzlib/Deflate;->init_block()V

    iget v0, p0, Lcom/jcraft/jzlib/Deflate;->w_size:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/jcraft/jzlib/Deflate;->window_size:I

    iget-object v0, p0, Lcom/jcraft/jzlib/Deflate;->head:[S

    iget v2, p0, Lcom/jcraft/jzlib/Deflate;->hash_size:I

    add-int/lit8 v2, v2, -0x1

    aput-short v1, v0, v2

    move v0, v1

    :goto_1
    iget v2, p0, Lcom/jcraft/jzlib/Deflate;->hash_size:I

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/jcraft/jzlib/Deflate;->head:[S

    aput-short v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const/16 v0, 0x2a

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/jcraft/jzlib/Deflate;->config_table:[Lcom/jcraft/jzlib/Deflate$Config;

    iget v2, p0, Lcom/jcraft/jzlib/Deflate;->level:I

    aget-object v0, v0, v2

    iget v0, v0, Lcom/jcraft/jzlib/Deflate$Config;->max_lazy:I

    iput v0, p0, Lcom/jcraft/jzlib/Deflate;->max_lazy_match:I

    sget-object v0, Lcom/jcraft/jzlib/Deflate;->config_table:[Lcom/jcraft/jzlib/Deflate$Config;

    iget v2, p0, Lcom/jcraft/jzlib/Deflate;->level:I

    aget-object v0, v0, v2

    iget v0, v0, Lcom/jcraft/jzlib/Deflate$Config;->good_length:I

    iput v0, p0, Lcom/jcraft/jzlib/Deflate;->good_match:I

    sget-object v0, Lcom/jcraft/jzlib/Deflate;->config_table:[Lcom/jcraft/jzlib/Deflate$Config;

    iget v2, p0, Lcom/jcraft/jzlib/Deflate;->level:I

    aget-object v0, v0, v2

    iget v0, v0, Lcom/jcraft/jzlib/Deflate$Config;->nice_length:I

    iput v0, p0, Lcom/jcraft/jzlib/Deflate;->nice_match:I

    sget-object v0, Lcom/jcraft/jzlib/Deflate;->config_table:[Lcom/jcraft/jzlib/Deflate$Config;

    iget v2, p0, Lcom/jcraft/jzlib/Deflate;->level:I

    aget-object v0, v0, v2

    iget v0, v0, Lcom/jcraft/jzlib/Deflate$Config;->max_chain:I

    iput v0, p0, Lcom/jcraft/jzlib/Deflate;->max_chain_length:I

    iput v1, p0, Lcom/jcraft/jzlib/Deflate;->strstart:I

    iput v1, p0, Lcom/jcraft/jzlib/Deflate;->block_start:I

    iput v1, p0, Lcom/jcraft/jzlib/Deflate;->lookahead:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/jcraft/jzlib/Deflate;->prev_length:I

    iput v0, p0, Lcom/jcraft/jzlib/Deflate;->match_length:I

    iput v1, p0, Lcom/jcraft/jzlib/Deflate;->match_available:I

    iput v1, p0, Lcom/jcraft/jzlib/Deflate;->ins_h:I

    return v1
.end method

.method final pqdownheap([SI)V
    .locals 5
    .param p1, "tree"    # [S
    .param p2, "k"    # I

    .prologue
    .line 386
    iget-object v2, p0, Lcom/jcraft/jzlib/Deflate;->heap:[I

    aget v1, v2, p2

    .line 387
    .local v1, "v":I
    shl-int/lit8 v0, p2, 0x1

    .line 388
    .local v0, "j":I
    :goto_0
    iget v2, p0, Lcom/jcraft/jzlib/Deflate;->heap_len:I

    if-gt v0, v2, :cond_1

    .line 390
    iget v2, p0, Lcom/jcraft/jzlib/Deflate;->heap_len:I

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/jcraft/jzlib/Deflate;->heap:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    iget-object v3, p0, Lcom/jcraft/jzlib/Deflate;->heap:[I

    aget v3, v3, v0

    iget-object v4, p0, Lcom/jcraft/jzlib/Deflate;->depth:[B

    invoke-static {p1, v2, v3, v4}, Lcom/jcraft/jzlib/Deflate;->smaller([SII[B)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 392
    add-int/lit8 v0, v0, 0x1

    .line 395
    :cond_0
    iget-object v2, p0, Lcom/jcraft/jzlib/Deflate;->heap:[I

    aget v2, v2, v0

    iget-object v3, p0, Lcom/jcraft/jzlib/Deflate;->depth:[B

    invoke-static {p1, v1, v2, v3}, Lcom/jcraft/jzlib/Deflate;->smaller([SII[B)Z

    move-result v2

    if-nez v2, :cond_1

    .line 398
    iget-object v2, p0, Lcom/jcraft/jzlib/Deflate;->heap:[I

    iget-object v3, p0, Lcom/jcraft/jzlib/Deflate;->heap:[I

    aget v3, v3, v0

    aput v3, v2, p2

    move p2, v0

    .line 400
    shl-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 402
    :cond_1
    iget-object v2, p0, Lcom/jcraft/jzlib/Deflate;->heap:[I

    aput v1, v2, p2

    .line 403
    return-void
.end method
