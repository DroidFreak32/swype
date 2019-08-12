.class public Lcom/nuance/input/swypecorelib/TextDifference;
.super Ljava/lang/Object;
.source "TextDifference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/input/swypecorelib/TextDifference$1;,
        Lcom/nuance/input/swypecorelib/TextDifference$DiffPos;,
        Lcom/nuance/input/swypecorelib/TextDifference$DiffType;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TextDifference"


# instance fields
.field protected final diffPos:Lcom/nuance/input/swypecorelib/TextDifference$DiffPos;

.field protected diffStartRelative:I

.field protected final diffType:Lcom/nuance/input/swypecorelib/TextDifference$DiffType;

.field protected final hasCorrectionDiff:Z

.field protected final stringAfter:Ljava/lang/String;

.field protected final stringBefore:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/nuance/input/swypecorelib/TextDifference$DiffType;Lcom/nuance/input/swypecorelib/TextDifference$DiffPos;ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "dt"    # Lcom/nuance/input/swypecorelib/TextDifference$DiffType;
    .param p2, "dp"    # Lcom/nuance/input/swypecorelib/TextDifference$DiffPos;
    .param p3, "diffStartRelative"    # I
    .param p4, "strBefore"    # Ljava/lang/String;
    .param p5, "strAfter"    # Ljava/lang/String;
    .param p6, "hasCorrectionDiff"    # Z

    .prologue
    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    iput-object p1, p0, Lcom/nuance/input/swypecorelib/TextDifference;->diffType:Lcom/nuance/input/swypecorelib/TextDifference$DiffType;

    .line 192
    iput-object p2, p0, Lcom/nuance/input/swypecorelib/TextDifference;->diffPos:Lcom/nuance/input/swypecorelib/TextDifference$DiffPos;

    .line 193
    iput p3, p0, Lcom/nuance/input/swypecorelib/TextDifference;->diffStartRelative:I

    .line 194
    iput-object p4, p0, Lcom/nuance/input/swypecorelib/TextDifference;->stringBefore:Ljava/lang/String;

    .line 195
    iput-object p5, p0, Lcom/nuance/input/swypecorelib/TextDifference;->stringAfter:Ljava/lang/String;

    .line 196
    iput-boolean p6, p0, Lcom/nuance/input/swypecorelib/TextDifference;->hasCorrectionDiff:Z

    .line 198
    return-void
.end method

.method protected static addition(Lcom/nuance/input/swypecorelib/TextDifference$DiffPos;ILjava/lang/String;Z)Lcom/nuance/input/swypecorelib/TextDifference;
    .locals 7
    .param p0, "dp"    # Lcom/nuance/input/swypecorelib/TextDifference$DiffPos;
    .param p1, "diffStartRelative"    # I
    .param p2, "str"    # Ljava/lang/String;
    .param p3, "hasCorrectionDiff"    # Z

    .prologue
    .line 116
    new-instance v0, Lcom/nuance/input/swypecorelib/TextDifference;

    sget-object v1, Lcom/nuance/input/swypecorelib/TextDifference$DiffType;->ADDITION:Lcom/nuance/input/swypecorelib/TextDifference$DiffType;

    const-string v4, ""

    move-object v2, p0

    move v3, p1

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/nuance/input/swypecorelib/TextDifference;-><init>(Lcom/nuance/input/swypecorelib/TextDifference$DiffType;Lcom/nuance/input/swypecorelib/TextDifference$DiffPos;ILjava/lang/String;Ljava/lang/String;Z)V

    return-object v0
.end method

.method protected static deletion(Lcom/nuance/input/swypecorelib/TextDifference$DiffPos;ILjava/lang/String;Z)Lcom/nuance/input/swypecorelib/TextDifference;
    .locals 7
    .param p0, "dp"    # Lcom/nuance/input/swypecorelib/TextDifference$DiffPos;
    .param p1, "diffStartRelative"    # I
    .param p2, "str"    # Ljava/lang/String;
    .param p3, "hasCorrectionDiff"    # Z

    .prologue
    .line 133
    new-instance v0, Lcom/nuance/input/swypecorelib/TextDifference;

    sget-object v1, Lcom/nuance/input/swypecorelib/TextDifference$DiffType;->DELETION:Lcom/nuance/input/swypecorelib/TextDifference$DiffType;

    const-string v5, ""

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/nuance/input/swypecorelib/TextDifference;-><init>(Lcom/nuance/input/swypecorelib/TextDifference$DiffType;Lcom/nuance/input/swypecorelib/TextDifference$DiffPos;ILjava/lang/String;Ljava/lang/String;Z)V

    return-object v0
.end method

.method private findCorrectionsToRemove(Lcom/nuance/input/swypecorelib/TextRegion;ILcom/nuance/input/swypecorelib/TextRegion;IILjava/util/List;)V
    .locals 11
    .param p1, "textRegion1"    # Lcom/nuance/input/swypecorelib/TextRegion;
    .param p2, "start1Relative"    # I
    .param p3, "textRegion2"    # Lcom/nuance/input/swypecorelib/TextRegion;
    .param p4, "start2Relative"    # I
    .param p5, "len"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nuance/input/swypecorelib/TextRegion;",
            "I",
            "Lcom/nuance/input/swypecorelib/TextRegion;",
            "II",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/input/swypecorelib/Correction;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 691
    .local p6, "results":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/input/swypecorelib/Correction;>;"
    move/from16 v0, p5

    invoke-virtual {p1, p2, v0}, Lcom/nuance/input/swypecorelib/TextRegion;->findCorrections(II)Ljava/util/List;

    move-result-object v3

    .line 692
    .local v3, "corr1":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/input/swypecorelib/Correction;>;"
    invoke-virtual/range {p3 .. p5}, Lcom/nuance/input/swypecorelib/TextRegion;->findCorrections(II)Ljava/util/List;

    move-result-object v4

    .line 696
    .local v4, "corr2":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/input/swypecorelib/Correction;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    if-eq v6, v9, :cond_3

    .line 697
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/input/swypecorelib/Correction;

    .line 699
    .local v1, "c1":Lcom/nuance/input/swypecorelib/Correction;
    const/4 v5, 0x0

    .line 700
    .local v5, "foundMatch":Z
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    if-eq v7, v9, :cond_0

    .line 701
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/input/swypecorelib/Correction;

    .line 702
    .local v2, "c2":Lcom/nuance/input/swypecorelib/Correction;
    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/Correction;->getOffset()I

    move-result v9

    sub-int/2addr v9, p2

    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/Correction;->getOffset()I

    move-result v10

    sub-int/2addr v10, p4

    if-ne v9, v10, :cond_2

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/Correction;->getLength()I

    move-result v9

    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/Correction;->getLength()I

    move-result v10

    if-ne v9, v10, :cond_2

    .line 704
    const/4 v5, 0x1

    .line 708
    .end local v2    # "c2":Lcom/nuance/input/swypecorelib/Correction;
    :cond_0
    if-nez v5, :cond_1

    .line 709
    new-instance v8, Lcom/nuance/input/swypecorelib/Correction;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/Correction;->getOffset()I

    move-result v9

    add-int/2addr v9, p4

    sub-int/2addr v9, p2

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/Correction;->getLength()I

    move-result v10

    invoke-direct {v8, v9, v10}, Lcom/nuance/input/swypecorelib/Correction;-><init>(II)V

    .line 710
    .local v8, "toRemove":Lcom/nuance/input/swypecorelib/Correction;
    move-object/from16 v0, p6

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 696
    .end local v8    # "toRemove":Lcom/nuance/input/swypecorelib/Correction;
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 700
    .restart local v2    # "c2":Lcom/nuance/input/swypecorelib/Correction;
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 714
    .end local v1    # "c1":Lcom/nuance/input/swypecorelib/Correction;
    .end local v2    # "c2":Lcom/nuance/input/swypecorelib/Correction;
    .end local v5    # "foundMatch":Z
    .end local v7    # "j":I
    :cond_3
    return-void
