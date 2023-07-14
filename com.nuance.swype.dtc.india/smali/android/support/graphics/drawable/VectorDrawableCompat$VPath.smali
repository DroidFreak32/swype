.class Landroid/support/graphics/drawable/VectorDrawableCompat$VPath;
.super Ljava/lang/Object;
.source "VectorDrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/graphics/drawable/VectorDrawableCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VPath"
.end annotation


# instance fields
.field mChangingConfigurations:I

.field protected mNodes:[Landroid/support/graphics/drawable/PathParser$PathDataNode;

.field mPathName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1348
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1344
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPath;->mNodes:[Landroid/support/graphics/drawable/PathParser$PathDataNode;

    .line 1350
    return-void
.end method

.method public constructor <init>(Landroid/support/graphics/drawable/VectorDrawableCompat$VPath;)V
    .locals 1
    .param p1, "copy"    # Landroid/support/graphics/drawable/VectorDrawableCompat$VPath;

    .prologue
    .line 1374
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1344
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPath;->mNodes:[Landroid/support/graphics/drawable/PathParser$PathDataNode;

    .line 1375
    iget-object v0, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VPath;->mPathName:Ljava/lang/String;

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPath;->mPathName:Ljava/lang/String;

    .line 1376
    iget v0, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VPath;->mChangingConfigurations:I

    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPath;->mChangingConfigurations:I

    .line 1377
    iget-object v0, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VPath;->mNodes:[Landroid/support/graphics/drawable/PathParser$PathDataNode;

    invoke-static {v0}, Landroid/support/graphics/drawable/PathParser;->deepCopyNodes([Landroid/support/graphics/drawable/PathParser$PathDataNode;)[Landroid/support/graphics/drawable/PathParser$PathDataNode;

    move-result-object v0

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPath;->mNodes:[Landroid/support/graphics/drawable/PathParser$PathDataNode;

    .line 1378
    return-void
.end method


# virtual methods
.method public isClipPath()Z
    .locals 1

    .prologue
    .line 1399
    const/4 v0, 0x0

    return v0
.end method

.method public final toPath(Landroid/graphics/Path;)V
    .locals 24
    .param p1, "path"    # Landroid/graphics/Path;

    .prologue
    .line 1381
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Path;->reset()V

    .line 1382
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPath;->mNodes:[Landroid/support/graphics/drawable/PathParser$PathDataNode;

    if-eqz v3, :cond_c

    .line 1383
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPath;->mNodes:[Landroid/support/graphics/drawable/PathParser$PathDataNode;

    move-object/from16 v21, v0

    .line 2314
    const/4 v3, 0x6

    new-array v0, v3, [F

    move-object/from16 v22, v0

    .line 2315
    const/16 v4, 0x6d

    .line 2316
    const/4 v3, 0x0

    move v13, v3

    move v3, v4

    :goto_0
    move-object/from16 v0, v21

    array-length v4, v0

    if-ge v13, v4, :cond_c

    .line 2317
    aget-object v4, v21, v13

    iget-char v0, v4, Landroid/support/graphics/drawable/PathParser$PathDataNode;->type:C

    move/from16 v20, v0

    aget-object v4, v21, v13

    iget-object v0, v4, Landroid/support/graphics/drawable/PathParser$PathDataNode;->params:[F

    move-object/from16 v23, v0

    .line 2342
    const/4 v10, 0x2

    .line 2343
    const/4 v4, 0x0

    aget v9, v22, v4

    .line 2344
    const/4 v4, 0x1

    aget v8, v22, v4

    .line 2345
    const/4 v4, 0x2

    aget v6, v22, v4

    .line 2346
    const/4 v4, 0x3

    aget v4, v22, v4

    .line 2347
    const/4 v5, 0x4

    aget v7, v22, v5

    .line 2348
    const/4 v5, 0x5

    aget v5, v22, v5

    .line 2352
    sparse-switch v20, :sswitch_data_0

    move v14, v10

    .line 2395
    :goto_1
    const/4 v10, 0x0

    move v15, v10

    move/from16 v16, v5

    move/from16 v17, v7

    move/from16 v18, v8

    move/from16 v19, v9

    :goto_2
    move-object/from16 v0, v23

    array-length v5, v0

    if-ge v15, v5, :cond_b

    .line 2396
    sparse-switch v20, :sswitch_data_1

    move/from16 v5, v16

    move/from16 v7, v17

    move/from16 v8, v18

    move/from16 v9, v19

    .line 2395
    :goto_3
    add-int v3, v15, v14

    move v15, v3

    move/from16 v16, v5

    move/from16 v17, v7

    move/from16 v18, v8

    move/from16 v19, v9

    move/from16 v3, v20

    goto :goto_2

    .line 2355
    :sswitch_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Path;->close()V

    .line 2363
    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v5}, Landroid/graphics/Path;->moveTo(FF)V

    move v4, v5

    move v6, v7

    move v8, v5

    move v9, v7

    move v14, v10

    .line 2364
    goto :goto_1

    .line 2371
    :sswitch_1
    const/4 v10, 0x2

    move v14, v10

    .line 2372
    goto :goto_1

    .line 2377
    :sswitch_2
    const/4 v10, 0x1

    move v14, v10

    .line 2378
    goto :goto_1

    .line 2381
    :sswitch_3
    const/4 v10, 0x6

    move v14, v10

    .line 2382
    goto :goto_1

    .line 2387
    :sswitch_4
    const/4 v10, 0x4

    move v14, v10

    .line 2388
    goto :goto_1

    .line 2391
    :sswitch_5
    const/4 v10, 0x7

    move v14, v10

    goto :goto_1

    .line 2398
    :sswitch_6
    add-int/lit8 v3, v15, 0x0

    aget v3, v23, v3

    add-float v7, v19, v3

    .line 2399
    add-int/lit8 v3, v15, 0x1

    aget v3, v23, v3

    add-float v5, v18, v3

    .line 2400
    if-lez v15, :cond_0

    .line 2404
    add-int/lit8 v3, v15, 0x0

    aget v3, v23, v3

    add-int/lit8 v8, v15, 0x1

    aget v8, v23, v8

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v8}, Landroid/graphics/Path;->rLineTo(FF)V

    move v8, v5

    move v9, v7

    move/from16 v5, v16

    move/from16 v7, v17

    goto :goto_3

    .line 2406
    :cond_0
    add-int/lit8 v3, v15, 0x0

    aget v3, v23, v3

    add-int/lit8 v8, v15, 0x1

    aget v8, v23, v8

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v8}, Landroid/graphics/Path;->rMoveTo(FF)V

    move v8, v5

    move v9, v7

    .line 2410
    goto :goto_3

    .line 2412
    :sswitch_7
    add-int/lit8 v3, v15, 0x0

    aget v7, v23, v3

    .line 2413
    add-int/lit8 v3, v15, 0x1

    aget v5, v23, v3

    .line 2414
    if-lez v15, :cond_1

    .line 2418
    add-int/lit8 v3, v15, 0x0

    aget v3, v23, v3

    add-int/lit8 v8, v15, 0x1

    aget v8, v23, v8

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v8}, Landroid/graphics/Path;->lineTo(FF)V

    move v8, v5

    move v9, v7

    move/from16 v5, v16

    move/from16 v7, v17

    goto :goto_3

    .line 2420
    :cond_1
    add-int/lit8 v3, v15, 0x0

    aget v3, v23, v3

    add-int/lit8 v8, v15, 0x1

    aget v8, v23, v8

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v8}, Landroid/graphics/Path;->moveTo(FF)V

    move v8, v5

    move v9, v7

    .line 2424
    goto/16 :goto_3

    .line 2426
    :sswitch_8
    add-int/lit8 v3, v15, 0x0

    aget v3, v23, v3

    add-int/lit8 v5, v15, 0x1

    aget v5, v23, v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v5}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 2427
    add-int/lit8 v3, v15, 0x0

    aget v3, v23, v3

    add-float v7, v19, v3

    .line 2428
    add-int/lit8 v3, v15, 0x1

    aget v3, v23, v3

    add-float v5, v18, v3

    move v8, v5

    move v9, v7

    move/from16 v5, v16

    move/from16 v7, v17

    .line 2429
    goto/16 :goto_3

    .line 2431
    :sswitch_9
    add-int/lit8 v3, v15, 0x0

    aget v3, v23, v3

    add-int/lit8 v5, v15, 0x1

    aget v5, v23, v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 2432
    add-int/lit8 v3, v15, 0x0

    aget v7, v23, v3

    .line 2433
    add-int/lit8 v3, v15, 0x1

    aget v5, v23, v3

    move v8, v5

    move v9, v7

    move/from16 v5, v16

    move/from16 v7, v17

    .line 2434
    goto/16 :goto_3

    .line 2436
    :sswitch_a
    add-int/lit8 v3, v15, 0x0

    aget v3, v23, v3

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v5}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 2437
    add-int/lit8 v3, v15, 0x0

    aget v3, v23, v3

    add-float v7, v19, v3

    move/from16 v5, v16

    move/from16 v8, v18

    move v9, v7

    move/from16 v7, v17

    .line 2438
    goto/16 :goto_3

    .line 2440
    :sswitch_b
    add-int/lit8 v3, v15, 0x0

    aget v3, v23, v3

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 2441
    add-int/lit8 v3, v15, 0x0

    aget v7, v23, v3

    move/from16 v5, v16

    move/from16 v8, v18

    move v9, v7

    move/from16 v7, v17

    .line 2442
    goto/16 :goto_3

    .line 2444
    :sswitch_c
    const/4 v3, 0x0

    add-int/lit8 v5, v15, 0x0

    aget v5, v23, v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v5}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 2445
    add-int/lit8 v3, v15, 0x0

    aget v3, v23, v3

    add-float v5, v18, v3

    move/from16 v7, v17

    move v8, v5

    move/from16 v9, v19

    move/from16 v5, v16

    .line 2446
    goto/16 :goto_3

    .line 2448
    :sswitch_d
    add-int/lit8 v3, v15, 0x0

    aget v3, v23, v3

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 2449
    add-int/lit8 v3, v15, 0x0

    aget v5, v23, v3

    move/from16 v7, v17

    move v8, v5

    move/from16 v9, v19

    move/from16 v5, v16

    .line 2450
    goto/16 :goto_3

    .line 2452
    :sswitch_e
    add-int/lit8 v3, v15, 0x0

    aget v4, v23, v3

    add-int/lit8 v3, v15, 0x1

    aget v5, v23, v3

    add-int/lit8 v3, v15, 0x2

    aget v6, v23, v3

    add-int/lit8 v3, v15, 0x3

    aget v7, v23, v3

    add-int/lit8 v3, v15, 0x4

    aget v8, v23, v3

    add-int/lit8 v3, v15, 0x5

    aget v9, v23, v3

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    .line 2455
    add-int/lit8 v3, v15, 0x2

    aget v3, v23, v3

    add-float v6, v19, v3

    .line 2456
    add-int/lit8 v3, v15, 0x3

    aget v3, v23, v3

    add-float v4, v18, v3

    .line 2457
    add-int/lit8 v3, v15, 0x4

    aget v3, v23, v3

    add-float v7, v19, v3

    .line 2458
    add-int/lit8 v3, v15, 0x5

    aget v3, v23, v3

    add-float v5, v18, v3

    move v8, v5

    move v9, v7

    move/from16 v5, v16

    move/from16 v7, v17

    .line 2460
    goto/16 :goto_3

    .line 2462
    :sswitch_f
    add-int/lit8 v3, v15, 0x0

    aget v4, v23, v3

    add-int/lit8 v3, v15, 0x1

    aget v5, v23, v3

    add-int/lit8 v3, v15, 0x2

    aget v6, v23, v3

    add-int/lit8 v3, v15, 0x3

    aget v7, v23, v3

    add-int/lit8 v3, v15, 0x4

    aget v8, v23, v3

    add-int/lit8 v3, v15, 0x5

    aget v9, v23, v3

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 2464
    add-int/lit8 v3, v15, 0x4

    aget v7, v23, v3

    .line 2465
    add-int/lit8 v3, v15, 0x5

    aget v5, v23, v3

    .line 2466
    add-int/lit8 v3, v15, 0x2

    aget v6, v23, v3

    .line 2467
    add-int/lit8 v3, v15, 0x3

    aget v4, v23, v3

    move v8, v5

    move v9, v7

    move/from16 v5, v16

    move/from16 v7, v17

    .line 2468
    goto/16 :goto_3

    .line 2470
    :sswitch_10
    const/4 v7, 0x0

    .line 2471
    const/4 v5, 0x0

    .line 2472
    const/16 v8, 0x63

    if-eq v3, v8, :cond_2

    const/16 v8, 0x73

    if-eq v3, v8, :cond_2

    const/16 v8, 0x43

    if-eq v3, v8, :cond_2

    const/16 v8, 0x53

    if-ne v3, v8, :cond_f

    .line 2474
    :cond_2
    sub-float v3, v19, v6

    .line 2475
    sub-float v5, v18, v4

    move v4, v3

    .line 2477
    :goto_4
    add-int/lit8 v3, v15, 0x0

    aget v6, v23, v3

    add-int/lit8 v3, v15, 0x1

    aget v7, v23, v3

    add-int/lit8 v3, v15, 0x2

    aget v8, v23, v3

    add-int/lit8 v3, v15, 0x3

    aget v9, v23, v3

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    .line 2481
    add-int/lit8 v3, v15, 0x0

    aget v3, v23, v3

    add-float v6, v19, v3

    .line 2482
    add-int/lit8 v3, v15, 0x1

    aget v3, v23, v3

    add-float v4, v18, v3

    .line 2483
    add-int/lit8 v3, v15, 0x2

    aget v3, v23, v3

    add-float v7, v19, v3

    .line 2484
    add-int/lit8 v3, v15, 0x3

    aget v3, v23, v3

    add-float v5, v18, v3

    move v8, v5

    move v9, v7

    move/from16 v5, v16

    move/from16 v7, v17

    .line 2485
    goto/16 :goto_3

    .line 2489
    :sswitch_11
    const/16 v5, 0x63

    if-eq v3, v5, :cond_3

    const/16 v5, 0x73

    if-eq v3, v5, :cond_3

    const/16 v5, 0x43

    if-eq v3, v5, :cond_3

    const/16 v5, 0x53

    if-ne v3, v5, :cond_e

    .line 2491
    :cond_3
    const/high16 v3, 0x40000000    # 2.0f

    mul-float v3, v3, v19

    sub-float v19, v3, v6

    .line 2492
    const/high16 v3, 0x40000000    # 2.0f

    mul-float v3, v3, v18

    sub-float v5, v3, v4

    move/from16 v4, v19

    .line 2494
    :goto_5
    add-int/lit8 v3, v15, 0x0

    aget v6, v23, v3

    add-int/lit8 v3, v15, 0x1

    aget v7, v23, v3

    add-int/lit8 v3, v15, 0x2

    aget v8, v23, v3

    add-int/lit8 v3, v15, 0x3

    aget v9, v23, v3

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 2496
    add-int/lit8 v3, v15, 0x0

    aget v6, v23, v3

    .line 2497
    add-int/lit8 v3, v15, 0x1

    aget v4, v23, v3

    .line 2498
    add-int/lit8 v3, v15, 0x2

    aget v7, v23, v3

    .line 2499
    add-int/lit8 v3, v15, 0x3

    aget v5, v23, v3

    move v8, v5

    move v9, v7

    move/from16 v5, v16

    move/from16 v7, v17

    .line 2500
    goto/16 :goto_3

    .line 2502
    :sswitch_12
    add-int/lit8 v3, v15, 0x0

    aget v3, v23, v3

    add-int/lit8 v4, v15, 0x1

    aget v4, v23, v4

    add-int/lit8 v5, v15, 0x2

    aget v5, v23, v5

    add-int/lit8 v6, v15, 0x3

    aget v6, v23, v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    .line 2503
    add-int/lit8 v3, v15, 0x0

    aget v3, v23, v3

    add-float v6, v19, v3

    .line 2504
    add-int/lit8 v3, v15, 0x1

    aget v3, v23, v3

    add-float v4, v18, v3

    .line 2505
    add-int/lit8 v3, v15, 0x2

    aget v3, v23, v3

    add-float v7, v19, v3

    .line 2506
    add-int/lit8 v3, v15, 0x3

    aget v3, v23, v3

    add-float v5, v18, v3

    move v8, v5

    move v9, v7

    move/from16 v5, v16

    move/from16 v7, v17

    .line 2507
    goto/16 :goto_3

    .line 2509
    :sswitch_13
    add-int/lit8 v3, v15, 0x0

    aget v3, v23, v3

    add-int/lit8 v4, v15, 0x1

    aget v4, v23, v4

    add-int/lit8 v5, v15, 0x2

    aget v5, v23, v5

    add-int/lit8 v6, v15, 0x3

    aget v6, v23, v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 2510
    add-int/lit8 v3, v15, 0x0

    aget v6, v23, v3

    .line 2511
    add-int/lit8 v3, v15, 0x1

    aget v4, v23, v3

    .line 2512
    add-int/lit8 v3, v15, 0x2

    aget v7, v23, v3

    .line 2513
    add-int/lit8 v3, v15, 0x3

    aget v5, v23, v3

    move v8, v5

    move v9, v7

    move/from16 v5, v16

    move/from16 v7, v17

    .line 2514
    goto/16 :goto_3

    .line 2516
    :sswitch_14
    const/4 v7, 0x0

    .line 2517
    const/4 v5, 0x0

    .line 2518
    const/16 v8, 0x71

    if-eq v3, v8, :cond_4

    const/16 v8, 0x74

    if-eq v3, v8, :cond_4

    const/16 v8, 0x51

    if-eq v3, v8, :cond_4

    const/16 v8, 0x54

    if-ne v3, v8, :cond_d

    .line 2520
    :cond_4
    sub-float v5, v19, v6

    .line 2521
    sub-float v3, v18, v4

    move v4, v5

    .line 2523
    :goto_6
    add-int/lit8 v5, v15, 0x0

    aget v5, v23, v5

    add-int/lit8 v6, v15, 0x1

    aget v6, v23, v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v3, v5, v6}, Landroid/graphics/Path;->rQuadTo(FFFF)V

    .line 2525
    add-float v6, v19, v4

    .line 2526
    add-float v4, v18, v3

    .line 2527
    add-int/lit8 v3, v15, 0x0

    aget v3, v23, v3

    add-float v7, v19, v3

    .line 2528
    add-int/lit8 v3, v15, 0x1

    aget v3, v23, v3

    add-float v5, v18, v3

    move v8, v5

    move v9, v7

    move/from16 v5, v16

    move/from16 v7, v17

    .line 2529
    goto/16 :goto_3

    .line 2533
    :sswitch_15
    const/16 v5, 0x71

    if-eq v3, v5, :cond_5

    const/16 v5, 0x74

    if-eq v3, v5, :cond_5

    const/16 v5, 0x51

    if-eq v3, v5, :cond_5

    const/16 v5, 0x54

    if-ne v3, v5, :cond_6

    .line 2535
    :cond_5
    const/high16 v3, 0x40000000    # 2.0f

    mul-float v3, v3, v19

    sub-float v19, v3, v6

    .line 2536
    const/high16 v3, 0x40000000    # 2.0f

    mul-float v3, v3, v18

    sub-float v18, v3, v4

    .line 2538
    :cond_6
    add-int/lit8 v3, v15, 0x0

    aget v3, v23, v3

    add-int/lit8 v4, v15, 0x1

    aget v4, v23, v4

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 2542
    add-int/lit8 v3, v15, 0x0

    aget v7, v23, v3

    .line 2543
    add-int/lit8 v3, v15, 0x1

    aget v5, v23, v3

    move/from16 v4, v18

    move/from16 v6, v19

    move v8, v5

    move v9, v7

    move/from16 v5, v16

    move/from16 v7, v17

    .line 2544
    goto/16 :goto_3

    .line 2547
    :sswitch_16
    add-int/lit8 v3, v15, 0x5

    aget v3, v23, v3

    add-float v6, v3, v19

    add-int/lit8 v3, v15, 0x6

    aget v3, v23, v3

    add-float v7, v3, v18

    add-int/lit8 v3, v15, 0x0

    aget v8, v23, v3

    add-int/lit8 v3, v15, 0x1

    aget v9, v23, v3

    add-int/lit8 v3, v15, 0x2

    aget v10, v23, v3

    add-int/lit8 v3, v15, 0x3

    aget v3, v23, v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_7

    const/4 v11, 0x1

    :goto_7
    add-int/lit8 v3, v15, 0x4

    aget v3, v23, v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_8

    const/4 v12, 0x1

    :goto_8
    move-object/from16 v3, p1

    move/from16 v4, v19

    move/from16 v5, v18

    invoke-static/range {v3 .. v12}, Landroid/support/graphics/drawable/PathParser$PathDataNode;->drawArc(Landroid/graphics/Path;FFFFFFFZZ)V

    .line 2557
    add-int/lit8 v3, v15, 0x5

    aget v3, v23, v3

    add-float v6, v19, v3

    .line 2558
    add-int/lit8 v3, v15, 0x6

    aget v3, v23, v3

    add-float v4, v18, v3

    move/from16 v5, v16

    move/from16 v7, v17

    move v8, v4

    move v9, v6

    .line 2561
    goto/16 :goto_3

    .line 2547
    :cond_7
    const/4 v11, 0x0

    goto :goto_7

    :cond_8
    const/4 v12, 0x0

    goto :goto_8

    .line 2563
    :sswitch_17
    add-int/lit8 v3, v15, 0x5

    aget v6, v23, v3

    add-int/lit8 v3, v15, 0x6

    aget v7, v23, v3

    add-int/lit8 v3, v15, 0x0

    aget v8, v23, v3

    add-int/lit8 v3, v15, 0x1

    aget v9, v23, v3

    add-int/lit8 v3, v15, 0x2

    aget v10, v23, v3

    add-int/lit8 v3, v15, 0x3

    aget v3, v23, v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_9

    const/4 v11, 0x1

    :goto_9
    add-int/lit8 v3, v15, 0x4

    aget v3, v23, v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_a

    const/4 v12, 0x1

    :goto_a
    move-object/from16 v3, p1

    move/from16 v4, v19

    move/from16 v5, v18

    invoke-static/range {v3 .. v12}, Landroid/support/graphics/drawable/PathParser$PathDataNode;->drawArc(Landroid/graphics/Path;FFFFFFFZZ)V

    .line 2573
    add-int/lit8 v3, v15, 0x5

    aget v6, v23, v3

    .line 2574
    add-int/lit8 v3, v15, 0x6

    aget v4, v23, v3

    move/from16 v5, v16

    move/from16 v7, v17

    move v8, v4

    move v9, v6

    .line 2576
    goto/16 :goto_3

    .line 2563
    :cond_9
    const/4 v11, 0x0

    goto :goto_9

    :cond_a
    const/4 v12, 0x0

    goto :goto_a

    .line 2581
    :cond_b
    const/4 v3, 0x0

    aput v19, v22, v3

    .line 2582
    const/4 v3, 0x1

    aput v18, v22, v3

    .line 2583
    const/4 v3, 0x2

    aput v6, v22, v3

    .line 2584
    const/4 v3, 0x3

    aput v4, v22, v3

    .line 2585
    const/4 v3, 0x4

    aput v17, v22, v3

    .line 2586
    const/4 v3, 0x5

    aput v16, v22, v3

    .line 2318
    aget-object v3, v21, v13

    iget-char v4, v3, Landroid/support/graphics/drawable/PathParser$PathDataNode;->type:C

    .line 2316
    add-int/lit8 v3, v13, 0x1

    move v13, v3

    move v3, v4

    goto/16 :goto_0

    .line 1385
    :cond_c
    return-void

    :cond_d
    move v3, v5

    move v4, v7

    goto/16 :goto_6

    :cond_e
    move/from16 v5, v18

    move/from16 v4, v19

    goto/16 :goto_5

    :cond_f
    move v4, v7

    goto/16 :goto_4

    .line 2352
    nop

    :sswitch_data_0
    .sparse-switch
        0x41 -> :sswitch_5
        0x43 -> :sswitch_3
        0x48 -> :sswitch_2
        0x4c -> :sswitch_1
        0x4d -> :sswitch_1
        0x51 -> :sswitch_4
        0x53 -> :sswitch_4
        0x54 -> :sswitch_1
        0x56 -> :sswitch_2
        0x5a -> :sswitch_0
        0x61 -> :sswitch_5
        0x63 -> :sswitch_3
        0x68 -> :sswitch_2
        0x6c -> :sswitch_1
        0x6d -> :sswitch_1
        0x71 -> :sswitch_4
        0x73 -> :sswitch_4
        0x74 -> :sswitch_1
        0x76 -> :sswitch_2
        0x7a -> :sswitch_0
    .end sparse-switch

    .line 2396
    :sswitch_data_1
    .sparse-switch
        0x41 -> :sswitch_17
        0x43 -> :sswitch_f
        0x48 -> :sswitch_b
        0x4c -> :sswitch_9
        0x4d -> :sswitch_7
        0x51 -> :sswitch_13
        0x53 -> :sswitch_11
        0x54 -> :sswitch_15
        0x56 -> :sswitch_d
        0x61 -> :sswitch_16
        0x63 -> :sswitch_e
        0x68 -> :sswitch_a
        0x6c -> :sswitch_8
        0x6d -> :sswitch_6
        0x71 -> :sswitch_12
        0x73 -> :sswitch_10
        0x74 -> :sswitch_14
        0x76 -> :sswitch_c
    .end sparse-switch
.end method
