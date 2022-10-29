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
    .registers 2

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
    .registers 3
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
    .registers 2

    .prologue
    .line 1399
    const/4 v0, 0x0

    return v0
.end method

.method public final toPath(Landroid/graphics/Path;)V
    .registers 26
    .param p1, "path"    # Landroid/graphics/Path;

    .prologue
    .line 1381
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Path;->reset()V

    .line 1382
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPath;->mNodes:[Landroid/support/graphics/drawable/PathParser$PathDataNode;

    if-eqz v3, :cond_41d

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

    :goto_19
    move-object/from16 v0, v21

    array-length v4, v0

    if-ge v13, v4, :cond_41d

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
    sparse-switch v20, :sswitch_data_42c

    move v14, v10

    .line 2395
    :goto_41
    const/4 v10, 0x0

    move v15, v10

    move/from16 v16, v5

    move/from16 v17, v7

    move/from16 v18, v8

    move/from16 v19, v9

    :goto_4b
    move-object/from16 v0, v23

    array-length v5, v0

    if-ge v15, v5, :cond_401

    .line 2396
    sparse-switch v20, :sswitch_data_47e

    move/from16 v5, v16

    move/from16 v7, v17

    move/from16 v8, v18

    move/from16 v9, v19

    .line 2395
    :goto_5b
    add-int v3, v15, v14

    move v15, v3

    move/from16 v16, v5

    move/from16 v17, v7

    move/from16 v18, v8

    move/from16 v19, v9

    move/from16 v3, v20

    goto :goto_4b

    .line 2355
    :sswitch_69
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
    goto :goto_41

    .line 2371
    :sswitch_77
    const/4 v10, 0x2

    move v14, v10

    .line 2372
    goto :goto_41

    .line 2377
    :sswitch_7a
    const/4 v10, 0x1

    move v14, v10

    .line 2378
    goto :goto_41

    .line 2381
    :sswitch_7d
    const/4 v10, 0x6

    move v14, v10

    .line 2382
    goto :goto_41

    .line 2387
    :sswitch_80
    const/4 v10, 0x4

    move v14, v10

    .line 2388
    goto :goto_41

    .line 2391
    :sswitch_83
    const/4 v10, 0x7

    move v14, v10

    goto :goto_41

    .line 2398
    :sswitch_86
    add-int/lit8 v3, v15, 0x0

    aget v3, v23, v3

    add-float v7, v19, v3

    .line 2399
    add-int/lit8 v3, v15, 0x1

    aget v3, v23, v3

    add-float v5, v18, v3

    .line 2400
    if-lez v15, :cond_a8

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

    goto :goto_5b

    .line 2406
    :cond_a8
    add-int/lit8 v3, v15, 0x0

    aget v3, v23, v3

    add-int/lit8 v8, v15, 0x1

    aget v8, v23, v8

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v8}, Landroid/graphics/Path;->rMoveTo(FF)V

    move v8, v5

    move v9, v7

    .line 2410
    goto :goto_5b

    .line 2412
    :sswitch_b8
    add-int/lit8 v3, v15, 0x0

    aget v7, v23, v3

    .line 2413
    add-int/lit8 v3, v15, 0x1

    aget v5, v23, v3

    .line 2414
    if-lez v15, :cond_d6

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

    goto :goto_5b

    .line 2420
    :cond_d6
    add-int/lit8 v3, v15, 0x0

    aget v3, v23, v3

    add-int/lit8 v8, v15, 0x1

    aget v8, v23, v8

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v8}, Landroid/graphics/Path;->moveTo(FF)V

    move v8, v5

    move v9, v7

    .line 2424
    goto/16 :goto_5b

    .line 2426
    :sswitch_e7
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
    goto/16 :goto_5b

    .line 2431
    :sswitch_108
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
    goto/16 :goto_5b

    .line 2436
    :sswitch_125
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
    goto/16 :goto_5b

    .line 2440
    :sswitch_13e
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
    goto/16 :goto_5b

    .line 2444
    :sswitch_156
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
    goto/16 :goto_5b

    .line 2448
    :sswitch_16f
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
    goto/16 :goto_5b

    .line 2452
    :sswitch_187
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
    goto/16 :goto_5b

    .line 2462
    :sswitch_1c4
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
    goto/16 :goto_5b

    .line 2470
    :sswitch_1f9
    const/4 v7, 0x0

    .line 2471
    const/4 v5, 0x0

    .line 2472
    const/16 v8, 0x63

    if-eq v3, v8, :cond_20b

    const/16 v8, 0x73

    if-eq v3, v8, :cond_20b

    const/16 v8, 0x43

    if-eq v3, v8, :cond_20b

    const/16 v8, 0x53

    if-ne v3, v8, :cond_428

    .line 2474
    :cond_20b
    sub-float v3, v19, v6

    .line 2475
    sub-float v5, v18, v4

    move v4, v3

    .line 2477
    :goto_210
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
    goto/16 :goto_5b

    .line 2489
    :sswitch_245
    const/16 v5, 0x63

    if-eq v3, v5, :cond_255

    const/16 v5, 0x73

    if-eq v3, v5, :cond_255

    const/16 v5, 0x43

    if-eq v3, v5, :cond_255

    const/16 v5, 0x53

    if-ne v3, v5, :cond_422

    .line 2491
    :cond_255
    const/high16 v3, 0x40000000    # 2.0f

    mul-float v3, v3, v19

    sub-float v19, v3, v6

    .line 2492
    const/high16 v3, 0x40000000    # 2.0f

    mul-float v3, v3, v18

    sub-float v5, v3, v4

    move/from16 v4, v19

    .line 2494
    :goto_263
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
    goto/16 :goto_5b

    .line 2502
    :sswitch_290
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
    goto/16 :goto_5b

    .line 2509
    :sswitch_2c5
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
    goto/16 :goto_5b

    .line 2516
    :sswitch_2f2
    const/4 v7, 0x0

    .line 2517
    const/4 v5, 0x0

    .line 2518
    const/16 v8, 0x71

    if-eq v3, v8, :cond_304

    const/16 v8, 0x74

    if-eq v3, v8, :cond_304

    const/16 v8, 0x51

    if-eq v3, v8, :cond_304

    const/16 v8, 0x54

    if-ne v3, v8, :cond_41e

    .line 2520
    :cond_304
    sub-float v5, v19, v6

    .line 2521
    sub-float v3, v18, v4

    move v4, v5

    .line 2523
    :goto_309
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
    goto/16 :goto_5b

    .line 2533
    :sswitch_32e
    const/16 v5, 0x71

    if-eq v3, v5, :cond_33e

    const/16 v5, 0x74

    if-eq v3, v5, :cond_33e

    const/16 v5, 0x51

    if-eq v3, v5, :cond_33e

    const/16 v5, 0x54

    if-ne v3, v5, :cond_34a

    .line 2535
    :cond_33e
    const/high16 v3, 0x40000000    # 2.0f

    mul-float v3, v3, v19

    sub-float v19, v3, v6

    .line 2536
    const/high16 v3, 0x40000000    # 2.0f

    mul-float v3, v3, v18

    sub-float v18, v3, v4

    .line 2538
    :cond_34a
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
    goto/16 :goto_5b

    .line 2547
    :sswitch_36f
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

    if-eqz v3, :cond_3b8

    const/4 v11, 0x1

    :goto_391
    add-int/lit8 v3, v15, 0x4

    aget v3, v23, v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_3ba

    const/4 v12, 0x1

    :goto_39b
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
    goto/16 :goto_5b

    .line 2547
    :cond_3b8
    const/4 v11, 0x0

    goto :goto_391

    :cond_3ba
    const/4 v12, 0x0

    goto :goto_39b

    .line 2563
    :sswitch_3bc
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

    if-eqz v3, :cond_3fd

    const/4 v11, 0x1

    :goto_3da
    add-int/lit8 v3, v15, 0x4

    aget v3, v23, v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_3ff

    const/4 v12, 0x1

    :goto_3e4
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
    goto/16 :goto_5b

    .line 2563
    :cond_3fd
    const/4 v11, 0x0

    goto :goto_3da

    :cond_3ff
    const/4 v12, 0x0

    goto :goto_3e4

    .line 2581
    :cond_401
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

    goto/16 :goto_19

    .line 1385
    :cond_41d
    return-void

    :cond_41e
    move v3, v5

    move v4, v7

    goto/16 :goto_309

    :cond_422
    move/from16 v5, v18

    move/from16 v4, v19

    goto/16 :goto_263

    :cond_428
    move v4, v7

    goto/16 :goto_210

    .line 2352
    nop

    :sswitch_data_42c
    .sparse-switch
        0x41 -> :sswitch_83
        0x43 -> :sswitch_7d
        0x48 -> :sswitch_7a
        0x4c -> :sswitch_77
        0x4d -> :sswitch_77
        0x51 -> :sswitch_80
        0x53 -> :sswitch_80
        0x54 -> :sswitch_77
        0x56 -> :sswitch_7a
        0x5a -> :sswitch_69
        0x61 -> :sswitch_83
        0x63 -> :sswitch_7d
        0x68 -> :sswitch_7a
        0x6c -> :sswitch_77
        0x6d -> :sswitch_77
        0x71 -> :sswitch_80
        0x73 -> :sswitch_80
        0x74 -> :sswitch_77
        0x76 -> :sswitch_7a
        0x7a -> :sswitch_69
    .end sparse-switch

    .line 2396
    :sswitch_data_47e
    .sparse-switch
        0x41 -> :sswitch_3bc
        0x43 -> :sswitch_1c4
        0x48 -> :sswitch_13e
        0x4c -> :sswitch_108
        0x4d -> :sswitch_b8
        0x51 -> :sswitch_2c5
        0x53 -> :sswitch_245
        0x54 -> :sswitch_32e
        0x56 -> :sswitch_16f
        0x61 -> :sswitch_36f
        0x63 -> :sswitch_187
        0x68 -> :sswitch_125
        0x6c -> :sswitch_e7
        0x6d -> :sswitch_86
        0x71 -> :sswitch_290
        0x73 -> :sswitch_1f9
        0x74 -> :sswitch_2f2
        0x76 -> :sswitch_156
    .end sparse-switch
.end method