.end method

.method public static getDifference(Ljava/lang/String;Lcom/nuance/input/swypecorelib/TextRegion;Ljava/lang/String;Lcom/nuance/input/swypecorelib/TextRegion;)Lcom/nuance/input/swypecorelib/TextDifference;
    .locals 28
    .param p0, "txt1"    # Ljava/lang/String;
    .param p1, "region1"    # Lcom/nuance/input/swypecorelib/TextRegion;
    .param p2, "txt2"    # Ljava/lang/String;
    .param p3, "region2"    # Lcom/nuance/input/swypecorelib/TextRegion;

    .prologue
    .line 461
    invoke-virtual/range {p1 .. p1}, Lcom/nuance/input/swypecorelib/TextRegion;->getOffset()I

    move-result v20

    .line 462
    .local v20, "offset1":I
    invoke-virtual/range {p3 .. p3}, Lcom/nuance/input/swypecorelib/TextRegion;->getOffset()I

    move-result v21

    .line 463
    .local v21, "offset2":I
    invoke-virtual/range {p1 .. p1}, Lcom/nuance/input/swypecorelib/TextRegion;->getLength()I

    move-result v17

    .line 464
    .local v17, "len1":I
    invoke-virtual/range {p3 .. p3}, Lcom/nuance/input/swypecorelib/TextRegion;->getLength()I

    move-result v18

    .line 466
    .local v18, "len2":I
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v24

    add-int v25, v20, v17

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_0

    .line 467
    const-string v24, "TextDifference"

    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, "Unexpected string length for txt1 & region1: expected at least"

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int v26, v20, v17

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ", got: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "text=["

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "]"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    const/16 v24, 0x0

    .line 683
    :goto_0
    return-object v24

    .line 472
    :cond_0
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v24

    add-int v25, v21, v18

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_1

    .line 473
    const-string v24, "TextDifference"

    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, "Unexpected string length for txt2 & region2: expected at least"

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int v26, v21, v18

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ", got: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    const/16 v24, 0x0

    goto :goto_0

    .line 477
    :cond_1
    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->min(II)I

    move-result v19

    .line 479
    .local v19, "minLen":I
    const/16 v22, 0x0

    .line 480
    .local v22, "start":I
    const/16 v23, 0x0

    .line 483
    .local v23, "startWs":I
    const/4 v14, 0x0

    .local v14, "index":I
    :goto_1
    move/from16 v0, v19

    if-eq v14, v0, :cond_3

    .line 484
    add-int v24, v20, v14

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 485
    .local v6, "c1":C
    add-int v24, v21, v14

    move-object/from16 v0, p2

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 486
    .local v7, "c2":C
    if-ne v6, v7, :cond_3

    .line 487
    add-int/lit8 v22, v22, 0x1

    .line 490
    invoke-static {v6}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v24

    if-eqz v24, :cond_2

    .line 491
    move/from16 v23, v22

    .line 483
    :cond_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 496
    .end local v6    # "c1":C
    .end local v7    # "c2":C
    :cond_3
    move/from16 v0, v22

    move/from16 v1, v19

    if-ne v0, v1, :cond_4

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    .line 497
    const/16 v24, 0x0

    goto :goto_0

    .line 502
    :cond_4
    move/from16 v0, v23

    move/from16 v1, v22

    if-eq v0, v1, :cond_5

    .line 503
    move/from16 v0, v22

    move/from16 v1, v17

    if-ge v0, v1, :cond_6

    move/from16 v0, v22

    move/from16 v1, v18

    if-lt v0, v1, :cond_6

    .line 504
    add-int v24, v20, v22

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v24

    .line 505
    invoke-static/range {v24 .. v24}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v24

    if-eqz v24, :cond_5

    .line 506
    move/from16 v23, v22

    .line 521
    :cond_5
    :goto_2
    move/from16 v22, v23

    move/from16 v0, v23

    move/from16 v1, v19

    if-ne v0, v1, :cond_b

    .line 522
    move/from16 v0, v17

    move/from16 v1, v19

    if-le v0, v1, :cond_7

    .line 523
    add-int v5, v19, v20

    .line 524
    .local v5, "begin":I
    sub-int v24, v17, v19

    add-int v9, v5, v24

    .line 525
    .local v9, "end":I
    sget-object v24, Lcom/nuance/input/swypecorelib/TextDifference$DiffType;->DELETION:Lcom/nuance/input/swypecorelib/TextDifference$DiffType;

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, v24

    move/from16 v3, v19

    invoke-static {v0, v1, v2, v3}, Lcom/nuance/input/swypecorelib/TextDifference;->hasCorrectionDifferenceEnd(Lcom/nuance/input/swypecorelib/TextRegion;Lcom/nuance/input/swypecorelib/TextRegion;Lcom/nuance/input/swypecorelib/TextDifference$DiffType;I)Z

    move-result v13

    .line 528
    .local v13, "hasCorrectionDiff":Z
    sget-object v24, Lcom/nuance/input/swypecorelib/TextDifference$DiffPos;->END:Lcom/nuance/input/swypecorelib/TextDifference$DiffPos;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move/from16 v1, v19

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2, v13}, Lcom/nuance/input/swypecorelib/TextDifference;->deletion(Lcom/nuance/input/swypecorelib/TextDifference$DiffPos;ILjava/lang/String;Z)Lcom/nuance/input/swypecorelib/TextDifference;

    move-result-object v24

    goto/16 :goto_0

    .line 509
    .end local v5    # "begin":I
    .end local v9    # "end":I
    .end local v13    # "hasCorrectionDiff":Z
    :cond_6
    move/from16 v0, v22

    move/from16 v1, v18

    if-ge v0, v1, :cond_5

    move/from16 v0, v22

    move/from16 v1, v17

    if-lt v0, v1, :cond_5

    .line 510
    add-int v24, v21, v22

    move-object/from16 v0, p2

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v24

    .line 511
    invoke-static/range {v24 .. v24}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v24

    if-eqz v24, :cond_5

    .line 512
    move/from16 v23, v22

    goto :goto_2

    .line 531
    :cond_7
    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_a

    .line 532
    add-int v5, v19, v21

    .line 533
    .restart local v5    # "begin":I
    sub-int v24, v18, v19

    add-int v9, v5, v24

    .line 534
    .restart local v9    # "end":I
    sget-object v24, Lcom/nuance/input/swypecorelib/TextDifference$DiffType;->ADDITION:Lcom/nuance/input/swypecorelib/TextDifference$DiffType;

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, v24

    move/from16 v3, v19

    invoke-static {v0, v1, v2, v3}, Lcom/nuance/input/swypecorelib/TextDifference;->hasCorrectionDifferenceEnd(Lcom/nuance/input/swypecorelib/TextRegion;Lcom/nuance/input/swypecorelib/TextRegion;Lcom/nuance/input/swypecorelib/TextDifference$DiffType;I)Z

    move-result v13

    .line 536
    .restart local v13    # "hasCorrectionDiff":Z
    if-gt v5, v9, :cond_8

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v24

    move/from16 v0, v24

    if-le v9, v0, :cond_9

    .line 537
    :cond_8
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 539
    :cond_9
    sget-object v24, Lcom/nuance/input/swypecorelib/TextDifference$DiffPos;->END:Lcom/nuance/input/swypecorelib/TextDifference$DiffPos;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move/from16 v1, v19

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2, v13}, Lcom/nuance/input/swypecorelib/TextDifference;->addition(Lcom/nuance/input/swypecorelib/TextDifference$DiffPos;ILjava/lang/String;Z)Lcom/nuance/input/swypecorelib/TextDifference;

    move-result-object v24

    goto/16 :goto_0

    .line 543
    .end local v5    # "begin":I
    .end local v9    # "end":I
    .end local v13    # "hasCorrectionDiff":Z
    :cond_a
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 547
    :cond_b
    const/4 v4, 0x0

    .line 548
    .local v4, "backCount":I
    const/4 v8, 0x0

    .line 549
    .local v8, "count":I
    add-int v24, v20, v17

    add-int/lit8 v15, v24, -0x1

    .line 550
    .local v15, "index1":I
    add-int v24, v21, v18

    add-int/lit8 v16, v24, -0x1

    .line 552
    .local v16, "index2":I
    :cond_c
    :goto_3
    add-int v24, v22, v8

    move/from16 v0, v24

    move/from16 v1, v19

    if-ge v0, v1, :cond_d

    .line 554
    move/from16 v0, v20

    if-lt v15, v0, :cond_d

    move/from16 v0, v16

    move/from16 v1, v21

    if-lt v0, v1, :cond_d

    .line 555
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 558
    .restart local v6    # "c1":C
    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 559
    .restart local v7    # "c2":C
    if-ne v6, v7, :cond_d

    .line 560
    add-int/lit8 v15, v15, -0x1

    .line 564
    add-int/lit8 v16, v16, -0x1

    .line 565
    add-int/lit8 v8, v8, 0x1

    .line 566
    invoke-static {v6}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v24

    if-eqz v24, :cond_c

    .line 567
    move v4, v8

    goto :goto_3

    .line 572
    .end local v6    # "c1":C
    .end local v7    # "c2":C
    :cond_d
    if-eq v8, v4, :cond_e

    .line 573
    if-ltz v15, :cond_f

    .line 574
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v24

    if-eqz v24, :cond_e

    .line 575
    move v4, v8

    .line 586
    :cond_e
    :goto_4
    if-nez v22, :cond_1c

    .line 587
    if-nez v4, :cond_11

    .line 589
    invoke-virtual/range {p3 .. p3}, Lcom/nuance/input/swypecorelib/TextRegion;->getCorrectionCount()I

    move-result v24

    if-lez v24, :cond_10

    const/4 v13, 0x1

    .line 590
    .restart local v13    # "hasCorrectionDiff":Z
    :goto_5
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/nuance/input/swypecorelib/TextRegion;->extractString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/nuance/input/swypecorelib/TextRegion;->extractString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v0, v1, v13}, Lcom/nuance/input/swypecorelib/TextDifference;->total_change(Ljava/lang/String;Ljava/lang/String;Z)Lcom/nuance/input/swypecorelib/TextDifference;

    move-result-object v24

    goto/16 :goto_0

    .line 578
    .end local v13    # "hasCorrectionDiff":Z
    :cond_f
    if-ltz v16, :cond_e

    .line 579
    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v24

    if-eqz v24, :cond_e

    .line 580
    move v4, v8

    goto :goto_4

    .line 589
    :cond_10
    const/4 v13, 0x0

    goto :goto_5

    .line 593
    :cond_11
    move/from16 v0, v19

    if-ne v4, v0, :cond_17

    .line 594
    move/from16 v0, v17

    move/from16 v1, v19

    if-le v0, v1, :cond_14

    .line 595
    sget-object v24, Lcom/nuance/input/swypecorelib/TextDifference$DiffType;->DELETION:Lcom/nuance/input/swypecorelib/TextDifference$DiffType;

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, v24

    invoke-static {v0, v1, v2, v4}, Lcom/nuance/input/swypecorelib/TextDifference;->hasCorrectionDifferenceBegin(Lcom/nuance/input/swypecorelib/TextRegion;Lcom/nuance/input/swypecorelib/TextRegion;Lcom/nuance/input/swypecorelib/TextDifference$DiffType;I)Z

    move-result v13

    .line 597
    .restart local v13    # "hasCorrectionDiff":Z
    add-int v24, v20, v17

    sub-int v10, v24, v4

    .line 598
    .local v10, "endPos":I
    move/from16 v0, v20

    if-gt v0, v10, :cond_12

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v24

    move/from16 v0, v24

    if-le v10, v0, :cond_13

    .line 599
    :cond_12
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 601
    :cond_13
    sget-object v24, Lcom/nuance/input/swypecorelib/TextDifference$DiffPos;->START:Lcom/nuance/input/swypecorelib/TextDifference$DiffPos;

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v24

    move/from16 v1, v25

    move-object/from16 v2, v26

    invoke-static {v0, v1, v2, v13}, Lcom/nuance/input/swypecorelib/TextDifference;->deletion(Lcom/nuance/input/swypecorelib/TextDifference$DiffPos;ILjava/lang/String;Z)Lcom/nuance/input/swypecorelib/TextDifference;

    move-result-object v24

    goto/16 :goto_0

    .line 604
    .end local v10    # "endPos":I
    .end local v13    # "hasCorrectionDiff":Z
    :cond_14
    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_1c

    .line 605
    sget-object v24, Lcom/nuance/input/swypecorelib/TextDifference$DiffType;->ADDITION:Lcom/nuance/input/swypecorelib/TextDifference$DiffType;

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, v24

    invoke-static {v0, v1, v2, v4}, Lcom/nuance/input/swypecorelib/TextDifference;->hasCorrectionDifferenceBegin(Lcom/nuance/input/swypecorelib/TextRegion;Lcom/nuance/input/swypecorelib/TextRegion;Lcom/nuance/input/swypecorelib/TextDifference$DiffType;I)Z

    move-result v13

    .line 607
    .restart local v13    # "hasCorrectionDiff":Z
    add-int v24, v21, v18

    sub-int v10, v24, v4

    .line 608
    .restart local v10    # "endPos":I
    move/from16 v0, v21

    if-gt v0, v10, :cond_15

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v24

    move/from16 v0, v24

    if-le v10, v0, :cond_16

    .line 609
    :cond_15
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 611
    :cond_16
    sget-object v24, Lcom/nuance/input/swypecorelib/TextDifference$DiffPos;->START:Lcom/nuance/input/swypecorelib/TextDifference$DiffPos;

    const/16 v25, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-virtual {v0, v1, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v24

    move/from16 v1, v25

    move-object/from16 v2, v26

    invoke-static {v0, v1, v2, v13}, Lcom/nuance/input/swypecorelib/TextDifference;->addition(Lcom/nuance/input/swypecorelib/TextDifference$DiffPos;ILjava/lang/String;Z)Lcom/nuance/input/swypecorelib/TextDifference;

    move-result-object v24

    goto/16 :goto_0

    .line 615
    .end local v10    # "endPos":I
    .end local v13    # "hasCorrectionDiff":Z
    :cond_17
    sget-object v24, Lcom/nuance/input/swypecorelib/TextDifference$DiffType;->SUBSTITUTION:Lcom/nuance/input/swypecorelib/TextDifference$DiffType;

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, v24

    invoke-static {v0, v1, v2, v4}, Lcom/nuance/input/swypecorelib/TextDifference;->hasCorrectionDifferenceBegin(Lcom/nuance/input/swypecorelib/TextRegion;Lcom/nuance/input/swypecorelib/TextRegion;Lcom/nuance/input/swypecorelib/TextDifference$DiffType;I)Z

    move-result v13

    .line 617
    .restart local v13    # "hasCorrectionDiff":Z
    add-int v24, v20, v17

    sub-int v11, v24, v4

    .line 618
    .local v11, "endPos1":I
    add-int v24, v21, v18

    sub-int v12, v24, v4

    .line 619
    .local v12, "endPos2":I
    move/from16 v0, v20

    if-gt v0, v11, :cond_18

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v24

    move/from16 v0, v24

    if-le v11, v0, :cond_19

    .line 620
    :cond_18
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 622
    :cond_19
    move/from16 v0, v21

    if-gt v0, v12, :cond_1a

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v24

    move/from16 v0, v24

    if-le v12, v0, :cond_1b

    .line 623
    :cond_1a
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 625
    :cond_1b
    sget-object v24, Lcom/nuance/input/swypecorelib/TextDifference$DiffPos;->START:Lcom/nuance/input/swypecorelib/TextDifference$DiffPos;

    const/16 v25, 0x0

    add-int v26, v20, v17

    sub-int v26, v26, v4

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v26

    add-int v27, v21, v18

    sub-int v27, v27, v4

    move-object/from16 v0, p2

    move/from16 v1, v21

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v24

    move/from16 v1, v25

    move-object/from16 v2, v26

    move-object/from16 v3, v27

    invoke-static {v0, v1, v2, v3, v13}, Lcom/nuance/input/swypecorelib/TextDifference;->substitution(Lcom/nuance/input/swypecorelib/TextDifference$DiffPos;ILjava/lang/String;Ljava/lang/String;Z)Lcom/nuance/input/swypecorelib/TextDifference;

    move-result-object v24

    goto/16 :goto_0

    .line 631
    .end local v11    # "endPos1":I
    .end local v12    # "endPos2":I
    .end local v13    # "hasCorrectionDiff":Z
    :cond_1c
    if-nez v4, :cond_21

    .line 632
    sget-object v24, Lcom/nuance/input/swypecorelib/TextDifference$DiffType;->SUBSTITUTION:Lcom/nuance/input/swypecorelib/TextDifference$DiffType;

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, v24

    move/from16 v3, v22

    invoke-static {v0, v1, v2, v3}, Lcom/nuance/input/swypecorelib/TextDifference;->hasCorrectionDifferenceEnd(Lcom/nuance/input/swypecorelib/TextRegion;Lcom/nuance/input/swypecorelib/TextRegion;Lcom/nuance/input/swypecorelib/TextDifference$DiffType;I)Z

    move-result v13

    .line 634
    .restart local v13    # "hasCorrectionDiff":Z
    add-int v11, v20, v17

    .line 635
    .restart local v11    # "endPos1":I
    add-int v12, v21, v18

    .line 636
    .restart local v12    # "endPos2":I
    add-int v24, v20, v22

    move/from16 v0, v24

    if-gt v0, v11, :cond_1d

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v24

    move/from16 v0, v24

    if-le v11, v0, :cond_1e

    .line 637
    :cond_1d
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 639
    :cond_1e
    add-int v24, v21, v22

    move/from16 v0, v24

    if-gt v0, v12, :cond_1f

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v24

    move/from16 v0, v24

    if-le v12, v0, :cond_20

    .line 640
    :cond_1f
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 642
    :cond_20
    sget-object v24, Lcom/nuance/input/swypecorelib/TextDifference$DiffPos;->END:Lcom/nuance/input/swypecorelib/TextDifference$DiffPos;

    add-int v25, v20, v22

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v25

    add-int v26, v21, v22

    move-object/from16 v0, p2

    move/from16 v1, v26

    invoke-virtual {v0, v1, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v24

    move/from16 v1, v22

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-static {v0, v1, v2, v3, v13}, Lcom/nuance/input/swypecorelib/TextDifference;->substitution(Lcom/nuance/input/swypecorelib/TextDifference$DiffPos;ILjava/lang/String;Ljava/lang/String;Z)Lcom/nuance/input/swypecorelib/TextDifference;

    move-result-object v24

    goto/16 :goto_0

    .line 648
    .end local v11    # "endPos1":I
    .end local v12    # "endPos2":I
    .end local v13    # "hasCorrectionDiff":Z
    :cond_21
    add-int v24, v22, v4

    move/from16 v0, v24

    move/from16 v1, v17

    if-ne v0, v1, :cond_24

    .line 649
    sget-object v24, Lcom/nuance/input/swypecorelib/TextDifference$DiffType;->ADDITION:Lcom/nuance/input/swypecorelib/TextDifference$DiffType;

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, v24

    move/from16 v3, v22

    invoke-static {v0, v1, v2, v3, v4}, Lcom/nuance/input/swypecorelib/TextDifference;->hasCorrectionDifferenceMiddle(Lcom/nuance/input/swypecorelib/TextRegion;Lcom/nuance/input/swypecorelib/TextRegion;Lcom/nuance/input/swypecorelib/TextDifference$DiffType;II)Z

    move-result v13

    .line 651
    .restart local v13    # "hasCorrectionDiff":Z
    add-int v24, v21, v18

    sub-int v10, v24, v4

    .line 652
    .restart local v10    # "endPos":I
    add-int v24, v21, v22

    move/from16 v0, v24

    if-gt v0, v10, :cond_22

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v24

    move/from16 v0, v24

    if-le v10, v0, :cond_23

    .line 653
    :cond_22
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 656
    :cond_23
    sget-object v24, Lcom/nuance/input/swypecorelib/TextDifference$DiffPos;->MIDDLE:Lcom/nuance/input/swypecorelib/TextDifference$DiffPos;

    add-int v25, v21, v22

    move-object/from16 v0, p2

    move/from16 v1, v25

    invoke-virtual {v0, v1, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move/from16 v1, v22

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2, v13}, Lcom/nuance/input/swypecorelib/TextDifference;->addition(Lcom/nuance/input/swypecorelib/TextDifference$DiffPos;ILjava/lang/String;Z)Lcom/nuance/input/swypecorelib/TextDifference;

    move-result-object v24

    goto/16 :goto_0

    .line 661
    .end local v10    # "endPos":I
    .end local v13    # "hasCorrectionDiff":Z
    :cond_24
    add-int v24, v22, v4

    move/from16 v0, v24

    move/from16 v1, v18

    if-ne v0, v1, :cond_27

    .line 662
    sget-object v24, Lcom/nuance/input/swypecorelib/TextDifference$DiffType;->DELETION:Lcom/nuance/input/swypecorelib/TextDifference$DiffType;

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, v24

    move/from16 v3, v22

    invoke-static {v0, v1, v2, v3, v4}, Lcom/nuance/input/swypecorelib/TextDifference;->hasCorrectionDifferenceMiddle(Lcom/nuance/input/swypecorelib/TextRegion;Lcom/nuance/input/swypecorelib/TextRegion;Lcom/nuance/input/swypecorelib/TextDifference$DiffType;II)Z

    move-result v13

    .line 664
    .restart local v13    # "hasCorrectionDiff":Z
    add-int v24, v20, v17

    sub-int v10, v24, v4

    .line 665
    .restart local v10    # "endPos":I
    add-int v24, v20, v22

    move/from16 v0, v24

    if-gt v0, v10, :cond_25

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v24

    move/from16 v0, v24

    if-le v10, v0, :cond_26

    .line 666
    :cond_25
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 668
    :cond_26
    sget-object v24, Lcom/nuance/input/swypecorelib/TextDifference$DiffPos;->MIDDLE:Lcom/nuance/input/swypecorelib/TextDifference$DiffPos;

    add-int v25, v20, v22

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move/from16 v1, v22

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2, v13}, Lcom/nuance/input/swypecorelib/TextDifference;->deletion(Lcom/nuance/input/swypecorelib/TextDifference$DiffPos;ILjava/lang/String;Z)Lcom/nuance/input/swypecorelib/TextDifference;

    move-result-object v24

    goto/16 :goto_0

    .line 672
    .end local v10    # "endPos":I
    .end local v13    # "hasCorrectionDiff":Z
    :cond_27
    sget-object v24, Lcom/nuance/input/swypecorelib/TextDifference$DiffType;->SUBSTITUTION:Lcom/nuance/input/swypecorelib/TextDifference$DiffType;

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, v24

    move/from16 v3, v22

    invoke-static {v0, v1, v2, v3, v4}, Lcom/nuance/input/swypecorelib/TextDifference;->hasCorrectionDifferenceMiddle(Lcom/nuance/input/swypecorelib/TextRegion;Lcom/nuance/input/swypecorelib/TextRegion;Lcom/nuance/input/swypecorelib/TextDifference$DiffType;II)Z

    move-result v13

    .line 674
    .restart local v13    # "hasCorrectionDiff":Z
    add-int v24, v20, v17

    sub-int v11, v24, v4

    .line 675
    .restart local v11    # "endPos1":I
    add-int v24, v21, v18

    sub-int v12, v24, v4

    .line 676
    .restart local v12    # "endPos2":I
    add-int v24, v20, v22

    move/from16 v0, v24

    if-gt v0, v11, :cond_28

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v24

    move/from16 v0, v24

    if-le v11, v0, :cond_29

    .line 677
    :cond_28
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 679
    :cond_29
    add-int v24, v21, v22

    move/from16 v0, v24

    if-gt v0, v12, :cond_2a

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v24

    move/from16 v0, v24

    if-le v12, v0, :cond_2b

    .line 680
    :cond_2a
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 683
    :cond_2b
    sget-object v24, Lcom/nuance/input/swypecorelib/TextDifference$DiffPos;->MIDDLE:Lcom/nuance/input/swypecorelib/TextDifference$DiffPos;

    add-int v25, v20, v22

    add-int v26, v20, v17

    sub-int v26, v26, v4

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v25

    add-int v26, v21, v22

    add-int v27, v21, v18

    sub-int v27, v27, v4

    move-object/from16 v0, p2

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v24

    move/from16 v1, v22

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-static {v0, v1, v2, v3, v13}, Lcom/nuance/input/swypecorelib/TextDifference;->substitution(Lcom/nuance/input/swypecorelib/TextDifference$DiffPos;ILjava/lang/String;Ljava/lang/String;Z)Lcom/nuance/input/swypecorelib/TextDifference;

    move-result-object v24

    goto/16 :goto_0
.end method

.method protected static hasCorrectionDifference(Lcom/nuance/input/swypecorelib/TextRegion;ILcom/nuance/input/swypecorelib/TextRegion;II)Z
    .locals 8
    .param p0, "textRegion1"    # Lcom/nuance/input/swypecorelib/TextRegion;
    .param p1, "start1Relative"    # I
    .param p2, "textRegion2"    # Lcom/nuance/input/swypecorelib/TextRegion;
    .param p3, "start2Relative"    # I
    .param p4, "len"    # I

    .prologue
    const/4 v5, 0x1

    .line 273
    invoke-virtual {p0, p1, p4}, Lcom/nuance/input/swypecorelib/TextRegion;->findCorrections(II)Ljava/util/List;

    move-result-object v2

    .line 274
    .local v2, "corr1":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/input/swypecorelib/Correction;>;"
    invoke-virtual {p2, p3, p4}, Lcom/nuance/input/swypecorelib/TextRegion;->findCorrections(II)Ljava/util/List;

    move-result-object v3

    .line 278
    .local v3, "corr2":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/input/swypecorelib/Correction;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-eq v6, v7, :cond_1

    .line 294
    :cond_0
    :goto_0
    return v5

    .line 283
    :cond_1
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-eq v4, v6, :cond_2

    .line 284
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/input/swypecorelib/Correction;

    .line 285
    .local v0, "c1":Lcom/nuance/input/swypecorelib/Correction;
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/input/swypecorelib/Correction;

    .line 286
    .local v1, "c2":Lcom/nuance/input/swypecorelib/Correction;
    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/Correction;->getOffset()I

    move-result v6

    sub-int/2addr v6, p1

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/Correction;->getOffset()I

    move-result v7

    sub-int/2addr v7, p3

    if-ne v6, v7, :cond_0

    .line 289
    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/Correction;->getLength()I

    move-result v6

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/Correction;->getLength()I

    move-result v7

    if-ne v6, v7, :cond_0

    .line 283
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 294
    .end local v0    # "c1":Lcom/nuance/input/swypecorelib/Correction;
    .end local v1    # "c2":Lcom/nuance/input/swypecorelib/Correction;
    :cond_2
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public static hasCorrectionDifferenceBegin(Lcom/nuance/input/swypecorelib/TextRegion;Lcom/nuance/input/swypecorelib/TextRegion;Lcom/nuance/input/swypecorelib/TextDifference$DiffType;I)Z
    .locals 4
    .param p0, "textRegion1"    # Lcom/nuance/input/swypecorelib/TextRegion;
    .param p1, "textRegion2"    # Lcom/nuance/input/swypecorelib/TextRegion;
    .param p2, "t"    # Lcom/nuance/input/swypecorelib/TextDifference$DiffType;
    .param p3, "len"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 361
    invoke-virtual {p0}, Lcom/nuance/input/swypecorelib/TextRegion;->getLength()I

    move-result v2

    sub-int/2addr v2, p3

    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/TextRegion;->getLength()I

    move-result v3

    sub-int/2addr v3, p3

    invoke-static {p0, v2, p1, v3, p3}, Lcom/nuance/input/swypecorelib/TextDifference;->hasCorrectionDifference(Lcom/nuance/input/swypecorelib/TextRegion;ILcom/nuance/input/swypecorelib/TextRegion;II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 381
    :cond_0
    :goto_0
    return v0

    .line 367
    :cond_1
    sget-object v2, Lcom/nuance/input/swypecorelib/TextDifference$DiffType;->ADDITION:Lcom/nuance/input/swypecorelib/TextDifference$DiffType;

    if-eq p2, v2, :cond_2

    sget-object v2, Lcom/nuance/input/swypecorelib/TextDifference$DiffType;->SUBSTITUTION:Lcom/nuance/input/swypecorelib/TextDifference$DiffType;

    if-ne p2, v2, :cond_3

    .line 368
    :cond_2
    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/TextRegion;->getLength()I

    move-result v2

    sub-int/2addr v2, p3

    invoke-virtual {p1, v1, v2}, Lcom/nuance/input/swypecorelib/TextRegion;->findCorrections(II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_0

    :cond_3
    move v0, v1

    .line 381
    goto :goto_0
.end method

.method protected static hasCorrectionDifferenceEnd(Lcom/nuance/input/swypecorelib/TextRegion;Lcom/nuance/input/swypecorelib/TextRegion;Lcom/nuance/input/swypecorelib/TextDifference$DiffType;I)Z
    .locals 3
    .param p0, "textRegion1"    # Lcom/nuance/input/swypecorelib/TextRegion;
    .param p1, "textRegion2"    # Lcom/nuance/input/swypecorelib/TextRegion;
    .param p2, "t"    # Lcom/nuance/input/swypecorelib/TextDifference$DiffType;
    .param p3, "len"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 317
    invoke-static {p0, v1, p1, v1, p3}, Lcom/nuance/input/swypecorelib/TextDifference;->hasCorrectionDifference(Lcom/nuance/input/swypecorelib/TextRegion;ILcom/nuance/input/swypecorelib/TextRegion;II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 338
    :cond_0
    :goto_0
    return v0

    .line 322
    :cond_1
    sget-object v2, Lcom/nuance/input/swypecorelib/TextDifference$DiffType;->ADDITION:Lcom/nuance/input/swypecorelib/TextDifference$DiffType;

    if-eq p2, v2, :cond_2

    sget-object v2, Lcom/nuance/input/swypecorelib/TextDifference$DiffType;->SUBSTITUTION:Lcom/nuance/input/swypecorelib/TextDifference$DiffType;

    if-ne p2, v2, :cond_3

    .line 323
    :cond_2
    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/TextRegion;->getLength()I

    move-result v2

    sub-int/2addr v2, p3

    invoke-virtual {p1, p3, v2}, Lcom/nuance/input/swypecorelib/TextRegion;->findCorrections(II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_0

    :cond_3
    move v0, v1

    .line 338
    goto :goto_0
.end method

.method protected static hasCorrectionDifferenceMiddle(Lcom/nuance/input/swypecorelib/TextRegion;Lcom/nuance/input/swypecorelib/TextRegion;Lcom/nuance/input/swypecorelib/TextDifference$DiffType;II)Z
    .locals 4
    .param p0, "textRegion1"    # Lcom/nuance/input/swypecorelib/TextRegion;
    .param p1, "textRegion2"    # Lcom/nuance/input/swypecorelib/TextRegion;
    .param p2, "t"    # Lcom/nuance/input/swypecorelib/TextDifference$DiffType;
    .param p3, "beginLen"    # I
    .param p4, "endLen"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 406
    invoke-static {p0, v1, p1, v1, p3}, Lcom/nuance/input/swypecorelib/TextDifference;->hasCorrectionDifference(Lcom/nuance/input/swypecorelib/TextRegion;ILcom/nuance/input/swypecorelib/TextRegion;II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 432
    :cond_0
    :goto_0
    return v0

    .line 411
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/input/swypecorelib/TextRegion;->getLength()I

    move-result v2

    sub-int/2addr v2, p4

    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/TextRegion;->getLength()I

    move-result v3

    sub-int/2addr v3, p4

    invoke-static {p0, v2, p1, v3, p4}, Lcom/nuance/input/swypecorelib/TextDifference;->hasCorrectionDifference(Lcom/nuance/input/swypecorelib/TextRegion;ILcom/nuance/input/swypecorelib/TextRegion;II)Z

    move-result v2

    if-nez v2, :cond_0

    .line 417
    sget-object v2, Lcom/nuance/input/swypecorelib/TextDifference$DiffType;->ADDITION:Lcom/nuance/input/swypecorelib/TextDifference$DiffType;

    if-eq p2, v2, :cond_2

    sget-object v2, Lcom/nuance/input/swypecorelib/TextDifference$DiffType;->SUBSTITUTION:Lcom/nuance/input/swypecorelib/TextDifference$DiffType;

    if-ne p2, v2, :cond_3

    .line 418
    :cond_2
    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/TextRegion;->getLength()I

    move-result v2

    sub-int/2addr v2, p4

    sub-int/2addr v2, p3

    invoke-virtual {p1, p3, v2}, Lcom/nuance/input/swypecorelib/TextRegion;->findCorrections(II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_0

    :cond_3
    move v0, v1

    .line 432
    goto :goto_0
.end method

.method protected static substitution(Lcom/nuance/input/swypecorelib/TextDifference$DiffPos;ILjava/lang/String;Ljava/lang/String;Z)Lcom/nuance/input/swypecorelib/TextDifference;
    .locals 7
    .param p0, "dp"    # Lcom/nuance/input/swypecorelib/TextDifference$DiffPos;
    .param p1, "diffStartRelative"    # I
    .param p2, "str1"    # Ljava/lang/String;
    .param p3, "str2"    # Ljava/lang/String;
    .param p4, "hasCorrectionDiff"    # Z

    .prologue
    .line 153
    new-instance v0, Lcom/nuance/input/swypecorelib/TextDifference;

    sget-object v1, Lcom/nuance/input/swypecorelib/TextDifference$DiffType;->SUBSTITUTION:Lcom/nuance/input/swypecorelib/TextDifference$DiffType;

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/nuance/input/swypecorelib/TextDifference;-><init>(Lcom/nuance/input/swypecorelib/TextDifference$DiffType;Lcom/nuance/input/swypecorelib/TextDifference$DiffPos;ILjava/lang/String;Ljava/lang/String;Z)V

    return-object v0
.end method

.method protected static total_change(Ljava/lang/String;Ljava/lang/String;Z)Lcom/nuance/input/swypecorelib/TextDifference;
    .locals 7
    .param p0, "str1"    # Ljava/lang/String;
    .param p1, "str2"    # Ljava/lang/String;
    .param p2, "hasCorrectionDiff"    # Z

    .prologue
    .line 169
    new-instance v0, Lcom/nuance/input/swypecorelib/TextDifference;

    sget-object v1, Lcom/nuance/input/swypecorelib/TextDifference$DiffType;->TOTAL_CHANGE:Lcom/nuance/input/swypecorelib/TextDifference$DiffType;

    sget-object v2, Lcom/nuance/input/swypecorelib/TextDifference$DiffPos;->START:Lcom/nuance/input/swypecorelib/TextDifference$DiffPos;

    const/4 v3, 0x0

    move-object v4, p0

    move-object v5, p1

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/nuance/input/swypecorelib/TextDifference;-><init>(Lcom/nuance/input/swypecorelib/TextDifference$DiffType;Lcom/nuance/input/swypecorelib/TextDifference$DiffPos;ILjava/lang/String;Ljava/lang/String;Z)V

    return-object v0
.end method

.method protected static wordCount(Ljava/lang/String;)I
    .locals 5
    .param p0, "sequence"    # Ljava/lang/String;

    .prologue
    .line 208
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 209
    .local v3, "len":I
    const/4 v1, 0x0

    .line 211
    .local v1, "count":I
    const/4 v0, 0x1

    .line 212
    .local v0, "betweenWord":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-eq v2, v3, :cond_2

    .line 213
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 214
    if-nez v0, :cond_0

    .line 215
    const/4 v0, 0x1

    .line 212
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 218
    :cond_1
    if-eqz v0, :cond_0

    .line 219
    const/4 v0, 0x0

    .line 220
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 225
    :cond_2
    return v1
.end method


# virtual methods
.method public doesHaveCorrectionDiff()Z
    .locals 1

    .prologue
    .line 441
    iget-boolean v0, p0, Lcom/nuance/input/swypecorelib/TextDifference;->hasCorrectionDiff:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 808
    if-ne p0, p1, :cond_1

    .line 841
    :cond_0
    :goto_0
    return v1

    .line 811
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 812
    goto :goto_0

    .line 814
    :cond_2
    instance-of v3, p1, Lcom/nuance/input/swypecorelib/TextDifference;

    if-nez v3, :cond_3

    move v1, v2

    .line 815
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 817
    check-cast v0, Lcom/nuance/input/swypecorelib/TextDifference;

    .line 818
    .local v0, "other":Lcom/nuance/input/swypecorelib/TextDifference;
    iget-object v3, p0, Lcom/nuance/input/swypecorelib/TextDifference;->diffPos:Lcom/nuance/input/swypecorelib/TextDifference$DiffPos;

    iget-object v4, v0, Lcom/nuance/input/swypecorelib/TextDifference;->diffPos:Lcom/nuance/input/swypecorelib/TextDifference$DiffPos;

    if-eq v3, v4, :cond_4

    move v1, v2

    .line 819
    goto :goto_0

    .line 821
    :cond_4
    iget-object v3, p0, Lcom/nuance/input/swypecorelib/TextDifference;->diffType:Lcom/nuance/input/swypecorelib/TextDifference$DiffType;

    iget-object v4, v0, Lcom/nuance/input/swypecorelib/TextDifference;->diffType:Lcom/nuance/input/swypecorelib/TextDifference$DiffType;

    if-eq v3, v4, :cond_5

    move v1, v2

    .line 822
    goto :goto_0

    .line 824
    :cond_5
    iget-boolean v3, p0, Lcom/nuance/input/swypecorelib/TextDifference;->hasCorrectionDiff:Z

    iget-boolean v4, v0, Lcom/nuance/input/swypecorelib/TextDifference;->hasCorrectionDiff:Z

    if-eq v3, v4, :cond_6

    move v1, v2

    .line 825
    goto :goto_0

    .line 827
    :cond_6
    iget-object v3, p0, Lcom/nuance/input/swypecorelib/TextDifference;->stringAfter:Ljava/lang/String;

    if-nez v3, :cond_7

    .line 828
    iget-object v3, v0, Lcom/nuance/input/swypecorelib/TextDifference;->stringAfter:Ljava/lang/String;

    if-eqz v3, :cond_8

    move v1, v2

    .line 829
    goto :goto_0

    .line 831
    :cond_7
    iget-object v3, p0, Lcom/nuance/input/swypecorelib/TextDifference;->stringAfter:Ljava/lang/String;

    iget-object v4, v0, Lcom/nuance/input/swypecorelib/TextDifference;->stringAfter:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    move v1, v2

    .line 832
    goto :goto_0

    .line 834
    :cond_8
    iget-object v3, p0, Lcom/nuance/input/swypecorelib/TextDifference;->stringBefore:Ljava/lang/String;

    if-nez v3, :cond_9

    .line 835
    iget-object v3, v0, Lcom/nuance/input/swypecorelib/TextDifference;->stringBefore:Ljava/lang/String;

    if-eqz v3, :cond_0

    move v1, v2

    .line 836
    goto :goto_0

    .line 838
    :cond_9
    iget-object v3, p0, Lcom/nuance/input/swypecorelib/TextDifference;->stringBefore:Ljava/lang/String;

    iget-object v4, v0, Lcom/nuance/input/swypecorelib/TextDifference;->stringBefore:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 839
    goto :goto_0
.end method

.method public getCorrectionsToRemove(Lcom/nuance/input/swypecorelib/TextRegion;Lcom/nuance/input/swypecorelib/TextRegion;)Ljava/util/List;
    .locals 7
    .param p1, "textRegion1"    # Lcom/nuance/input/swypecorelib/TextRegion;
    .param p2, "textRegion2"    # Lcom/nuance/input/swypecorelib/TextRegion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nuance/input/swypecorelib/TextRegion;",
            "Lcom/nuance/input/swypecorelib/TextRegion;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/input/swypecorelib/Correction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 720
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 722
    .local v6, "results":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/input/swypecorelib/Correction;>;"
    sget-object v0, Lcom/nuance/input/swypecorelib/TextDifference$1;->$SwitchMap$com$nuance$input$swypecorelib$TextDifference$DiffPos:[I

    iget-object v1, p0, Lcom/nuance/input/swypecorelib/TextDifference;->diffPos:Lcom/nuance/input/swypecorelib/TextDifference$DiffPos;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/TextDifference$DiffPos;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 768
    :goto_0
    return-object v6

    .line 724
    :pswitch_0
    sget-object v0, Lcom/nuance/input/swypecorelib/TextDifference$1;->$SwitchMap$com$nuance$input$swypecorelib$TextDifference$DiffType:[I

    iget-object v1, p0, Lcom/nuance/input/swypecorelib/TextDifference;->diffType:Lcom/nuance/input/swypecorelib/TextDifference$DiffType;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/TextDifference$DiffType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 734
    :pswitch_1
    const/4 v2, 0x0

    const/4 v4, 0x0

    iget v5, p0, Lcom/nuance/input/swypecorelib/TextDifference;->diffStartRelative:I

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v6}, Lcom/nuance/input/swypecorelib/TextDifference;->findCorrectionsToRemove(Lcom/nuance/input/swypecorelib/TextRegion;ILcom/nuance/input/swypecorelib/TextRegion;IILjava/util/List;)V

    goto :goto_0

    .line 739
    :pswitch_2
    sget-object v0, Lcom/nuance/input/swypecorelib/TextDifference$1;->$SwitchMap$com$nuance$input$swypecorelib$TextDifference$DiffType:[I

    iget-object v1, p0, Lcom/nuance/input/swypecorelib/TextDifference;->diffType:Lcom/nuance/input/swypecorelib/TextDifference$DiffType;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/TextDifference$DiffType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2

    goto :goto_0

    .line 741
    :pswitch_3
    const/4 v2, 0x0

    iget-object v0, p0, Lcom/nuance/input/swypecorelib/TextDifference;->stringAfter:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/TextRegion;->getLength()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v6}, Lcom/nuance/input/swypecorelib/TextDifference;->findCorrectionsToRemove(Lcom/nuance/input/swypecorelib/TextRegion;ILcom/nuance/input/swypecorelib/TextRegion;IILjava/util/List;)V

    goto :goto_0

    .line 744
    :pswitch_4
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/TextDifference;->stringBefore:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x0

    invoke-virtual {p2}, Lcom/nuance/input/swypecorelib/TextRegion;->getLength()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v6}, Lcom/nuance/input/swypecorelib/TextDifference;->findCorrectionsToRemove(Lcom/nuance/input/swypecorelib/TextRegion;ILcom/nuance/input/swypecorelib/TextRegion;IILjava/util/List;)V

    goto :goto_0

    .line 747
    :pswitch_5
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/TextDifference;->stringBefore:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v0, p0, Lcom/nuance/input/swypecorelib/TextDifference;->stringAfter:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/TextRegion;->getLength()I

    move-result v0

    iget-object v1, p0, Lcom/nuance/input/swypecorelib/TextDifference;->stringBefore:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int v5, v0, v1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v6}, Lcom/nuance/input/swypecorelib/TextDifference;->findCorrectionsToRemove(Lcom/nuance/input/swypecorelib/TextRegion;ILcom/nuance/input/swypecorelib/TextRegion;IILjava/util/List;)V

    goto :goto_0

    .line 752
    :pswitch_6
    const/4 v2, 0x0

    const/4 v4, 0x0

    iget v5, p0, Lcom/nuance/input/swypecorelib/TextDifference;->diffStartRelative:I

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v6}, Lcom/nuance/input/swypecorelib/TextDifference;->findCorrectionsToRemove(Lcom/nuance/input/swypecorelib/TextRegion;ILcom/nuance/input/swypecorelib/TextRegion;IILjava/util/List;)V

    .line 753
    sget-object v0, Lcom/nuance/input/swypecorelib/TextDifference$1;->$SwitchMap$com$nuance$input$swypecorelib$TextDifference$DiffType:[I

    iget-object v1, p0, Lcom/nuance/input/swypecorelib/TextDifference;->diffType:Lcom/nuance/input/swypecorelib/TextDifference$DiffType;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/TextDifference$DiffType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_3

    goto/16 :goto_0

    .line 755
    :pswitch_7
    iget v2, p0, Lcom/nuance/input/swypecorelib/TextDifference;->diffStartRelative:I

    iget v0, p0, Lcom/nuance/input/swypecorelib/TextDifference;->diffStartRelative:I

    iget-object v1, p0, Lcom/nuance/input/swypecorelib/TextDifference;->stringAfter:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int v4, v0, v1

    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/TextRegion;->getLength()I

    move-result v0

    iget v1, p0, Lcom/nuance/input/swypecorelib/TextDifference;->diffStartRelative:I

    sub-int v5, v0, v1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v6}, Lcom/nuance/input/swypecorelib/TextDifference;->findCorrectionsToRemove(Lcom/nuance/input/swypecorelib/TextRegion;ILcom/nuance/input/swypecorelib/TextRegion;IILjava/util/List;)V

    goto/16 :goto_0

    .line 758
    :pswitch_8
    iget v0, p0, Lcom/nuance/input/swypecorelib/TextDifference;->diffStartRelative:I

    iget-object v1, p0, Lcom/nuance/input/swypecorelib/TextDifference;->stringBefore:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int v2, v0, v1

    iget v4, p0, Lcom/nuance/input/swypecorelib/TextDifference;->diffStartRelative:I

    invoke-virtual {p2}, Lcom/nuance/input/swypecorelib/TextRegion;->getLength()I

    move-result v0

    iget v1, p0, Lcom/nuance/input/swypecorelib/TextDifference;->diffStartRelative:I

    sub-int v5, v0, v1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v6}, Lcom/nuance/input/swypecorelib/TextDifference;->findCorrectionsToRemove(Lcom/nuance/input/swypecorelib/TextRegion;ILcom/nuance/input/swypecorelib/TextRegion;IILjava/util/List;)V

    goto/16 :goto_0

    .line 761
    :pswitch_9
    iget v0, p0, Lcom/nuance/input/swypecorelib/TextDifference;->diffStartRelative:I

    iget-object v1, p0, Lcom/nuance/input/swypecorelib/TextDifference;->stringBefore:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int v2, v0, v1

    iget v0, p0, Lcom/nuance/input/swypecorelib/TextDifference;->diffStartRelative:I

    iget-object v1, p0, Lcom/nuance/input/swypecorelib/TextDifference;->stringAfter:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int v4, v0, v1

    invoke-virtual {p2}, Lcom/nuance/input/swypecorelib/TextRegion;->getLength()I

    move-result v0

    iget v1, p0, Lcom/nuance/input/swypecorelib/TextDifference;->diffStartRelative:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/nuance/input/swypecorelib/TextDifference;->stringAfter:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int v5, v0, v1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v6}, Lcom/nuance/input/swypecorelib/TextDifference;->findCorrectionsToRemove(Lcom/nuance/input/swypecorelib/TextRegion;ILcom/nuance/input/swypecorelib/TextRegion;IILjava/util/List;)V

    goto/16 :goto_0

    .line 722
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_6
    .end packed-switch

    .line 724
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 739
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 753
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public getDiffWordCount()I
    .locals 3

    .prologue
    .line 235
    const/4 v0, 0x0

    .line 236
    .local v0, "count":I
    sget-object v1, Lcom/nuance/input/swypecorelib/TextDifference$1;->$SwitchMap$com$nuance$input$swypecorelib$TextDifference$DiffType:[I

    iget-object v2, p0, Lcom/nuance/input/swypecorelib/TextDifference;->diffType:Lcom/nuance/input/swypecorelib/TextDifference$DiffType;

    invoke-virtual {v2}, Lcom/nuance/input/swypecorelib/TextDifference$DiffType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 251
    :goto_0
    return v0

    .line 238
    :pswitch_0
    iget-object v1, p0, Lcom/nuance/input/swypecorelib/TextDifference;->stringAfter:Ljava/lang/String;

    invoke-static {v1}, Lcom/nuance/input/swypecorelib/TextDifference;->wordCount(Ljava/lang/String;)I

    move-result v0

    .line 239
    goto :goto_0

    .line 241
    :pswitch_1
    iget-object v1, p0, Lcom/nuance/input/swypecorelib/TextDifference;->stringBefore:Ljava/lang/String;

    invoke-static {v1}, Lcom/nuance/input/swypecorelib/TextDifference;->wordCount(Ljava/lang/String;)I

    move-result v0

    .line 242
    goto :goto_0

    .line 245
    :pswitch_2
    iget-object v1, p0, Lcom/nuance/input/swypecorelib/TextDifference;->stringBefore:Ljava/lang/String;

    invoke-static {v1}, Lcom/nuance/input/swypecorelib/TextDifference;->wordCount(Ljava/lang/String;)I

    move-result v1

    .line 246
    iget-object v2, p0, Lcom/nuance/input/swypecorelib/TextDifference;->stringAfter:Ljava/lang/String;

    invoke-static {v2}, Lcom/nuance/input/swypecorelib/TextDifference;->wordCount(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v1, v2

    .line 247
    div-int/lit8 v0, v1, 0x2

    goto :goto_0

    .line 236
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 791
    iget-object v1, p0, Lcom/nuance/input/swypecorelib/TextDifference;->diffPos:Lcom/nuance/input/swypecorelib/TextDifference$DiffPos;

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    add-int/lit8 v0, v1, 0x1f

    .line 794
    .local v0, "result":I
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/nuance/input/swypecorelib/TextDifference;->diffType:Lcom/nuance/input/swypecorelib/TextDifference$DiffType;

    if-nez v1, :cond_1

    move v1, v2

    :goto_1
    add-int v0, v3, v1

    .line 795
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v1, p0, Lcom/nuance/input/swypecorelib/TextDifference;->hasCorrectionDiff:Z

    if-eqz v1, :cond_2

    const/16 v1, 0x4cf

    :goto_2
    add-int v0, v3, v1

    .line 796
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/nuance/input/swypecorelib/TextDifference;->stringAfter:Ljava/lang/String;

    if-nez v1, :cond_3

    move v1, v2

    :goto_3
    add-int v0, v3, v1

    .line 797
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/nuance/input/swypecorelib/TextDifference;->stringBefore:Ljava/lang/String;

    if-nez v3, :cond_4

    :goto_4
    add-int/2addr v1, v2

    .line 798
    return v1

    .line 791
    .end local v0    # "result":I
    :cond_0
    iget-object v1, p0, Lcom/nuance/input/swypecorelib/TextDifference;->diffPos:Lcom/nuance/input/swypecorelib/TextDifference$DiffPos;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/TextDifference$DiffPos;->hashCode()I

    move-result v1

    goto :goto_0

    .line 794
    .restart local v0    # "result":I
    :cond_1
    iget-object v1, p0, Lcom/nuance/input/swypecorelib/TextDifference;->diffType:Lcom/nuance/input/swypecorelib/TextDifference$DiffType;

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/TextDifference$DiffType;->hashCode()I

    move-result v1

    goto :goto_1

    .line 795
    :cond_2
    const/16 v1, 0x4d5

    goto :goto_2

    .line 796
    :cond_3
    iget-object v1, p0, Lcom/nuance/input/swypecorelib/TextDifference;->stringAfter:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_3

    .line 797
    :cond_4
    iget-object v2, p0, Lcom/nuance/input/swypecorelib/TextDifference;->stringBefore:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_4
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 778
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TextDifference [diffType="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nuance/input/swypecorelib/TextDifference;->diffType:Lcom/nuance/input/swypecorelib/TextDifference$DiffType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", diffPos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/input/swypecorelib/TextDifference;->diffPos:Lcom/nuance/input/swypecorelib/TextDifference$DiffPos;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", stringBefore="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/input/swypecorelib/TextDifference;->stringBefore:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", stringAfter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/input/swypecorelib/TextDifference;->stringAfter:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hasCorrectionDiff="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/nuance/input/swypecorelib/TextDifference;->hasCorrectionDiff:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
