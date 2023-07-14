.class public final Landroid/support/graphics/drawable/PathParser$PathDataNode;
.super Ljava/lang/Object;
.source "PathParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/graphics/drawable/PathParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PathDataNode"
.end annotation


# instance fields
.field params:[F

.field type:C


# direct methods
.method private constructor <init>(C[F)V
    .locals 0
    .param p1, "type"    # C
    .param p2, "params"    # [F

    .prologue
    .line 297
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 298
    iput-char p1, p0, Landroid/support/graphics/drawable/PathParser$PathDataNode;->type:C

    .line 299
    iput-object p2, p0, Landroid/support/graphics/drawable/PathParser$PathDataNode;->params:[F

    .line 300
    return-void
.end method

.method synthetic constructor <init>(C[FB)V
    .locals 0
    .param p1, "x0"    # C
    .param p2, "x1"    # [F

    .prologue
    .line 292
    invoke-direct {p0, p1, p2}, Landroid/support/graphics/drawable/PathParser$PathDataNode;-><init>(C[F)V

    return-void
.end method

.method private constructor <init>(Landroid/support/graphics/drawable/PathParser$PathDataNode;)V
    .locals 2
    .param p1, "n"    # Landroid/support/graphics/drawable/PathParser$PathDataNode;

    .prologue
    .line 302
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 303
    iget-char v0, p1, Landroid/support/graphics/drawable/PathParser$PathDataNode;->type:C

    iput-char v0, p0, Landroid/support/graphics/drawable/PathParser$PathDataNode;->type:C

    .line 304
    iget-object v0, p1, Landroid/support/graphics/drawable/PathParser$PathDataNode;->params:[F

    iget-object v1, p1, Landroid/support/graphics/drawable/PathParser$PathDataNode;->params:[F

    array-length v1, v1

    .line 1024
    invoke-static {v0, v1}, Landroid/support/graphics/drawable/PathParser;->copyOfRange$7b60297f([FI)[F

    move-result-object v0

    .line 304
    iput-object v0, p0, Landroid/support/graphics/drawable/PathParser$PathDataNode;->params:[F

    .line 305
    return-void
.end method

.method synthetic constructor <init>(Landroid/support/graphics/drawable/PathParser$PathDataNode;B)V
    .locals 0
    .param p1, "x0"    # Landroid/support/graphics/drawable/PathParser$PathDataNode;

    .prologue
    .line 292
    invoke-direct {p0, p1}, Landroid/support/graphics/drawable/PathParser$PathDataNode;-><init>(Landroid/support/graphics/drawable/PathParser$PathDataNode;)V

    return-void
.end method

.method private static arcToBezier(Landroid/graphics/Path;DDDDDDDDD)V
    .locals 55
    .param p0, "p"    # Landroid/graphics/Path;
    .param p1, "cx"    # D
    .param p3, "cy"    # D
    .param p5, "a"    # D
    .param p7, "b"    # D
    .param p9, "e1x"    # D
    .param p11, "e1y"    # D
    .param p13, "theta"    # D
    .param p15, "start"    # D
    .param p17, "sweep"    # D

    .prologue
    .line 694
    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    mul-double v2, v2, p17

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    move/from16 v36, v0

    .line 696
    .local v36, "numSegments":I
    move-wide/from16 v32, p15

    .line 697
    .local v32, "eta1":D
    invoke-static/range {p13 .. p14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v18

    .line 698
    .local v18, "cosTheta":D
    invoke-static/range {p13 .. p14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v50

    .line 699
    .local v50, "sinTheta":D
    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    .line 700
    .local v14, "cosEta1":D
    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->sin(D)D

    move-result-wide v46

    .line 701
    .local v46, "sinEta1":D
    move-wide/from16 v0, p5

    neg-double v2, v0

    mul-double v2, v2, v18

    mul-double v2, v2, v46

    mul-double v4, p7, v50

    mul-double/2addr v4, v14

    sub-double v24, v2, v4

    .line 702
    .local v24, "ep1x":D
    move-wide/from16 v0, p5

    neg-double v2, v0

    mul-double v2, v2, v50

    mul-double v2, v2, v46

    mul-double v4, p7, v18

    mul-double/2addr v4, v14

    add-double v26, v2, v4

    .line 704
    .local v26, "ep1y":D
    move/from16 v0, v36

    int-to-double v2, v0

    div-double v12, p17, v2

    .line 705
    .local v12, "anglePerSegment":D
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    move/from16 v0, v36

    if-ge v9, v0, :cond_0

    .line 706
    add-double v34, v32, v12

    .line 707
    .local v34, "eta2":D
    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->sin(D)D

    move-result-wide v48

    .line 708
    .local v48, "sinEta2":D
    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    .line 709
    .local v16, "cosEta2":D
    mul-double v2, p5, v18

    mul-double v2, v2, v16

    add-double v2, v2, p1

    mul-double v4, p7, v50

    mul-double v4, v4, v48

    sub-double v20, v2, v4

    .line 710
    .local v20, "e2x":D
    mul-double v2, p5, v50

    mul-double v2, v2, v16

    add-double v2, v2, p3

    mul-double v4, p7, v18

    mul-double v4, v4, v48

    add-double v22, v2, v4

    .line 711
    .local v22, "e2y":D
    move-wide/from16 v0, p5

    neg-double v2, v0

    mul-double v2, v2, v18

    mul-double v2, v2, v48

    mul-double v4, p7, v50

    mul-double v4, v4, v16

    sub-double v28, v2, v4

    .line 712
    .local v28, "ep2x":D
    move-wide/from16 v0, p5

    neg-double v2, v0

    mul-double v2, v2, v50

    mul-double v2, v2, v48

    mul-double v4, p7, v18

    mul-double v4, v4, v16

    add-double v30, v2, v4

    .line 713
    .local v30, "ep2y":D
    sub-double v2, v34, v32

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v52

    .line 714
    .local v52, "tanDiff2":D
    sub-double v2, v34, v32

    .line 715
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x4010000000000000L    # 4.0

    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    mul-double v6, v6, v52

    mul-double v6, v6, v52

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v4, v6

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    div-double v10, v2, v4

    .line 716
    .local v10, "alpha":D
    mul-double v2, v10, v24

    add-double v38, p9, v2

    .line 717
    .local v38, "q1x":D
    mul-double v2, v10, v26

    add-double v40, p11, v2

    .line 718
    .local v40, "q1y":D
    mul-double v2, v10, v28

    sub-double v42, v20, v2

    .line 719
    .local v42, "q2x":D
    mul-double v2, v10, v30

    sub-double v44, v22, v2

    .line 721
    .local v44, "q2y":D
    move-wide/from16 v0, v38

    double-to-float v3, v0

    move-wide/from16 v0, v40

    double-to-float v4, v0

    move-wide/from16 v0, v42

    double-to-float v5, v0

    move-wide/from16 v0, v44

    double-to-float v6, v0

    move-wide/from16 v0, v20

    double-to-float v7, v0

    move-wide/from16 v0, v22

    double-to-float v8, v0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 727
    move-wide/from16 v32, v34

    .line 728
    move-wide/from16 p9, v20

    .line 729
    move-wide/from16 p11, v22

    .line 730
    move-wide/from16 v24, v28

    .line 731
    move-wide/from16 v26, v30

    .line 705
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 733
    .end local v10    # "alpha":D
    .end local v16    # "cosEta2":D
    .end local v20    # "e2x":D
    .end local v22    # "e2y":D
    .end local v28    # "ep2x":D
    .end local v30    # "ep2y":D
    .end local v34    # "eta2":D
    .end local v38    # "q1x":D
    .end local v40    # "q1y":D
    .end local v42    # "q2x":D
    .end local v44    # "q2y":D
    .end local v48    # "sinEta2":D
    .end local v52    # "tanDiff2":D
    :cond_0
    return-void
.end method

.method static drawArc(Landroid/graphics/Path;FFFFFFFZZ)V
    .locals 54
    .param p0, "p"    # Landroid/graphics/Path;
    .param p1, "x0"    # F
    .param p2, "y0"    # F
    .param p3, "x1"    # F
    .param p4, "y1"    # F
    .param p5, "a"    # F
    .param p6, "b"    # F
    .param p7, "theta"    # F
    .param p8, "isMoreThanHalf"    # Z
    .param p9, "isPositiveArc"    # Z

    .prologue
    .line 601
    :goto_0
    move/from16 v0, p7

    float-to-double v8, v0

    invoke-static {v8, v9}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v16

    .line 603
    .local v16, "thetaD":D
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->cos(D)D

    move-result-wide v22

    .line 604
    .local v22, "cosTheta":D
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sin(D)D

    move-result-wide v38

    .line 607
    .local v38, "sinTheta":D
    move/from16 v0, p1

    float-to-double v8, v0

    mul-double v8, v8, v22

    move/from16 v0, p2

    float-to-double v10, v0

    mul-double v10, v10, v38

    add-double/2addr v8, v10

    move/from16 v0, p5

    float-to-double v10, v0

    div-double v42, v8, v10

    .line 608
    .local v42, "x0p":D
    move/from16 v0, p1

    neg-float v3, v0

    float-to-double v8, v3

    mul-double v8, v8, v38

    move/from16 v0, p2

    float-to-double v10, v0

    mul-double v10, v10, v22

    add-double/2addr v8, v10

    move/from16 v0, p6

    float-to-double v10, v0

    div-double v48, v8, v10

    .line 609
    .local v48, "y0p":D
    move/from16 v0, p3

    float-to-double v8, v0

    mul-double v8, v8, v22

    move/from16 v0, p4

    float-to-double v10, v0

    mul-double v10, v10, v38

    add-double/2addr v8, v10

    move/from16 v0, p5

    float-to-double v10, v0

    div-double v44, v8, v10

    .line 610
    .local v44, "x1p":D
    move/from16 v0, p3

    neg-float v3, v0

    float-to-double v8, v3

    mul-double v8, v8, v38

    move/from16 v0, p4

    float-to-double v10, v0

    mul-double v10, v10, v22

    add-double/2addr v8, v10

    move/from16 v0, p6

    float-to-double v10, v0

    div-double v50, v8, v10

    .line 613
    .local v50, "y1p":D
    sub-double v28, v42, v44

    .line 614
    .local v28, "dx":D
    sub-double v30, v48, v50

    .line 615
    .local v30, "dy":D
    add-double v8, v42, v44

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double v46, v8, v10

    .line 616
    .local v46, "xm":D
    add-double v8, v48, v50

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double v52, v8, v10

    .line 618
    .local v52, "ym":D
    mul-double v8, v28, v28

    mul-double v10, v30, v30

    add-double v26, v8, v10

    .line 619
    .local v26, "dsq":D
    const-wide/16 v8, 0x0

    cmpl-double v3, v26, v8

    if-nez v3, :cond_0

    .line 620
    const-string/jumbo v3, "PathParser"

    const-string/jumbo v8, " Points are coincident"

    invoke-static {v3, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    :goto_1
    return-void

    .line 623
    :cond_0
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    div-double v8, v8, v26

    const-wide/high16 v10, 0x3fd0000000000000L    # 0.25

    sub-double v24, v8, v10

    .line 624
    .local v24, "disc":D
    const-wide/16 v8, 0x0

    cmpg-double v3, v24, v8

    if-gez v3, :cond_1

    .line 625
    const-string/jumbo v3, "PathParser"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "Points are too far apart "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v0, v26

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    const-wide v10, 0x3ffffff583a53b8eL    # 1.99999

    div-double/2addr v8, v10

    double-to-float v2, v8

    .line 627
    .local v2, "adjust":F
    mul-float p5, p5, v2

    mul-float p6, p6, v2

    goto/16 :goto_0

    .line 631
    .end local v2    # "adjust":F
    :cond_1
    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v32

    .line 632
    .local v32, "s":D
    mul-double v34, v32, v28

    .line 633
    .local v34, "sdx":D
    mul-double v36, v32, v30

    .line 636
    .local v36, "sdy":D
    move/from16 v0, p8

    move/from16 v1, p9

    if-ne v0, v1, :cond_3

    .line 637
    sub-double v4, v46, v36

    .line 638
    .local v4, "cx":D
    add-double v6, v52, v34

    .line 644
    .local v6, "cy":D
    :goto_2
    sub-double v8, v48, v6

    sub-double v10, v42, v4

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v18

    .line 646
    .local v18, "eta0":D
    sub-double v8, v50, v6

    sub-double v10, v44, v4

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v8

    .line 648
    sub-double v20, v8, v18

    .line 649
    .local v20, "sweep":D
    const-wide/16 v8, 0x0

    cmpl-double v3, v20, v8

    if-ltz v3, :cond_4

    const/4 v3, 0x1

    :goto_3
    move/from16 v0, p9

    if-eq v0, v3, :cond_2

    .line 650
    const-wide/16 v8, 0x0

    cmpl-double v3, v20, v8

    if-lez v3, :cond_5

    .line 651
    const-wide v8, 0x401921fb54442d18L    # 6.283185307179586

    sub-double v20, v20, v8

    .line 657
    :cond_2
    :goto_4
    move/from16 v0, p5

    float-to-double v8, v0

    mul-double/2addr v4, v8

    .line 658
    move/from16 v0, p6

    float-to-double v8, v0

    mul-double/2addr v6, v8

    .line 659
    move-wide/from16 v40, v4

    .line 660
    .local v40, "tcx":D
    mul-double v8, v4, v22

    mul-double v10, v6, v38

    sub-double v4, v8, v10

    .line 661
    mul-double v8, v40, v38

    mul-double v10, v6, v22

    add-double v6, v8, v10

    .line 663
    move/from16 v0, p5

    float-to-double v8, v0

    move/from16 v0, p6

    float-to-double v10, v0

    move/from16 v0, p1

    float-to-double v12, v0

    move/from16 v0, p2

    float-to-double v14, v0

    move-object/from16 v3, p0

    invoke-static/range {v3 .. v21}, Landroid/support/graphics/drawable/PathParser$PathDataNode;->arcToBezier(Landroid/graphics/Path;DDDDDDDDD)V

    goto/16 :goto_1

    .line 640
    .end local v4    # "cx":D
    .end local v6    # "cy":D
    .end local v18    # "eta0":D
    .end local v20    # "sweep":D
    .end local v40    # "tcx":D
    :cond_3
    add-double v4, v46, v36

    .line 641
    .restart local v4    # "cx":D
    sub-double v6, v52, v34

    .restart local v6    # "cy":D
    goto :goto_2

    .line 649
    .restart local v18    # "eta0":D
    .restart local v20    # "sweep":D
    :cond_4
    const/4 v3, 0x0

    goto :goto_3

    .line 653
    :cond_5
    const-wide v8, 0x401921fb54442d18L    # 6.283185307179586

    add-double v20, v20, v8

    goto :goto_4
.end method
