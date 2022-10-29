.class public Lcom/nuance/swype/input/japanese/JapaneseCharacterSetUtils;
.super Ljava/lang/Object;
.source "JapaneseCharacterSetUtils.java"


# static fields
.field private static final HIRACYCLECOUNT:I = 0x39

.field private static final HIRAMODECOUNT:I = 0x4

.field private static final HiraModes:[[C

.field private static final HiraToDigit:[C

.field private static final HiraToDigitFull:[C

.field private static final HiraganaBig:[C

.field private static final HiraganaCycle:[C

.field private static final HiraganaSemiVo:[C

.field private static final HiraganaSmall:[C

.field private static final HiraganaVo:[C

.field private static final KANACOUNT:I = 0x30

.field private static final KatakanaBig:[C

.field private static final KatakanaSemiVo:[C

.field private static final KatakanaSmall:[C

.field private static final KatakanaVo:[C

.field private static final Rows:[I

.field private static final RowsCount:I = 0xa

.field private static final RowsCycle:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/16 v2, 0xa

    const/16 v1, 0x30

    .line 12
    new-array v0, v2, [I

    fill-array-data v0, :array_7c

    sput-object v0, Lcom/nuance/swype/input/japanese/JapaneseCharacterSetUtils;->Rows:[I

    .line 25
    new-array v0, v2, [I

    fill-array-data v0, :array_94

    sput-object v0, Lcom/nuance/swype/input/japanese/JapaneseCharacterSetUtils;->RowsCycle:[I

    .line 38
    new-array v0, v2, [C

    fill-array-data v0, :array_ac

    sput-object v0, Lcom/nuance/swype/input/japanese/JapaneseCharacterSetUtils;->HiraToDigit:[C

    .line 50
    new-array v0, v2, [C

    fill-array-data v0, :array_ba

    sput-object v0, Lcom/nuance/swype/input/japanese/JapaneseCharacterSetUtils;->HiraToDigitFull:[C

    .line 63
    new-array v0, v1, [C

    fill-array-data v0, :array_c8

    sput-object v0, Lcom/nuance/swype/input/japanese/JapaneseCharacterSetUtils;->HiraganaSmall:[C

    .line 113
    new-array v0, v1, [C

    fill-array-data v0, :array_fc

    sput-object v0, Lcom/nuance/swype/input/japanese/JapaneseCharacterSetUtils;->HiraganaBig:[C

    .line 163
    const/16 v0, 0x39

    new-array v0, v0, [C

    fill-array-data v0, :array_130

    sput-object v0, Lcom/nuance/swype/input/japanese/JapaneseCharacterSetUtils;->HiraganaCycle:[C

    .line 222
    new-array v0, v1, [C

    fill-array-data v0, :array_16e

    sput-object v0, Lcom/nuance/swype/input/japanese/JapaneseCharacterSetUtils;->HiraganaVo:[C

    .line 272
    new-array v0, v1, [C

    fill-array-data v0, :array_1a2

    sput-object v0, Lcom/nuance/swype/input/japanese/JapaneseCharacterSetUtils;->HiraganaSemiVo:[C

    .line 323
    new-array v0, v1, [C

    fill-array-data v0, :array_1d6

    sput-object v0, Lcom/nuance/swype/input/japanese/JapaneseCharacterSetUtils;->KatakanaSmall:[C

    .line 374
    new-array v0, v1, [C

    fill-array-data v0, :array_20a

    sput-object v0, Lcom/nuance/swype/input/japanese/JapaneseCharacterSetUtils;->KatakanaBig:[C

    .line 425
    new-array v0, v1, [C

    fill-array-data v0, :array_23e

    sput-object v0, Lcom/nuance/swype/input/japanese/JapaneseCharacterSetUtils;->KatakanaVo:[C

    .line 475
    new-array v0, v1, [C

    fill-array-data v0, :array_272

    sput-object v0, Lcom/nuance/swype/input/japanese/JapaneseCharacterSetUtils;->KatakanaSemiVo:[C

    .line 526
    const/4 v0, 0x4

    new-array v0, v0, [[C

    const/4 v1, 0x0

    sget-object v2, Lcom/nuance/swype/input/japanese/JapaneseCharacterSetUtils;->HiraganaBig:[C

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/nuance/swype/input/japanese/JapaneseCharacterSetUtils;->HiraganaSmall:[C

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/nuance/swype/input/japanese/JapaneseCharacterSetUtils;->HiraganaVo:[C

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/nuance/swype/input/japanese/JapaneseCharacterSetUtils;->HiraganaSemiVo:[C

    aput-object v2, v0, v1

    sput-object v0, Lcom/nuance/swype/input/japanese/JapaneseCharacterSetUtils;->HiraModes:[[C

    return-void

    .line 12
    nop

    :array_7c
    .array-data 4
        0x5
        0xa
        0xf
        0x14
        0x19
        0x1e
        0x23
        0x26
        0x2b
        0x31
    .end array-data

    .line 25
    :array_94
    .array-data 4
        0xa
        0xf
        0x14
        0x1a
        0x1f
        0x24
        0x29
        0x2f
        0x34
        0x39
    .end array-data

    .line 38
    :array_ac
    .array-data 2
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
    .end array-data

    .line 50
    :array_ba
    .array-data 2
        -0xefs
        -0xees
        -0xeds
        -0xecs
        -0xebs
        -0xeas
        -0xe9s
        -0xe8s
        -0xe7s
        -0xf0s
    .end array-data

    .line 63
    :array_c8
    .array-data 2
        0x3041s
        0x3043s
        0x3045s
        0x3047s
        0x3049s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x3063s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x3083s
        0x3085s
        0x3087s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x308es
        0x0s
        0x0s
        0x0s
        0x0s
    .end array-data

    .line 113
    :array_fc
    .array-data 2
        0x3042s
        0x3044s
        0x3046s
        0x3048s
        0x304as
        0x304bs
        0x304ds
        0x304fs
        0x3051s
        0x3053s
        0x3055s
        0x3057s
        0x3059s
        0x305bs
        0x305ds
        0x305fs
        0x3061s
        0x3064s
        0x3066s
        0x3068s
        0x306as
        0x306bs
        0x306cs
        0x306ds
        0x306es
        0x306fs
        0x3072s
        0x3075s
        0x3078s
        0x307bs
        0x307es
        0x307fs
        0x3080s
        0x3081s
        0x3082s
        0x3084s
        0x3086s
        0x3088s
        0x3089s
        0x308as
        0x308bs
        0x308cs
        0x308ds
        0x308fs
        0x3090s
        0x3091s
        0x3092s
        0x3093s
    .end array-data

    .line 163
    :array_130
    .array-data 2
        0x3042s
        0x3044s
        0x3046s
        0x3048s
        0x304as
        0x3041s
        0x3043s
        0x3045s
        0x3047s
        0x3049s
        0x304bs
        0x304ds
        0x304fs
        0x3051s
        0x3053s
        0x3055s
        0x3057s
        0x3059s
        0x305bs
        0x305ds
        0x305fs
        0x3061s
        0x3064s
        0x3066s
        0x3068s
        0x3063s
        0x306as
        0x306bs
        0x306cs
        0x306ds
        0x306es
        0x306fs
        0x3072s
        0x3075s
        0x3078s
        0x307bs
        0x307es
        0x307fs
        0x3080s
        0x3081s
        0x3082s
        0x3084s
        0x3086s
        0x3088s
        0x3083s
        0x3085s
        0x3087s
        0x3089s
        0x308as
        0x308bs
        0x308cs
        0x308ds
        0x308fs
        0x3092s
        0x3093s
        0x30fcs
        0x308es
    .end array-data

    .line 222
    nop

    :array_16e
    .array-data 2
        0x0s
        0x0s
        0x30f4s
        0x0s
        0x0s
        0x304cs
        0x304es
        0x3050s
        0x3052s
        0x3054s
        0x3056s
        0x3058s
        0x305as
        0x305cs
        0x305es
        0x3060s
        0x3062s
        0x3065s
        0x3067s
        0x3069s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x3070s
        0x3073s
        0x3076s
        0x3079s
        0x307cs
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
    .end array-data

    .line 272
    :array_1a2
    .array-data 2
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x3071s
        0x3074s
        0x3077s
        0x307as
        0x307ds
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
    .end array-data

    .line 323
    :array_1d6
    .array-data 2
        0x30a1s
        0x30a3s
        0x30a5s
        0x30a7s
        0x30a9s
        0x30f5s
        0x0s
        0x0s
        0x30f6s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x30c3s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x30e3s
        0x30e5s
        0x30e7s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x30ees
        0x0s
        0x0s
        0x0s
        0x0s
    .end array-data

    .line 374
    :array_20a
    .array-data 2
        0x30a2s
        0x30a4s
        0x30a6s
        0x30a8s
        0x30aas
        0x30abs
        0x30ads
        0x30afs
        0x30b1s
        0x30b3s
        0x30b5s
        0x30b7s
        0x30b9s
        0x30bbs
        0x30bds
        0x30bfs
        0x30c1s
        0x30c4s
        0x30c6s
        0x30c8s
        0x30cas
        0x30cbs
        0x30ccs
        0x30cds
        0x30ces
        0x30cfs
        0x30d2s
        0x30d5s
        0x30d8s
        0x30dbs
        0x30des
        0x30dfs
        0x30e0s
        0x30e1s
        0x30e2s
        0x30e4s
        0x30e6s
        0x30e8s
        0x30e9s
        0x30eas
        0x30ebs
        0x30ecs
        0x30eds
        0x30efs
        0x30f0s
        0x30f1s
        0x30f2s
        0x30f3s
    .end array-data

    .line 425
    :array_23e
    .array-data 2
        0x0s
        0x0s
        0x30f4s
        0x0s
        0x0s
        0x30acs
        0x30aes
        0x30b0s
        0x30b2s
        0x30b4s
        0x30b6s
        0x30b8s
        0x30bas
        0x30bcs
        0x30bes
        0x30c0s
        0x30c2s
        0x30c5s
        0x30c7s
        0x30c9s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x30d0s
        0x30d3s
        0x30d6s
        0x30d9s
        0x30dcs
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
    .end array-data

    .line 475
    :array_272
    .array-data 2
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x30d1s
        0x30d4s
        0x30d7s
        0x30das
        0x30dds
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertHira(C)C
    .registers 7
    .param p0, "charin"    # C

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x4

    .line 567
    const/4 v0, 0x0

    .line 568
    .local v0, "i":I
    :goto_3
    if-ge v0, v5, :cond_27

    .line 569
    const/4 v1, 0x0

    .line 570
    .local v1, "j":I
    :goto_6
    const/16 v4, 0x30

    if-ge v1, v4, :cond_31

    .line 571
    sget-object v4, Lcom/nuance/swype/input/japanese/JapaneseCharacterSetUtils;->HiraModes:[[C

    aget-object v4, v4, v0

    aget-char v4, v4, v1

    if-ne v4, p0, :cond_2e

    .line 572
    add-int/lit8 v2, v0, 0x1

    .line 573
    .local v2, "k":I
    if-ne v2, v5, :cond_17

    .line 574
    const/4 v2, 0x0

    .line 576
    :cond_17
    :goto_17
    if-eq v2, v0, :cond_27

    .line 577
    sget-object v4, Lcom/nuance/swype/input/japanese/JapaneseCharacterSetUtils;->HiraModes:[[C

    aget-object v4, v4, v2

    aget-char v4, v4, v1

    if-eqz v4, :cond_28

    .line 579
    sget-object v3, Lcom/nuance/swype/input/japanese/JapaneseCharacterSetUtils;->HiraModes:[[C

    aget-object v3, v3, v2

    aget-char v3, v3, v1

    .line 593
    .end local v1    # "j":I
    .end local v2    # "k":I
    :cond_27
    return v3

    .line 581
    .restart local v1    # "j":I
    .restart local v2    # "k":I
    :cond_28
    add-int/lit8 v2, v2, 0x1

    .line 582
    if-ne v2, v5, :cond_17

    .line 583
    const/4 v2, 0x0

    goto :goto_17

    .line 588
    .end local v2    # "k":I
    :cond_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 591
    :cond_31
    add-int/lit8 v0, v0, 0x1

    .line 592
    goto :goto_3
.end method

.method public static convertHira2Digital([CI[C[I)Z
    .registers 9
    .param p0, "charsin"    # [C
    .param p1, "slen"    # I
    .param p2, "charsout"    # [C
    .param p3, "dlen"    # [I

    .prologue
    const/4 v2, 0x0

    .line 737
    const/4 v1, 0x0

    .line 738
    .local v1, "ilen":I
    aput v2, p3, v2

    .line 739
    :goto_4
    if-ge v1, p1, :cond_26

    .line 740
    aget-char v3, p0, v1

    invoke-static {v3}, Lcom/nuance/swype/input/japanese/JapaneseCharacterSetUtils;->hira2Digital(C)C

    move-result v0

    .line 741
    .local v0, "charout":C
    if-eqz v0, :cond_21

    aget v3, p3, v2

    const/16 v4, 0x40

    if-ge v3, v4, :cond_21

    .line 742
    aget v3, p3, v2

    aput-char v0, p2, v3

    .line 743
    aget v3, p3, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, p3, v2

    .line 744
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 746
    :cond_21
    aput v2, p3, v2

    .line 747
    aput-char v2, p2, v2

    .line 751
    .end local v0    # "charout":C
    :goto_25
    return v2

    :cond_26
    const/4 v2, 0x1

    goto :goto_25
.end method

.method public static convertHira2DigitalFull([CI[C[I)Z
    .registers 9
    .param p0, "charsin"    # [C
    .param p1, "slen"    # I
    .param p2, "charsout"    # [C
    .param p3, "dlen"    # [I

    .prologue
    const/4 v2, 0x0

    .line 757
    const/4 v1, 0x0

    .line 758
    .local v1, "ilen":I
    aput v2, p3, v2

    .line 759
    :goto_4
    if-ge v1, p1, :cond_26

    .line 760
    aget-char v3, p0, v1

    invoke-static {v3}, Lcom/nuance/swype/input/japanese/JapaneseCharacterSetUtils;->hira2DigitalFull(C)C

    move-result v0

    .line 761
    .local v0, "charout":C
    if-eqz v0, :cond_21

    aget v3, p3, v2

    const/16 v4, 0x40

    if-ge v3, v4, :cond_21

    .line 762
    aget v3, p3, v2

    aput-char v0, p2, v3

    .line 763
    aget v3, p3, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, p3, v2

    .line 764
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 766
    :cond_21
    aput v2, p3, v2

    .line 767
    aput-char v2, p2, v2

    .line 771
    .end local v0    # "charout":C
    :goto_25
    return v2

    :cond_26
    const/4 v2, 0x1

    goto :goto_25
.end method

.method public static hira2Digital(C)C
    .registers 8
    .param p0, "charin"    # C

    .prologue
    const/4 v4, 0x0

    const/16 v6, 0x9

    .line 690
    invoke-static {p0}, Lcom/nuance/swype/input/japanese/JapaneseCharacterSetUtils;->isHiraIndex(C)I

    move-result v2

    .line 691
    .local v2, "k":I
    if-lez v2, :cond_1c

    .line 692
    div-int/lit16 v5, v2, 0x100

    add-int/lit8 v0, v5, -0x1

    .line 693
    .local v0, "i":I
    rem-int/lit16 v1, v2, 0x100

    .line 694
    .local v1, "j":I
    const/4 v3, 0x0

    .line 695
    .local v3, "r":I
    :goto_10
    if-ge v3, v6, :cond_20

    .line 696
    sget-object v5, Lcom/nuance/swype/input/japanese/JapaneseCharacterSetUtils;->Rows:[I

    aget v5, v5, v3

    if-ge v1, v5, :cond_1d

    .line 697
    sget-object v4, Lcom/nuance/swype/input/japanese/JapaneseCharacterSetUtils;->HiraToDigit:[C

    aget-char v4, v4, v3

    .line 708
    .end local v0    # "i":I
    .end local v1    # "j":I
    .end local v3    # "r":I
    :cond_1c
    :goto_1c
    return v4

    .line 699
    .restart local v0    # "i":I
    .restart local v1    # "j":I
    .restart local v3    # "r":I
    :cond_1d
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 701
    :cond_20
    if-nez v0, :cond_2d

    sget-object v5, Lcom/nuance/swype/input/japanese/JapaneseCharacterSetUtils;->Rows:[I

    aget v5, v5, v3

    if-ge v1, v5, :cond_2d

    .line 702
    sget-object v4, Lcom/nuance/swype/input/japanese/JapaneseCharacterSetUtils;->HiraToDigit:[C

    aget-char v4, v4, v6

    goto :goto_1c

    .line 703
    :cond_2d
    const/4 v5, 0x1

    if-ne v0, v5, :cond_1c

    sget-object v5, Lcom/nuance/swype/input/japanese/JapaneseCharacterSetUtils;->Rows:[I

    aget v5, v5, v3

    if-ge v1, v5, :cond_1c

    .line 704
    sget-object v4, Lcom/nuance/swype/input/japanese/JapaneseCharacterSetUtils;->HiraToDigit:[C

    aget-char v4, v4, v6

    goto :goto_1c
.end method

.method public static hira2DigitalFull(C)C
    .registers 8
    .param p0, "charin"    # C

    .prologue
    const/4 v4, 0x0

    const/16 v6, 0x9

    .line 713
    invoke-static {p0}, Lcom/nuance/swype/input/japanese/JapaneseCharacterSetUtils;->isHiraIndex(C)I

    move-result v2

    .line 714
    .local v2, "k":I
    if-lez v2, :cond_1c

    .line 715
    div-int/lit16 v5, v2, 0x100

    add-int/lit8 v0, v5, -0x1

    .line 716
    .local v0, "i":I
    rem-int/lit16 v1, v2, 0x100

    .line 717
    .local v1, "j":I
    const/4 v3, 0x0

    .line 718
    .local v3, "r":I
    :goto_10
    if-ge v3, v6, :cond_20

    .line 719
    sget-object v5, Lcom/nuance/swype/input/japanese/JapaneseCharacterSetUtils;->Rows:[I

    aget v5, v5, v3

    if-ge v1, v5, :cond_1d

    .line 720
    sget-object v4, Lcom/nuance/swype/input/japanese/JapaneseCharacterSetUtils;->HiraToDigitFull:[C

    aget-char v4, v4, v3

    .line 731
    .end local v0    # "i":I
    .end local v1    # "j":I
    .end local v3    # "r":I
    :cond_1c
    :goto_1c
    return v4

    .line 722
    .restart local v0    # "i":I
    .restart local v1    # "j":I
    .restart local v3    # "r":I
    :cond_1d
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 724
    :cond_20
    if-nez v0, :cond_2d

    sget-object v5, Lcom/nuance/swype/input/japanese/JapaneseCharacterSetUtils;->Rows:[I

    aget v5, v5, v3

    if-ge v1, v5, :cond_2d

    .line 725
    sget-object v4, Lcom/nuance/swype/input/japanese/JapaneseCharacterSetUtils;->HiraToDigitFull:[C

    aget-char v4, v4, v6

    goto :goto_1c

    .line 726
    :cond_2d
    const/4 v5, 0x1

    if-ne v0, v5, :cond_1c

    sget-object v5, Lcom/nuance/swype/input/japanese/JapaneseCharacterSetUtils;->Rows:[I

    aget v5, v5, v3

    if-ge v1, v5, :cond_1c

    .line 727
    sget-object v4, Lcom/nuance/swype/input/japanese/JapaneseCharacterSetUtils;->HiraToDigitFull:[C

    aget-char v4, v4, v6

    goto :goto_1c
.end method

.method public static hiraCycle(C)C
    .registers 8
    .param p0, "charin"    # C

    .prologue
    const/4 v4, 0x0

    .line 630
    invoke-static {p0}, Lcom/nuance/swype/input/japanese/JapaneseCharacterSetUtils;->isHiraCycle(C)I

    move-result v1

    .line 632
    .local v1, "k":I
    if-lez v1, :cond_59

    .line 634
    rem-int/lit16 v0, v1, 0x100

    .line 635
    .local v0, "j":I
    const/4 v3, 0x0

    .line 637
    .local v3, "r":I
    :goto_a
    const/16 v5, 0xa

    if-ge v3, v5, :cond_59

    .line 639
    sget-object v5, Lcom/nuance/swype/input/japanese/JapaneseCharacterSetUtils;->RowsCycle:[I

    aget v5, v5, v3

    if-ge v0, v5, :cond_5a

    .line 643
    add-int/lit8 v2, v0, -0x1

    .line 645
    .local v2, "l":I
    if-lez v3, :cond_41

    .line 646
    sget-object v5, Lcom/nuance/swype/input/japanese/JapaneseCharacterSetUtils;->RowsCycle:[I

    add-int/lit8 v6, v3, -0x1

    aget v5, v5, v6

    if-ge v2, v5, :cond_26

    .line 647
    sget-object v5, Lcom/nuance/swype/input/japanese/JapaneseCharacterSetUtils;->RowsCycle:[I

    aget v5, v5, v3

    add-int/lit8 v2, v5, -0x1

    .line 655
    :cond_26
    :goto_26
    sget-object v5, Lcom/nuance/swype/input/japanese/JapaneseCharacterSetUtils;->HiraganaCycle:[C

    aget-char v5, v5, v0

    if-nez v5, :cond_53

    if-eq v2, v0, :cond_53

    .line 657
    add-int/lit8 v2, v2, -0x1

    .line 659
    if-lez v3, :cond_4a

    .line 661
    sget-object v5, Lcom/nuance/swype/input/japanese/JapaneseCharacterSetUtils;->Rows:[I

    add-int/lit8 v6, v3, -0x1

    aget v5, v5, v6

    if-ge v2, v5, :cond_26

    .line 662
    sget-object v5, Lcom/nuance/swype/input/japanese/JapaneseCharacterSetUtils;->Rows:[I

    aget v5, v5, v3

    add-int/lit8 v2, v5, -0x1

    goto :goto_26

    .line 650
    :cond_41
    if-gez v2, :cond_26

    .line 651
    sget-object v5, Lcom/nuance/swype/input/japanese/JapaneseCharacterSetUtils;->RowsCycle:[I

    aget v5, v5, v3

    add-int/lit8 v2, v5, -0x1

    goto :goto_26

    .line 666
    :cond_4a
    if-gez v2, :cond_26

    .line 667
    sget-object v5, Lcom/nuance/swype/input/japanese/JapaneseCharacterSetUtils;->Rows:[I

    aget v5, v5, v3

    add-int/lit8 v2, v5, -0x1

    goto :goto_26

    .line 672
    :cond_53
    if-eq v2, v0, :cond_59

    .line 673
    sget-object v4, Lcom/nuance/swype/input/japanese/JapaneseCharacterSetUtils;->HiraganaCycle:[C

    aget-char v4, v4, v2

    .line 685
    .end local v0    # "j":I
    .end local v2    # "l":I
    .end local v3    # "r":I
    :cond_59
    return v4

    .line 679
    .restart local v0    # "j":I
    .restart local v3    # "r":I
    :cond_5a
    add-int/lit8 v3, v3, 0x1

    goto :goto_a
.end method

.method public static isBigHiragana(C)Z
    .registers 4
    .param p0, "charin"    # C

    .prologue
    const/4 v1, 0x0

    .line 779
    const/16 v2, 0x30fc

    if-ne p0, v2, :cond_6

    .line 798
    :cond_5
    :goto_5
    return v1

    .line 784
    :cond_6
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    const/16 v2, 0x30

    if-ge v0, v2, :cond_5

    .line 785
    sget-object v2, Lcom/nuance/swype/input/japanese/JapaneseCharacterSetUtils;->HiraganaSmall:[C

    aget-char v2, v2, v0

    if-eq p0, v2, :cond_5

    .line 788
    sget-object v2, Lcom/nuance/swype/input/japanese/JapaneseCharacterSetUtils;->HiraganaBig:[C

    aget-char v2, v2, v0

    if-ne p0, v2, :cond_19

    .line 789
    const/4 v1, 0x1

    goto :goto_5

    .line 791
    :cond_19
    sget-object v2, Lcom/nuance/swype/input/japanese/JapaneseCharacterSetUtils;->HiraganaVo:[C

    aget-char v2, v2, v0

    if-eq p0, v2, :cond_5

    .line 794
    sget-object v2, Lcom/nuance/swype/input/japanese/JapaneseCharacterSetUtils;->HiraganaSemiVo:[C

    aget-char v2, v2, v0

    if-eq p0, v2, :cond_5

    .line 784
    add-int/lit8 v0, v0, 0x1

    goto :goto_7
.end method

.method public static isHiraCycle(C)I
    .registers 3
    .param p0, "charin"    # C

    .prologue
    .line 620
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/16 v1, 0x39

    if-ge v0, v1, :cond_11

    .line 621
    sget-object v1, Lcom/nuance/swype/input/japanese/JapaneseCharacterSetUtils;->HiraganaCycle:[C

    aget-char v1, v1, v0

    if-ne p0, v1, :cond_e

    .line 622
    add-int/lit16 v1, v0, 0x100

    .line 625
    :goto_d
    return v1

    .line 620
    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 625
    :cond_11
    const/4 v1, 0x0

    goto :goto_d
.end method

.method public static isHiraIndex(C)I
    .registers 3
    .param p0, "charin"    # C

    .prologue
    .line 598
    const/16 v1, 0x30fc

    if-ne p0, v1, :cond_7

    .line 599
    const/16 v1, 0x130

    .line 615
    :goto_6
    return v1

    .line 601
    :cond_7
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_8
    const/16 v1, 0x30

    if-ge v0, v1, :cond_33

    .line 602
    sget-object v1, Lcom/nuance/swype/input/japanese/JapaneseCharacterSetUtils;->HiraganaSmall:[C

    aget-char v1, v1, v0

    if-ne p0, v1, :cond_15

    .line 603
    add-int/lit16 v1, v0, 0x200

    goto :goto_6

    .line 605
    :cond_15
    sget-object v1, Lcom/nuance/swype/input/japanese/JapaneseCharacterSetUtils;->HiraganaBig:[C

    aget-char v1, v1, v0

    if-ne p0, v1, :cond_1e

    .line 606
    add-int/lit16 v1, v0, 0x100

    goto :goto_6

    .line 608
    :cond_1e
    sget-object v1, Lcom/nuance/swype/input/japanese/JapaneseCharacterSetUtils;->HiraganaVo:[C

    aget-char v1, v1, v0

    if-ne p0, v1, :cond_27

    .line 609
    add-int/lit16 v1, v0, 0x300

    goto :goto_6

    .line 611
    :cond_27
    sget-object v1, Lcom/nuance/swype/input/japanese/JapaneseCharacterSetUtils;->HiraganaSemiVo:[C

    aget-char v1, v1, v0

    if-ne p0, v1, :cond_30

    .line 612
    add-int/lit16 v1, v0, 0x400

    goto :goto_6

    .line 601
    :cond_30
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 615
    :cond_33
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public static isHiragana(C)Z
    .registers 4
    .param p0, "charin"    # C

    .prologue
    const/4 v1, 0x1

    .line 551
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    const/16 v2, 0x30

    if-ge v0, v2, :cond_22

    .line 552
    sget-object v2, Lcom/nuance/swype/input/japanese/JapaneseCharacterSetUtils;->HiraganaSmall:[C

    aget-char v2, v2, v0

    if-ne p0, v2, :cond_d

    .line 562
    :cond_c
    :goto_c
    return v1

    .line 554
    :cond_d
    sget-object v2, Lcom/nuance/swype/input/japanese/JapaneseCharacterSetUtils;->HiraganaBig:[C

    aget-char v2, v2, v0

    if-eq p0, v2, :cond_c

    .line 556
    sget-object v2, Lcom/nuance/swype/input/japanese/JapaneseCharacterSetUtils;->HiraganaVo:[C

    aget-char v2, v2, v0

    if-eq p0, v2, :cond_c

    .line 558
    sget-object v2, Lcom/nuance/swype/input/japanese/JapaneseCharacterSetUtils;->HiraganaSemiVo:[C

    aget-char v2, v2, v0

    if-eq p0, v2, :cond_c

    .line 551
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 562
    :cond_22
    const/4 v1, 0x0

    goto :goto_c
.end method

.method public static isKatakana(C)Z
    .registers 4
    .param p0, "charin"    # C

    .prologue
    const/4 v1, 0x1

    .line 535
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    const/16 v2, 0x30

    if-ge v0, v2, :cond_22

    .line 536
    sget-object v2, Lcom/nuance/swype/input/japanese/JapaneseCharacterSetUtils;->KatakanaSmall:[C

    aget-char v2, v2, v0

    if-ne p0, v2, :cond_d

    .line 546
    :cond_c
    :goto_c
    return v1

    .line 538
    :cond_d
    sget-object v2, Lcom/nuance/swype/input/japanese/JapaneseCharacterSetUtils;->KatakanaBig:[C

    aget-char v2, v2, v0

    if-eq p0, v2, :cond_c

    .line 540
    sget-object v2, Lcom/nuance/swype/input/japanese/JapaneseCharacterSetUtils;->KatakanaVo:[C

    aget-char v2, v2, v0

    if-eq p0, v2, :cond_c

    .line 542
    sget-object v2, Lcom/nuance/swype/input/japanese/JapaneseCharacterSetUtils;->KatakanaSemiVo:[C

    aget-char v2, v2, v0

    if-eq p0, v2, :cond_c

    .line 535
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 546
    :cond_22
    const/4 v1, 0x0

    goto :goto_c
.end method
