.class public Ljp/co/omronsoft/openwnn/JAJP/Romkan;
.super Ljava/lang/Object;
.source "Romkan.java"

# interfaces
.implements Ljp/co/omronsoft/openwnn/LetterConverter;


# static fields
.field private static final romkanTable:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    new-instance v0, Ljp/co/omronsoft/openwnn/JAJP/Romkan$1;

    invoke-direct {v0}, Ljp/co/omronsoft/openwnn/JAJP/Romkan$1;-><init>()V

    sput-object v0, Ljp/co/omronsoft/openwnn/JAJP/Romkan;->romkanTable:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public convert(Ljp/co/omronsoft/openwnn/ComposingText;)Z
    .locals 13
    .param p1, "text"    # Ljp/co/omronsoft/openwnn/ComposingText;

    .prologue
    .line 404
    const/4 v8, 0x1

    invoke-virtual {p1, v8}, Ljp/co/omronsoft/openwnn/ComposingText;->getCursor(I)I

    move-result v0

    .line 406
    .local v0, "cursor":I
    if-gtz v0, :cond_0

    .line 407
    const/4 v8, 0x0

    .line 452
    :goto_0
    return v8

    .line 410
    :cond_0
    const/4 v8, 0x3

    new-array v6, v8, [Ljp/co/omronsoft/openwnn/StrSegment;

    .line 411
    .local v6, "str":[Ljp/co/omronsoft/openwnn/StrSegment;
    const/4 v5, 0x2

    .line 412
    .local v5, "start":I
    const/4 v8, 0x2

    const/4 v9, 0x1

    add-int/lit8 v10, v0, -0x1

    invoke-virtual {p1, v9, v10}, Ljp/co/omronsoft/openwnn/ComposingText;->getStrSegment(II)Ljp/co/omronsoft/openwnn/StrSegment;

    move-result-object v9

    aput-object v9, v6, v8

    .line 413
    const/4 v8, 0x2

    if-lt v0, v8, :cond_1

    .line 414
    const/4 v8, 0x1

    const/4 v9, 0x1

    add-int/lit8 v10, v0, -0x2

    invoke-virtual {p1, v9, v10}, Ljp/co/omronsoft/openwnn/ComposingText;->getStrSegment(II)Ljp/co/omronsoft/openwnn/StrSegment;

    move-result-object v9

    aput-object v9, v6, v8

    .line 415
    const/4 v5, 0x1

    .line 416
    const/4 v8, 0x3

    if-lt v0, v8, :cond_1

    .line 417
    const/4 v8, 0x0

    const/4 v9, 0x1

    add-int/lit8 v10, v0, -0x3

    invoke-virtual {p1, v9, v10}, Ljp/co/omronsoft/openwnn/ComposingText;->getStrSegment(II)Ljp/co/omronsoft/openwnn/StrSegment;

    move-result-object v9

    aput-object v9, v6, v8

    .line 418
    const/4 v5, 0x0

    .line 422
    :cond_1
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 423
    .local v2, "key":Ljava/lang/StringBuffer;
    :goto_1
    const/4 v8, 0x3

    if-ge v5, v8, :cond_6

    .line 424
    move v1, v5

    .local v1, "i":I
    :goto_2
    const/4 v8, 0x3

    if-ge v1, v8, :cond_2

    .line 425
    aget-object v8, v6, v1

    iget-object v8, v8, Ljp/co/omronsoft/openwnn/StrSegment;->string:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 424
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 427
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v7

    .line 428
    .local v7, "upper":Z
    sget-object v8, Ljp/co/omronsoft/openwnn/JAJP/Romkan;->romkanTable:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 429
    .local v3, "match":Ljava/lang/String;
    if-eqz v3, :cond_5

    .line 430
    if-eqz v7, :cond_3

    .line 431
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 434
    :cond_3
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_4

    .line 435
    const/4 v8, 0x1

    new-array v4, v8, [Ljp/co/omronsoft/openwnn/StrSegment;

    .line 436
    .local v4, "out":[Ljp/co/omronsoft/openwnn/StrSegment;
    const/4 v8, 0x0

    new-instance v9, Ljp/co/omronsoft/openwnn/StrSegment;

    aget-object v10, v6, v5

    iget v10, v10, Ljp/co/omronsoft/openwnn/StrSegment;->from:I

    const/4 v11, 0x2

    aget-object v11, v6, v11

    iget v11, v11, Ljp/co/omronsoft/openwnn/StrSegment;->to:I

    invoke-direct {v9, v3, v10, v11}, Ljp/co/omronsoft/openwnn/StrSegment;-><init>(Ljava/lang/String;II)V

    aput-object v9, v4, v8

    .line 437
    const/4 v8, 0x1

    rsub-int/lit8 v9, v5, 0x3

    invoke-virtual {p1, v8, v4, v9}, Ljp/co/omronsoft/openwnn/ComposingText;->replaceStrSegment(I[Ljp/co/omronsoft/openwnn/StrSegment;I)V

    .line 446
    :goto_3
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 439
    .end local v4    # "out":[Ljp/co/omronsoft/openwnn/StrSegment;
    :cond_4
    const/4 v8, 0x2

    new-array v4, v8, [Ljp/co/omronsoft/openwnn/StrSegment;

    .line 440
    .restart local v4    # "out":[Ljp/co/omronsoft/openwnn/StrSegment;
    const/4 v8, 0x0

    new-instance v9, Ljp/co/omronsoft/openwnn/StrSegment;

    const/4 v10, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v3, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    aget-object v11, v6, v5

    iget v11, v11, Ljp/co/omronsoft/openwnn/StrSegment;->from:I

    const/4 v12, 0x2

    aget-object v12, v6, v12

    iget v12, v12, Ljp/co/omronsoft/openwnn/StrSegment;->to:I

    add-int/lit8 v12, v12, -0x1

    invoke-direct {v9, v10, v11, v12}, Ljp/co/omronsoft/openwnn/StrSegment;-><init>(Ljava/lang/String;II)V

    aput-object v9, v4, v8

    .line 442
    const/4 v8, 0x1

    new-instance v9, Ljp/co/omronsoft/openwnn/StrSegment;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v3, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x2

    aget-object v11, v6, v11

    iget v11, v11, Ljp/co/omronsoft/openwnn/StrSegment;->to:I

    const/4 v12, 0x2

    aget-object v12, v6, v12

    iget v12, v12, Ljp/co/omronsoft/openwnn/StrSegment;->to:I

    invoke-direct {v9, v10, v11, v12}, Ljp/co/omronsoft/openwnn/StrSegment;-><init>(Ljava/lang/String;II)V

    aput-object v9, v4, v8

    .line 444
    const/4 v8, 0x1

    rsub-int/lit8 v9, v5, 0x3

    invoke-virtual {p1, v8, v4, v9}, Ljp/co/omronsoft/openwnn/ComposingText;->replaceStrSegment(I[Ljp/co/omronsoft/openwnn/StrSegment;I)V

    goto :goto_3

    .line 448
    .end local v4    # "out":[Ljp/co/omronsoft/openwnn/StrSegment;
    :cond_5
    add-int/lit8 v5, v5, 0x1

    .line 449
    const/4 v8, 0x0

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v9

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 452
    .end local v1    # "i":I
    .end local v3    # "match":Ljava/lang/String;
    .end local v7    # "upper":Z
    :cond_6
    const/4 v8, 0x0

    goto/16 :goto_0
.end method

.method public setPreferences(Landroid/content/SharedPreferences;)V
    .locals 0
    .param p1, "pref"    # Landroid/content/SharedPreferences;

    .prologue
    .line 457
    return-void
.end method
