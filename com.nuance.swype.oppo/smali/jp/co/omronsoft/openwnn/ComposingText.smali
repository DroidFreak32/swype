.class public Ljp/co/omronsoft/openwnn/ComposingText;
.super Ljava/lang/Object;
.source "ComposingText.java"


# static fields
.field public static final LAYER0:I = 0x0

.field public static final LAYER1:I = 0x1

.field public static final LAYER2:I = 0x2

.field public static final MAX_LAYER:I = 0x3


# instance fields
.field protected mCursor:[I

.field protected mStringLayer:[Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/ArrayList",
            "<",
            "Ljp/co/omronsoft/openwnn/StrSegment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-array v1, v3, [Ljava/util/ArrayList;

    iput-object v1, p0, Ljp/co/omronsoft/openwnn/ComposingText;->mStringLayer:[Ljava/util/ArrayList;

    .line 65
    new-array v1, v3, [I

    iput-object v1, p0, Ljp/co/omronsoft/openwnn/ComposingText;->mCursor:[I

    .line 66
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 67
    iget-object v1, p0, Ljp/co/omronsoft/openwnn/ComposingText;->mStringLayer:[Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    aput-object v2, v1, v0

    .line 68
    iget-object v1, p0, Ljp/co/omronsoft/openwnn/ComposingText;->mCursor:[I

    const/4 v2, 0x0

    aput v2, v1, v0

    .line 66
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 70
    :cond_0
    return-void
.end method

.method private deleteStrSegment0(IIII)V
    .locals 4
    .param p1, "layer"    # I
    .param p2, "from"    # I
    .param p3, "to"    # I
    .param p4, "diff"    # I

    .prologue
    .line 474
    iget-object v3, p0, Ljp/co/omronsoft/openwnn/ComposingText;->mStringLayer:[Ljava/util/ArrayList;

    aget-object v2, v3, p1

    .line 475
    .local v2, "strLayer":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljp/co/omronsoft/openwnn/StrSegment;>;"
    if-eqz p4, :cond_0

    .line 476
    add-int/lit8 v0, p3, 0x1

    .local v0, "i":I
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 477
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljp/co/omronsoft/openwnn/StrSegment;

    .line 478
    .local v1, "ss":Ljp/co/omronsoft/openwnn/StrSegment;
    iget v3, v1, Ljp/co/omronsoft/openwnn/StrSegment;->from:I

    sub-int/2addr v3, p4

    iput v3, v1, Ljp/co/omronsoft/openwnn/StrSegment;->from:I

    .line 479
    iget v3, v1, Ljp/co/omronsoft/openwnn/StrSegment;->to:I

    sub-int/2addr v3, p4

    iput v3, v1, Ljp/co/omronsoft/openwnn/StrSegment;->to:I

    .line 476
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 482
    .end local v0    # "i":I
    .end local v1    # "ss":Ljp/co/omronsoft/openwnn/StrSegment;
    :cond_0
    move v0, p2

    .restart local v0    # "i":I
    :goto_1
    if-gt v0, p3, :cond_1

    .line 483
    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 482
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 485
    :cond_1
    return-void
.end method

.method private included(II)I
    .locals 5
    .param p1, "layer"    # I
    .param p2, "pos"    # I

    .prologue
    .line 536
    if-nez p2, :cond_1

    .line 537
    const/4 v0, 0x0

    .line 548
    :cond_0
    return v0

    .line 539
    :cond_1
    add-int/lit8 v3, p1, 0x1

    .line 541
    .local v3, "uplayer":I
    iget-object v4, p0, Ljp/co/omronsoft/openwnn/ComposingText;->mStringLayer:[Ljava/util/ArrayList;

    aget-object v2, v4, v3

    .line 542
    .local v2, "strLayer":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljp/co/omronsoft/openwnn/StrSegment;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 543
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljp/co/omronsoft/openwnn/StrSegment;

    .line 544
    .local v1, "ss":Ljp/co/omronsoft/openwnn/StrSegment;
    iget v4, v1, Ljp/co/omronsoft/openwnn/StrSegment;->from:I

    if-gt v4, p2, :cond_2

    iget v4, v1, Ljp/co/omronsoft/openwnn/StrSegment;->to:I

    if-le p2, v4, :cond_0

    .line 545
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private modifyUpper(IIII)V
    .locals 19
    .param p1, "layer"    # I
    .param p2, "mod_from"    # I
    .param p3, "mod_len"    # I
    .param p4, "org_len"    # I

    .prologue
    .line 165
    :goto_0
    const/4 v15, 0x2

    move/from16 v0, p1

    if-lt v0, v15, :cond_0

    .line 167
    return-void

    .line 170
    :cond_0
    add-int/lit8 v12, p1, 0x1

    .line 171
    .local v12, "uplayer":I
    move-object/from16 v0, p0

    iget-object v15, v0, Ljp/co/omronsoft/openwnn/ComposingText;->mStringLayer:[Ljava/util/ArrayList;

    aget-object v11, v15, v12

    .line 172
    .local v11, "strUplayer":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljp/co/omronsoft/openwnn/StrSegment;>;"
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-gtz v15, :cond_1

    .line 177
    new-instance v15, Ljp/co/omronsoft/openwnn/StrSegment;

    invoke-virtual/range {p0 .. p1}, Ljp/co/omronsoft/openwnn/ComposingText;->toString(I)Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljp/co/omronsoft/openwnn/ComposingText;->mStringLayer:[Ljava/util/ArrayList;

    move-object/from16 v18, v0

    aget-object v18, v18, p1

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    invoke-direct/range {v15 .. v18}, Ljp/co/omronsoft/openwnn/StrSegment;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v11, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    const/16 p2, 0x0

    const/16 p3, 0x1

    const/16 p4, 0x0

    move/from16 p1, v12

    goto :goto_0

    .line 179
    :cond_1
    if-nez p3, :cond_2

    const/4 v15, 0x0

    :goto_1
    add-int v7, p2, v15

    .line 183
    .local v7, "mod_to":I
    if-nez p4, :cond_3

    const/4 v15, 0x0

    :goto_2
    add-int v9, p2, v15

    .line 184
    .local v9, "org_to":I
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    invoke-virtual {v11, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljp/co/omronsoft/openwnn/StrSegment;

    .line 185
    .local v5, "last":Ljp/co/omronsoft/openwnn/StrSegment;
    iget v15, v5, Ljp/co/omronsoft/openwnn/StrSegment;->to:I

    move/from16 v0, p2

    if-ge v15, v0, :cond_4

    .line 187
    iput v7, v5, Ljp/co/omronsoft/openwnn/StrSegment;->to:I

    .line 188
    iget v15, v5, Ljp/co/omronsoft/openwnn/StrSegment;->from:I

    iget v0, v5, Ljp/co/omronsoft/openwnn/StrSegment;->to:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v16

    invoke-virtual {v0, v1, v15, v2}, Ljp/co/omronsoft/openwnn/ComposingText;->toString(III)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v5, Ljp/co/omronsoft/openwnn/StrSegment;->string:Ljava/lang/String;

    .line 189
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v15

    add-int/lit8 p2, v15, -0x1

    const/16 p3, 0x1

    const/16 p4, 0x1

    move/from16 p1, v12

    goto :goto_0

    .line 179
    .end local v5    # "last":Ljp/co/omronsoft/openwnn/StrSegment;
    .end local v7    # "mod_to":I
    .end local v9    # "org_to":I
    :cond_2
    add-int/lit8 v15, p3, -0x1

    goto :goto_1

    .line 183
    .restart local v7    # "mod_to":I
    :cond_3
    add-int/lit8 v15, p4, -0x1

    goto :goto_2

    .line 190
    .restart local v5    # "last":Ljp/co/omronsoft/openwnn/StrSegment;
    .restart local v9    # "org_to":I
    :cond_4
    const/4 v13, -0x1

    .line 194
    .local v13, "uplayer_mod_from":I
    const/4 v14, -0x1

    .line 195
    .local v14, "uplayer_org_to":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v4, v15, :cond_7

    .line 196
    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljp/co/omronsoft/openwnn/StrSegment;

    .line 197
    .local v10, "ss":Ljp/co/omronsoft/openwnn/StrSegment;
    iget v15, v10, Ljp/co/omronsoft/openwnn/StrSegment;->from:I

    move/from16 v0, p2

    if-le v15, v0, :cond_9

    .line 198
    iget v15, v10, Ljp/co/omronsoft/openwnn/StrSegment;->to:I

    if-gt v15, v9, :cond_6

    .line 200
    if-gez v13, :cond_5

    .line 201
    move v13, v4

    .line 203
    :cond_5
    move v14, v4

    .line 220
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 206
    :cond_6
    move v14, v4

    .line 226
    .end local v10    # "ss":Ljp/co/omronsoft/openwnn/StrSegment;
    :cond_7
    :goto_5
    sub-int v3, p3, p4

    .line 227
    .local v3, "diff":I
    if-ltz v13, :cond_e

    .line 229
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljp/co/omronsoft/openwnn/StrSegment;

    .line 230
    .restart local v10    # "ss":Ljp/co/omronsoft/openwnn/StrSegment;
    iget v6, v10, Ljp/co/omronsoft/openwnn/StrSegment;->to:I

    .line 231
    .local v6, "last_to":I
    add-int/lit8 v8, v13, 0x1

    .line 232
    .local v8, "next":I
    move v4, v8

    :goto_6
    if-gt v4, v14, :cond_b

    .line 233
    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "ss":Ljp/co/omronsoft/openwnn/StrSegment;
    check-cast v10, Ljp/co/omronsoft/openwnn/StrSegment;

    .line 234
    .restart local v10    # "ss":Ljp/co/omronsoft/openwnn/StrSegment;
    iget v15, v10, Ljp/co/omronsoft/openwnn/StrSegment;->to:I

    if-le v6, v15, :cond_8

    .line 235
    iget v6, v10, Ljp/co/omronsoft/openwnn/StrSegment;->to:I

    .line 237
    :cond_8
    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 232
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 210
    .end local v3    # "diff":I
    .end local v6    # "last_to":I
    .end local v8    # "next":I
    :cond_9
    if-nez p4, :cond_a

    iget v15, v10, Ljp/co/omronsoft/openwnn/StrSegment;->from:I

    move/from16 v0, p2

    if-ne v15, v0, :cond_a

    .line 212
    add-int/lit8 v13, v4, -0x1

    .line 213
    add-int/lit8 v14, v4, -0x1

    .line 214
    goto :goto_5

    .line 217
    :cond_a
    move v13, v4

    .line 218
    move v14, v4

    .line 219
    iget v15, v10, Ljp/co/omronsoft/openwnn/StrSegment;->to:I

    if-ge v15, v9, :cond_7

    goto :goto_4

    .line 239
    .restart local v3    # "diff":I
    .restart local v6    # "last_to":I
    .restart local v8    # "next":I
    :cond_b
    if-ge v6, v7, :cond_c

    .end local v7    # "mod_to":I
    :goto_7
    iput v7, v10, Ljp/co/omronsoft/openwnn/StrSegment;->to:I

    .line 241
    iget v15, v10, Ljp/co/omronsoft/openwnn/StrSegment;->from:I

    iget v0, v10, Ljp/co/omronsoft/openwnn/StrSegment;->to:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v16

    invoke-virtual {v0, v1, v15, v2}, Ljp/co/omronsoft/openwnn/ComposingText;->toString(III)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v10, Ljp/co/omronsoft/openwnn/StrSegment;->string:Ljava/lang/String;

    .line 243
    move v4, v8

    :goto_8
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v4, v15, :cond_d

    .line 244
    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "ss":Ljp/co/omronsoft/openwnn/StrSegment;
    check-cast v10, Ljp/co/omronsoft/openwnn/StrSegment;

    .line 245
    .restart local v10    # "ss":Ljp/co/omronsoft/openwnn/StrSegment;
    iget v15, v10, Ljp/co/omronsoft/openwnn/StrSegment;->from:I

    add-int/2addr v15, v3

    iput v15, v10, Ljp/co/omronsoft/openwnn/StrSegment;->from:I

    .line 246
    iget v15, v10, Ljp/co/omronsoft/openwnn/StrSegment;->to:I

    add-int/2addr v15, v3

    iput v15, v10, Ljp/co/omronsoft/openwnn/StrSegment;->to:I

    .line 243
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 239
    .restart local v7    # "mod_to":I
    :cond_c
    add-int v7, v6, v3

    goto :goto_7

    .line 249
    .end local v7    # "mod_to":I
    :cond_d
    const/16 p3, 0x1

    sub-int v15, v14, v13

    add-int/lit8 p4, v15, 0x1

    move/from16 p2, v13

    move/from16 p1, v12

    goto/16 :goto_0

    .line 250
    .end local v6    # "last_to":I
    .end local v8    # "next":I
    .end local v10    # "ss":Ljp/co/omronsoft/openwnn/StrSegment;
    .restart local v7    # "mod_to":I
    :cond_e
    new-instance v10, Ljp/co/omronsoft/openwnn/StrSegment;

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2, v7}, Ljp/co/omronsoft/openwnn/ComposingText;->toString(III)Ljava/lang/String;

    move-result-object v15

    move/from16 v0, p2

    invoke-direct {v10, v15, v0, v7}, Ljp/co/omronsoft/openwnn/StrSegment;-><init>(Ljava/lang/String;II)V

    .line 253
    .restart local v10    # "ss":Ljp/co/omronsoft/openwnn/StrSegment;
    const/4 v15, 0x0

    invoke-virtual {v11, v15, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 254
    const/4 v4, 0x1

    :goto_9
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v4, v15, :cond_f

    .line 255
    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "ss":Ljp/co/omronsoft/openwnn/StrSegment;
    check-cast v10, Ljp/co/omronsoft/openwnn/StrSegment;

    .line 256
    .restart local v10    # "ss":Ljp/co/omronsoft/openwnn/StrSegment;
    iget v15, v10, Ljp/co/omronsoft/openwnn/StrSegment;->from:I

    add-int/2addr v15, v3

    iput v15, v10, Ljp/co/omronsoft/openwnn/StrSegment;->from:I

    .line 257
    iget v15, v10, Ljp/co/omronsoft/openwnn/StrSegment;->to:I

    add-int/2addr v15, v3

    iput v15, v10, Ljp/co/omronsoft/openwnn/StrSegment;->to:I

    .line 254
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 259
    :cond_f
    const/16 p2, 0x0

    const/16 p3, 0x1

    const/16 p4, 0x0

    move/from16 p1, v12

    goto/16 :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    .line 624
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 625
    iget-object v1, p0, Ljp/co/omronsoft/openwnn/ComposingText;->mStringLayer:[Ljava/util/ArrayList;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 626
    iget-object v1, p0, Ljp/co/omronsoft/openwnn/ComposingText;->mCursor:[I

    const/4 v2, 0x0

    aput v2, v1, v0

    .line 624
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 628
    :cond_0
    return-void
.end method

.method public debugout()V
    .locals 7

    .prologue
    const/16 v6, 0x2c

    .line 76
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v4, 0x3

    if-ge v0, v4, :cond_1

    .line 77
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "ComposingText["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "  cur = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Ljp/co/omronsoft/openwnn/ComposingText;->mCursor:[I

    aget v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    .local v2, "sb":Ljava/lang/StringBuilder;
    iget-object v4, p0, Ljp/co/omronsoft/openwnn/ComposingText;->mStringLayer:[Ljava/util/ArrayList;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljp/co/omronsoft/openwnn/StrSegment;

    .line 81
    .local v3, "ss":Ljp/co/omronsoft/openwnn/StrSegment;
    const/16 v4, 0x28

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v3, Ljp/co/omronsoft/openwnn/StrSegment;->string:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 82
    iget v4, v3, Ljp/co/omronsoft/openwnn/StrSegment;->from:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 83
    iget v4, v3, Ljp/co/omronsoft/openwnn/StrSegment;->to:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x29

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 85
    .end local v3    # "ss":Ljp/co/omronsoft/openwnn/StrSegment;
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "  str = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 87
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    :cond_1
    return-void
.end method

.method public delete(IZ)I
    .locals 4
    .param p1, "layer"    # I
    .param p2, "rightside"    # Z

    .prologue
    .line 498
    iget-object v2, p0, Ljp/co/omronsoft/openwnn/ComposingText;->mCursor:[I

    aget v0, v2, p1

    .line 499
    .local v0, "cursor":I
    iget-object v2, p0, Ljp/co/omronsoft/openwnn/ComposingText;->mStringLayer:[Ljava/util/ArrayList;

    aget-object v1, v2, p1

    .line 501
    .local v1, "strLayer":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljp/co/omronsoft/openwnn/StrSegment;>;"
    if-nez p2, :cond_1

    if-lez v0, :cond_1

    .line 502
    add-int/lit8 v2, v0, -0x1

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p0, p1, v2, v3}, Ljp/co/omronsoft/openwnn/ComposingText;->deleteStrSegment(III)V

    .line 503
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0, p1, v2}, Ljp/co/omronsoft/openwnn/ComposingText;->setCursor(II)I

    .line 508
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    return v2

    .line 504
    :cond_1
    if-eqz p2, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 505
    invoke-virtual {p0, p1, v0, v0}, Ljp/co/omronsoft/openwnn/ComposingText;->deleteStrSegment(III)V

    .line 506
    invoke-virtual {p0, p1, v0}, Ljp/co/omronsoft/openwnn/ComposingText;->setCursor(II)I

    goto :goto_0
.end method

.method public deleteStrSegment(III)V
    .locals 16
    .param p1, "layer"    # I
    .param p2, "from"    # I
    .param p3, "to"    # I

    .prologue
    .line 386
    const/4 v13, 0x3

    new-array v4, v13, [I

    fill-array-data v4, :array_0

    .line 391
    .local v4, "fromL":[I
    const/4 v13, 0x3

    new-array v12, v13, [I

    fill-array-data v12, :array_1

    .line 397
    .local v12, "toL":[I
    move-object/from16 v0, p0

    iget-object v13, v0, Ljp/co/omronsoft/openwnn/ComposingText;->mStringLayer:[Ljava/util/ArrayList;

    const/4 v14, 0x2

    aget-object v10, v13, v14

    .line 398
    .local v10, "strLayer2":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljp/co/omronsoft/openwnn/StrSegment;>;"
    move-object/from16 v0, p0

    iget-object v13, v0, Ljp/co/omronsoft/openwnn/ComposingText;->mStringLayer:[Ljava/util/ArrayList;

    const/4 v14, 0x1

    aget-object v9, v13, v14

    .line 400
    .local v9, "strLayer1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljp/co/omronsoft/openwnn/StrSegment;>;"
    const/4 v13, 0x2

    move/from16 v0, p1

    if-ne v0, v13, :cond_3

    .line 401
    const/4 v13, 0x2

    aput p2, v4, v13

    .line 402
    const/4 v13, 0x2

    aput p3, v12, v13

    .line 403
    const/4 v14, 0x1

    move/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljp/co/omronsoft/openwnn/StrSegment;

    iget v13, v13, Ljp/co/omronsoft/openwnn/StrSegment;->from:I

    aput v13, v4, v14

    .line 404
    const/4 v14, 0x1

    move/from16 v0, p3

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljp/co/omronsoft/openwnn/StrSegment;

    iget v13, v13, Ljp/co/omronsoft/openwnn/StrSegment;->to:I

    aput v13, v12, v14

    .line 405
    const/4 v14, 0x0

    const/4 v13, 0x1

    aget v13, v4, v13

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljp/co/omronsoft/openwnn/StrSegment;

    iget v13, v13, Ljp/co/omronsoft/openwnn/StrSegment;->from:I

    aput v13, v4, v14

    .line 406
    const/4 v14, 0x0

    const/4 v13, 0x1

    aget v13, v12, v13

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljp/co/omronsoft/openwnn/StrSegment;

    iget v13, v13, Ljp/co/omronsoft/openwnn/StrSegment;->to:I

    aput v13, v12, v14

    .line 417
    :goto_0
    sub-int v13, p3, p2

    add-int/lit8 v3, v13, 0x1

    .line 418
    .local v3, "diff":I
    const/4 v6, 0x0

    .local v6, "lv":I
    :goto_1
    const/4 v13, 0x3

    if-ge v6, v13, :cond_8

    .line 419
    aget v13, v4, v6

    if-gez v13, :cond_a

    .line 420
    const/4 v1, -0x1

    .line 423
    .local v1, "boundary_from":I
    const/4 v2, -0x1

    .line 424
    .local v2, "boundary_to":I
    move-object/from16 v0, p0

    iget-object v13, v0, Ljp/co/omronsoft/openwnn/ComposingText;->mStringLayer:[Ljava/util/ArrayList;

    aget-object v8, v13, v6

    .line 425
    .local v8, "strLayer":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljp/co/omronsoft/openwnn/StrSegment;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v5, v13, :cond_6

    .line 426
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljp/co/omronsoft/openwnn/StrSegment;

    .line 427
    .local v7, "ss":Ljp/co/omronsoft/openwnn/StrSegment;
    iget v13, v7, Ljp/co/omronsoft/openwnn/StrSegment;->from:I

    add-int/lit8 v14, v6, -0x1

    aget v14, v4, v14

    if-lt v13, v14, :cond_0

    iget v13, v7, Ljp/co/omronsoft/openwnn/StrSegment;->from:I

    add-int/lit8 v14, v6, -0x1

    aget v14, v12, v14

    if-le v13, v14, :cond_1

    :cond_0
    iget v13, v7, Ljp/co/omronsoft/openwnn/StrSegment;->to:I

    add-int/lit8 v14, v6, -0x1

    aget v14, v4, v14

    if-lt v13, v14, :cond_5

    iget v13, v7, Ljp/co/omronsoft/openwnn/StrSegment;->to:I

    add-int/lit8 v14, v6, -0x1

    aget v14, v12, v14

    if-gt v13, v14, :cond_5

    .line 429
    :cond_1
    aget v13, v4, v6

    if-gez v13, :cond_2

    .line 430
    aput v5, v4, v6

    .line 431
    iget v1, v7, Ljp/co/omronsoft/openwnn/StrSegment;->from:I

    .line 433
    :cond_2
    aput v5, v12, v6

    .line 434
    iget v2, v7, Ljp/co/omronsoft/openwnn/StrSegment;->to:I

    .line 442
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 407
    .end local v1    # "boundary_from":I
    .end local v2    # "boundary_to":I
    .end local v3    # "diff":I
    .end local v5    # "i":I
    .end local v6    # "lv":I
    .end local v7    # "ss":Ljp/co/omronsoft/openwnn/StrSegment;
    .end local v8    # "strLayer":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljp/co/omronsoft/openwnn/StrSegment;>;"
    :cond_3
    const/4 v13, 0x1

    move/from16 v0, p1

    if-ne v0, v13, :cond_4

    .line 408
    const/4 v13, 0x1

    aput p2, v4, v13

    .line 409
    const/4 v13, 0x1

    aput p3, v12, v13

    .line 410
    const/4 v14, 0x0

    move/from16 v0, p2

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljp/co/omronsoft/openwnn/StrSegment;

    iget v13, v13, Ljp/co/omronsoft/openwnn/StrSegment;->from:I

    aput v13, v4, v14

    .line 411
    const/4 v14, 0x0

    move/from16 v0, p3

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljp/co/omronsoft/openwnn/StrSegment;

    iget v13, v13, Ljp/co/omronsoft/openwnn/StrSegment;->to:I

    aput v13, v12, v14

    goto :goto_0

    .line 413
    :cond_4
    const/4 v13, 0x0

    aput p2, v4, v13

    .line 414
    const/4 v13, 0x0

    aput p3, v12, v13

    goto :goto_0

    .line 435
    .restart local v1    # "boundary_from":I
    .restart local v2    # "boundary_to":I
    .restart local v3    # "diff":I
    .restart local v5    # "i":I
    .restart local v6    # "lv":I
    .restart local v7    # "ss":Ljp/co/omronsoft/openwnn/StrSegment;
    .restart local v8    # "strLayer":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljp/co/omronsoft/openwnn/StrSegment;>;"
    :cond_5
    iget v13, v7, Ljp/co/omronsoft/openwnn/StrSegment;->from:I

    add-int/lit8 v14, v6, -0x1

    aget v14, v4, v14

    if-gt v13, v14, :cond_9

    iget v13, v7, Ljp/co/omronsoft/openwnn/StrSegment;->to:I

    add-int/lit8 v14, v6, -0x1

    aget v14, v12, v14

    if-lt v13, v14, :cond_9

    .line 436
    iget v1, v7, Ljp/co/omronsoft/openwnn/StrSegment;->from:I

    .line 437
    iget v2, v7, Ljp/co/omronsoft/openwnn/StrSegment;->to:I

    .line 438
    aput v5, v4, v6

    .line 439
    aput v5, v12, v6

    .line 445
    .end local v7    # "ss":Ljp/co/omronsoft/openwnn/StrSegment;
    :cond_6
    add-int/lit8 v13, v6, -0x1

    aget v13, v4, v13

    if-ne v1, v13, :cond_7

    add-int/lit8 v13, v6, -0x1

    aget v13, v12, v13

    if-eq v2, v13, :cond_a

    .line 446
    :cond_7
    aget v13, v4, v6

    add-int/lit8 v13, v13, 0x1

    aget v14, v12, v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v13, v14, v3}, Ljp/co/omronsoft/openwnn/ComposingText;->deleteStrSegment0(IIII)V

    .line 447
    sub-int/2addr v2, v3

    .line 448
    const/4 v13, 0x1

    new-array v11, v13, [Ljp/co/omronsoft/openwnn/StrSegment;

    const/4 v13, 0x0

    new-instance v14, Ljp/co/omronsoft/openwnn/StrSegment;

    add-int/lit8 v15, v6, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljp/co/omronsoft/openwnn/ComposingText;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15, v1, v2}, Ljp/co/omronsoft/openwnn/StrSegment;-><init>(Ljava/lang/String;II)V

    aput-object v14, v11, v13

    .line 451
    .local v11, "tmp":[Ljp/co/omronsoft/openwnn/StrSegment;
    aget v13, v4, v6

    aget v14, v4, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v11, v13, v14}, Ljp/co/omronsoft/openwnn/ComposingText;->replaceStrSegment0(I[Ljp/co/omronsoft/openwnn/StrSegment;II)V

    .line 459
    .end local v1    # "boundary_from":I
    .end local v2    # "boundary_to":I
    .end local v5    # "i":I
    .end local v8    # "strLayer":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljp/co/omronsoft/openwnn/StrSegment;>;"
    .end local v11    # "tmp":[Ljp/co/omronsoft/openwnn/StrSegment;
    :cond_8
    return-void

    .line 441
    .restart local v1    # "boundary_from":I
    .restart local v2    # "boundary_to":I
    .restart local v5    # "i":I
    .restart local v7    # "ss":Ljp/co/omronsoft/openwnn/StrSegment;
    .restart local v8    # "strLayer":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljp/co/omronsoft/openwnn/StrSegment;>;"
    :cond_9
    iget v13, v7, Ljp/co/omronsoft/openwnn/StrSegment;->from:I

    add-int/lit8 v14, v6, -0x1

    aget v14, v12, v14

    if-gt v13, v14, :cond_6

    goto/16 :goto_3

    .line 454
    .end local v1    # "boundary_from":I
    .end local v2    # "boundary_to":I
    .end local v5    # "i":I
    .end local v7    # "ss":Ljp/co/omronsoft/openwnn/StrSegment;
    .end local v8    # "strLayer":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljp/co/omronsoft/openwnn/StrSegment;>;"
    :cond_a
    aget v13, v4, v6

    aget v14, v12, v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v13, v14, v3}, Ljp/co/omronsoft/openwnn/ComposingText;->deleteStrSegment0(IIII)V

    .line 457
    aget v13, v12, v6

    aget v14, v4, v6

    sub-int/2addr v13, v14

    add-int/lit8 v3, v13, 0x1

    .line 418
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 386
    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
    .end array-data

    .line 391
    :array_1
    .array-data 4
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method public getCursor(I)I
    .locals 1
    .param p1, "layer"    # I

    .prologue
    .line 606
    iget-object v0, p0, Ljp/co/omronsoft/openwnn/ComposingText;->mCursor:[I

    aget v0, v0, p1

    return v0
.end method

.method public getStrSegment(II)Ljp/co/omronsoft/openwnn/StrSegment;
    .locals 3
    .param p1, "layer"    # I
    .param p2, "pos"    # I

    .prologue
    const/4 v2, 0x0

    .line 101
    :try_start_0
    iget-object v1, p0, Ljp/co/omronsoft/openwnn/ComposingText;->mStringLayer:[Ljava/util/ArrayList;

    aget-object v0, v1, p1

    .line 102
    .local v0, "strLayer":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljp/co/omronsoft/openwnn/StrSegment;>;"
    if-gez p2, :cond_0

    .line 103
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 p2, v1, -0x1

    .line 105
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p2, v1, :cond_1

    if-gez p2, :cond_2

    :cond_1
    move-object v1, v2

    .line 110
    .end local v0    # "strLayer":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljp/co/omronsoft/openwnn/StrSegment;>;"
    :goto_0
    return-object v1

    .line 108
    .restart local v0    # "strLayer":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljp/co/omronsoft/openwnn/StrSegment;>;"
    :cond_2
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljp/co/omronsoft/openwnn/StrSegment;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 110
    .end local v0    # "strLayer":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljp/co/omronsoft/openwnn/StrSegment;>;"
    :catch_0
    move-exception v1

    move-object v1, v2

    goto :goto_0
.end method

.method public getStringLayer(I)Ljava/util/ArrayList;
    .locals 1
    .param p1, "layer"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljp/co/omronsoft/openwnn/StrSegment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 520
    :try_start_0
    iget-object v0, p0, Ljp/co/omronsoft/openwnn/ComposingText;->mStringLayer:[Ljava/util/ArrayList;

    aget-object v0, v0, p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 522
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public insertStrSegment(IILjp/co/omronsoft/openwnn/StrSegment;)V
    .locals 10
    .param p1, "layer1"    # I
    .param p2, "layer2"    # I
    .param p3, "str"    # Ljp/co/omronsoft/openwnn/StrSegment;

    .prologue
    .line 294
    iget-object v7, p0, Ljp/co/omronsoft/openwnn/ComposingText;->mStringLayer:[Ljava/util/ArrayList;

    aget-object v7, v7, p1

    iget-object v8, p0, Ljp/co/omronsoft/openwnn/ComposingText;->mCursor:[I

    aget v8, v8, p1

    invoke-virtual {v7, v8, p3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 295
    iget-object v7, p0, Ljp/co/omronsoft/openwnn/ComposingText;->mCursor:[I

    aget v8, v7, p1

    add-int/lit8 v8, v8, 0x1

    aput v8, v7, p1

    .line 297
    add-int/lit8 v1, p1, 0x1

    .local v1, "i":I
    :goto_0
    if-gt v1, p2, :cond_1

    .line 298
    iget-object v7, p0, Ljp/co/omronsoft/openwnn/ComposingText;->mCursor:[I

    add-int/lit8 v8, v1, -0x1

    aget v7, v7, v8

    add-int/lit8 v3, v7, -0x1

    .line 299
    .local v3, "pos":I
    new-instance v6, Ljp/co/omronsoft/openwnn/StrSegment;

    iget-object v7, p3, Ljp/co/omronsoft/openwnn/StrSegment;->string:Ljava/lang/String;

    invoke-direct {v6, v7, v3, v3}, Ljp/co/omronsoft/openwnn/StrSegment;-><init>(Ljava/lang/String;II)V

    .line 300
    .local v6, "tmp":Ljp/co/omronsoft/openwnn/StrSegment;
    iget-object v7, p0, Ljp/co/omronsoft/openwnn/ComposingText;->mStringLayer:[Ljava/util/ArrayList;

    aget-object v5, v7, v1

    .line 301
    .local v5, "strLayer":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljp/co/omronsoft/openwnn/StrSegment;>;"
    iget-object v7, p0, Ljp/co/omronsoft/openwnn/ComposingText;->mCursor:[I

    aget v7, v7, v1

    invoke-virtual {v5, v7, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 302
    iget-object v7, p0, Ljp/co/omronsoft/openwnn/ComposingText;->mCursor:[I

    aget v8, v7, v1

    add-int/lit8 v8, v8, 0x1

    aput v8, v7, v1

    .line 303
    iget-object v7, p0, Ljp/co/omronsoft/openwnn/ComposingText;->mCursor:[I

    aget v2, v7, v1

    .local v2, "j":I
    :goto_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_0

    .line 304
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljp/co/omronsoft/openwnn/StrSegment;

    .line 305
    .local v4, "ss":Ljp/co/omronsoft/openwnn/StrSegment;
    iget v7, v4, Ljp/co/omronsoft/openwnn/StrSegment;->from:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v4, Ljp/co/omronsoft/openwnn/StrSegment;->from:I

    .line 306
    iget v7, v4, Ljp/co/omronsoft/openwnn/StrSegment;->to:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v4, Ljp/co/omronsoft/openwnn/StrSegment;->to:I

    .line 303
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 297
    .end local v4    # "ss":Ljp/co/omronsoft/openwnn/StrSegment;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 309
    .end local v2    # "j":I
    .end local v3    # "pos":I
    .end local v5    # "strLayer":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljp/co/omronsoft/openwnn/StrSegment;>;"
    .end local v6    # "tmp":Ljp/co/omronsoft/openwnn/StrSegment;
    :cond_1
    iget-object v7, p0, Ljp/co/omronsoft/openwnn/ComposingText;->mCursor:[I

    aget v0, v7, p2

    .line 310
    .local v0, "cursor":I
    add-int/lit8 v7, v0, -0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-direct {p0, p2, v7, v8, v9}, Ljp/co/omronsoft/openwnn/ComposingText;->modifyUpper(IIII)V

    .line 311
    invoke-virtual {p0, p2, v0}, Ljp/co/omronsoft/openwnn/ComposingText;->setCursor(II)I

    .line 312
    return-void
.end method

.method public insertStrSegment(ILjp/co/omronsoft/openwnn/StrSegment;)V
    .locals 3
    .param p1, "layer"    # I
    .param p2, "str"    # Ljp/co/omronsoft/openwnn/StrSegment;

    .prologue
    .line 274
    iget-object v1, p0, Ljp/co/omronsoft/openwnn/ComposingText;->mCursor:[I

    aget v0, v1, p1

    .line 275
    .local v0, "cursor":I
    iget-object v1, p0, Ljp/co/omronsoft/openwnn/ComposingText;->mStringLayer:[Ljava/util/ArrayList;

    aget-object v1, v1, p1

    invoke-virtual {v1, v0, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 276
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Ljp/co/omronsoft/openwnn/ComposingText;->modifyUpper(IIII)V

    .line 277
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, p1, v1}, Ljp/co/omronsoft/openwnn/ComposingText;->setCursor(II)I

    .line 278
    return-void
.end method

.method public moveCursor(II)I
    .locals 2
    .param p1, "layer"    # I
    .param p2, "diff"    # I

    .prologue
    .line 593
    iget-object v1, p0, Ljp/co/omronsoft/openwnn/ComposingText;->mCursor:[I

    aget v1, v1, p1

    add-int v0, v1, p2

    .line 595
    .local v0, "c":I
    invoke-virtual {p0, p1, v0}, Ljp/co/omronsoft/openwnn/ComposingText;->setCursor(II)I

    move-result v1

    return v1
.end method

.method public replaceStrSegment(I[Ljp/co/omronsoft/openwnn/StrSegment;)V
    .locals 3
    .param p1, "layer"    # I
    .param p2, "str"    # [Ljp/co/omronsoft/openwnn/StrSegment;

    .prologue
    .line 370
    iget-object v1, p0, Ljp/co/omronsoft/openwnn/ComposingText;->mCursor:[I

    aget v0, v1, p1

    .line 371
    .local v0, "cursor":I
    add-int/lit8 v1, v0, -0x1

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0, p1, p2, v1, v2}, Ljp/co/omronsoft/openwnn/ComposingText;->replaceStrSegment0(I[Ljp/co/omronsoft/openwnn/StrSegment;II)V

    .line 372
    array-length v1, p2

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, p1, v1}, Ljp/co/omronsoft/openwnn/ComposingText;->setCursor(II)I

    .line 373
    return-void
.end method

.method public replaceStrSegment(I[Ljp/co/omronsoft/openwnn/StrSegment;I)V
    .locals 3
    .param p1, "layer"    # I
    .param p2, "str"    # [Ljp/co/omronsoft/openwnn/StrSegment;
    .param p3, "num"    # I

    .prologue
    .line 356
    iget-object v1, p0, Ljp/co/omronsoft/openwnn/ComposingText;->mCursor:[I

    aget v0, v1, p1

    .line 357
    .local v0, "cursor":I
    sub-int v1, v0, p3

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0, p1, p2, v1, v2}, Ljp/co/omronsoft/openwnn/ComposingText;->replaceStrSegment0(I[Ljp/co/omronsoft/openwnn/StrSegment;II)V

    .line 358
    array-length v1, p2

    add-int/2addr v1, v0

    sub-int/2addr v1, p3

    invoke-virtual {p0, p1, v1}, Ljp/co/omronsoft/openwnn/ComposingText;->setCursor(II)I

    .line 359
    return-void
.end method

.method protected replaceStrSegment0(I[Ljp/co/omronsoft/openwnn/StrSegment;II)V
    .locals 4
    .param p1, "layer"    # I
    .param p2, "str"    # [Ljp/co/omronsoft/openwnn/StrSegment;
    .param p3, "from"    # I
    .param p4, "to"    # I

    .prologue
    .line 327
    iget-object v2, p0, Ljp/co/omronsoft/openwnn/ComposingText;->mStringLayer:[Ljava/util/ArrayList;

    aget-object v1, v2, p1

    .line 329
    .local v1, "strLayer":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljp/co/omronsoft/openwnn/StrSegment;>;"
    if-ltz p3, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le p3, v2, :cond_1

    .line 330
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p3

    .line 332
    :cond_1
    if-ltz p4, :cond_2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le p4, v2, :cond_3

    .line 333
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p4

    .line 335
    :cond_3
    move v0, p3

    .local v0, "i":I
    :goto_0
    if-gt v0, p4, :cond_4

    .line 336
    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 335
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 338
    :cond_4
    array-length v2, p2

    add-int/lit8 v0, v2, -0x1

    :goto_1
    if-ltz v0, :cond_5

    .line 339
    aget-object v2, p2, v0

    invoke-virtual {v1, p3, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 338
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 342
    :cond_5
    array-length v2, p2

    sub-int v3, p4, p3

    add-int/lit8 v3, v3, 0x1

    invoke-direct {p0, p1, p3, v2, v3}, Ljp/co/omronsoft/openwnn/ComposingText;->modifyUpper(IIII)V

    .line 343
    return-void
.end method

.method public setCursor(II)I
    .locals 6
    .param p1, "layer"    # I
    .param p2, "pos"    # I

    .prologue
    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 561
    iget-object v2, p0, Ljp/co/omronsoft/openwnn/ComposingText;->mStringLayer:[Ljava/util/ArrayList;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le p2, v2, :cond_0

    .line 562
    iget-object v2, p0, Ljp/co/omronsoft/openwnn/ComposingText;->mStringLayer:[Ljava/util/ArrayList;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p2

    .line 564
    :cond_0
    if-gez p2, :cond_1

    .line 565
    const/4 p2, 0x0

    .line 567
    :cond_1
    if-nez p1, :cond_2

    .line 568
    iget-object v2, p0, Ljp/co/omronsoft/openwnn/ComposingText;->mCursor:[I

    aput p2, v2, v1

    .line 569
    iget-object v2, p0, Ljp/co/omronsoft/openwnn/ComposingText;->mCursor:[I

    invoke-direct {p0, v1, p2}, Ljp/co/omronsoft/openwnn/ComposingText;->included(II)I

    move-result v1

    aput v1, v2, v4

    .line 570
    iget-object v2, p0, Ljp/co/omronsoft/openwnn/ComposingText;->mCursor:[I

    iget-object v1, p0, Ljp/co/omronsoft/openwnn/ComposingText;->mCursor:[I

    aget v1, v1, v4

    invoke-direct {p0, v4, v1}, Ljp/co/omronsoft/openwnn/ComposingText;->included(II)I

    move-result v1

    .line 578
    :goto_0
    aput v1, v2, v0

    .line 580
    :goto_1
    return p2

    .line 571
    :cond_2
    if-ne p1, v4, :cond_4

    .line 572
    iget-object v2, p0, Ljp/co/omronsoft/openwnn/ComposingText;->mCursor:[I

    invoke-direct {p0, v4, p2}, Ljp/co/omronsoft/openwnn/ComposingText;->included(II)I

    move-result v3

    aput v3, v2, v0

    .line 573
    iget-object v0, p0, Ljp/co/omronsoft/openwnn/ComposingText;->mCursor:[I

    aput p2, v0, v4

    .line 574
    iget-object v2, p0, Ljp/co/omronsoft/openwnn/ComposingText;->mCursor:[I

    if-lez p2, :cond_3

    iget-object v0, p0, Ljp/co/omronsoft/openwnn/ComposingText;->mStringLayer:[Ljava/util/ArrayList;

    aget-object v0, v0, v4

    add-int/lit8 v3, p2, -0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljp/co/omronsoft/openwnn/StrSegment;

    iget v0, v0, Ljp/co/omronsoft/openwnn/StrSegment;->to:I

    add-int/lit8 v0, v0, 0x1

    :goto_2
    aput v0, v2, v1

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2

    .line 576
    :cond_4
    iget-object v2, p0, Ljp/co/omronsoft/openwnn/ComposingText;->mCursor:[I

    aput p2, v2, v0

    .line 577
    iget-object v2, p0, Ljp/co/omronsoft/openwnn/ComposingText;->mCursor:[I

    if-lez p2, :cond_5

    iget-object v3, p0, Ljp/co/omronsoft/openwnn/ComposingText;->mStringLayer:[Ljava/util/ArrayList;

    aget-object v0, v3, v0

    add-int/lit8 v3, p2, -0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljp/co/omronsoft/openwnn/StrSegment;

    iget v0, v0, Ljp/co/omronsoft/openwnn/StrSegment;->to:I

    add-int/lit8 v0, v0, 0x1

    :goto_3
    aput v0, v2, v4

    .line 578
    iget-object v2, p0, Ljp/co/omronsoft/openwnn/ComposingText;->mCursor:[I

    iget-object v0, p0, Ljp/co/omronsoft/openwnn/ComposingText;->mCursor:[I

    aget v0, v0, v4

    if-lez v0, :cond_6

    iget-object v0, p0, Ljp/co/omronsoft/openwnn/ComposingText;->mStringLayer:[Ljava/util/ArrayList;

    aget-object v0, v0, v4

    iget-object v3, p0, Ljp/co/omronsoft/openwnn/ComposingText;->mCursor:[I

    aget v3, v3, v4

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljp/co/omronsoft/openwnn/StrSegment;

    iget v0, v0, Ljp/co/omronsoft/openwnn/StrSegment;->to:I

    add-int/lit8 v0, v0, 0x1

    move v5, v0

    move v0, v1

    move v1, v5

    goto :goto_0

    :cond_5
    move v0, v1

    .line 577
    goto :goto_3

    :cond_6
    move v0, v1

    .line 578
    goto :goto_0
.end method

.method public size(I)I
    .locals 1
    .param p1, "layer"    # I

    .prologue
    .line 617
    iget-object v0, p0, Ljp/co/omronsoft/openwnn/ComposingText;->mStringLayer:[Ljava/util/ArrayList;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public toString(I)Ljava/lang/String;
    .locals 2
    .param p1, "layer"    # I

    .prologue
    .line 148
    const/4 v0, 0x0

    iget-object v1, p0, Ljp/co/omronsoft/openwnn/ComposingText;->mStringLayer:[Ljava/util/ArrayList;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, p1, v0, v1}, Ljp/co/omronsoft/openwnn/ComposingText;->toString(III)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(III)Ljava/lang/String;
    .locals 5
    .param p1, "layer"    # I
    .param p2, "from"    # I
    .param p3, "to"    # I

    .prologue
    .line 127
    :try_start_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 128
    .local v0, "buf":Ljava/lang/StringBuffer;
    iget-object v4, p0, Ljp/co/omronsoft/openwnn/ComposingText;->mStringLayer:[Ljava/util/ArrayList;

    aget-object v3, v4, p1

    .line 130
    .local v3, "strLayer":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljp/co/omronsoft/openwnn/StrSegment;>;"
    move v1, p2

    .local v1, "i":I
    :goto_0
    if-gt v1, p3, :cond_0

    .line 131
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljp/co/omronsoft/openwnn/StrSegment;

    .line 132
    .local v2, "ss":Ljp/co/omronsoft/openwnn/StrSegment;
    iget-object v4, v2, Ljp/co/omronsoft/openwnn/StrSegment;->string:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 130
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 134
    .end local v2    # "ss":Ljp/co/omronsoft/openwnn/StrSegment;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 136
    .end local v0    # "buf":Ljava/lang/StringBuffer;
    .end local v1    # "i":I
    .end local v3    # "strLayer":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljp/co/omronsoft/openwnn/StrSegment;>;"
    :goto_1
    return-object v4

    :catch_0
    move-exception v4

    const/4 v4, 0x0

    goto :goto_1
.end method
