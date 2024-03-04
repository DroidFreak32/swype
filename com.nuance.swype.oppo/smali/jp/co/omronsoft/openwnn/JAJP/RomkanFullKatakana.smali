.class public Ljp/co/omronsoft/openwnn/JAJP/RomkanFullKatakana;
.super Ljava/lang/Object;
.source "RomkanFullKatakana.java"

# interfaces
.implements Ljp/co/omronsoft/openwnn/LetterConverter;


# static fields
.field private static final mRomkanTable:Ljava/util/HashMap;
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
    .line 38
    new-instance v0, Ljp/co/omronsoft/openwnn/JAJP/RomkanFullKatakana$1;

    invoke-direct {v0}, Ljp/co/omronsoft/openwnn/JAJP/RomkanFullKatakana$1;-><init>()V

    sput-object v0, Ljp/co/omronsoft/openwnn/JAJP/RomkanFullKatakana;->mRomkanTable:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convert(Ljp/co/omronsoft/openwnn/ComposingText;Ljava/util/HashMap;)Z
    .locals 13
    .param p0, "text"    # Ljp/co/omronsoft/openwnn/ComposingText;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljp/co/omronsoft/openwnn/ComposingText;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 379
    .local p1, "table":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Ljp/co/omronsoft/openwnn/ComposingText;->getCursor(I)I

    move-result v0

    .line 381
    .local v0, "cursor":I
    if-gtz v0, :cond_0

    .line 382
    const/4 v8, 0x0

    .line 433
    :goto_0
    return v8

    .line 385
    :cond_0
    const/4 v8, 0x3

    new-array v6, v8, [Ljp/co/omronsoft/openwnn/StrSegment;

    .line 386
    .local v6, "str":[Ljp/co/omronsoft/openwnn/StrSegment;
    const/4 v5, 0x2

    .line 387
    .local v5, "start":I
    const/4 v8, 0x2

    const/4 v9, 0x1

    add-int/lit8 v10, v0, -0x1

    invoke-virtual {p0, v9, v10}, Ljp/co/omronsoft/openwnn/ComposingText;->getStrSegment(II)Ljp/co/omronsoft/openwnn/StrSegment;

    move-result-object v9

    aput-object v9, v6, v8

    .line 388
    const/4 v8, 0x2

    if-lt v0, v8, :cond_1

    .line 389
    const/4 v8, 0x1

    const/4 v9, 0x1

    add-int/lit8 v10, v0, -0x2

    invoke-virtual {p0, v9, v10}, Ljp/co/omronsoft/openwnn/ComposingText;->getStrSegment(II)Ljp/co/omronsoft/openwnn/StrSegment;

    move-result-object v9

    aput-object v9, v6, v8

    .line 390
    const/4 v5, 0x1

    .line 391
    const/4 v8, 0x3

    if-lt v0, v8, :cond_1

    .line 392
    const/4 v8, 0x0

    const/4 v9, 0x1

    add-int/lit8 v10, v0, -0x3

    invoke-virtual {p0, v9, v10}, Ljp/co/omronsoft/openwnn/ComposingText;->getStrSegment(II)Ljp/co/omronsoft/openwnn/StrSegment;

    move-result-object v9

    aput-object v9, v6, v8

    .line 393
    const/4 v5, 0x0

    .line 397
    :cond_1
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 398
    .local v2, "key":Ljava/lang/StringBuffer;
    :goto_1
    const/4 v8, 0x3

    if-ge v5, v8, :cond_7

    .line 399
    move v1, v5

    .local v1, "i":I
    :goto_2
    const/4 v8, 0x3

    if-ge v1, v8, :cond_2

    .line 400
    aget-object v8, v6, v1

    iget-object v8, v8, Ljp/co/omronsoft/openwnn/StrSegment;->string:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 399
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 402
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v7

    .line 403
    .local v7, "upper":Z
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 404
    .local v3, "match":Ljava/lang/String;
    if-eqz v3, :cond_6

    .line 405
    if-eqz v7, :cond_3

    .line 406
    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    .line 409
    :cond_3
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_5

    .line 410
    const/4 v8, 0x1

    new-array v4, v8, [Ljp/co/omronsoft/openwnn/StrSegment;

    .line 411
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

    .line 412
    const/4 v8, 0x1

    rsub-int/lit8 v9, v5, 0x3

    invoke-virtual {p0, v8, v4, v9}, Ljp/co/omronsoft/openwnn/ComposingText;->replaceStrSegment(I[Ljp/co/omronsoft/openwnn/StrSegment;I)V

    .line 421
    :goto_3
    const-string v8, ".*[a-zA-Z]$"

    .line 422
    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v8

    .line 423
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Ljp/co/omronsoft/openwnn/ComposingText;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    .line 424
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 425
    const/4 v8, 0x1

    const/4 v9, -0x1

    invoke-virtual {p0, v8, v9}, Ljp/co/omronsoft/openwnn/ComposingText;->moveCursor(II)I

    .line 427
    :cond_4
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 414
    .end local v4    # "out":[Ljp/co/omronsoft/openwnn/StrSegment;
    :cond_5
    const/4 v8, 0x2

    new-array v4, v8, [Ljp/co/omronsoft/openwnn/StrSegment;

    .line 415
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

    .line 417
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

    .line 419
    const/4 v8, 0x1

    rsub-int/lit8 v9, v5, 0x3

    invoke-virtual {p0, v8, v4, v9}, Ljp/co/omronsoft/openwnn/ComposingText;->replaceStrSegment(I[Ljp/co/omronsoft/openwnn/StrSegment;I)V

    goto :goto_3

    .line 429
    .end local v4    # "out":[Ljp/co/omronsoft/openwnn/StrSegment;
    :cond_6
    add-int/lit8 v5, v5, 0x1

    .line 430
    const/4 v8, 0x0

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v9

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 433
    .end local v1    # "i":I
    .end local v3    # "match":Ljava/lang/String;
    .end local v7    # "upper":Z
    :cond_7
    const/4 v8, 0x0

    goto/16 :goto_0
.end method


# virtual methods
.method public convert(Ljp/co/omronsoft/openwnn/ComposingText;)Z
    .locals 1
    .param p1, "text"    # Ljp/co/omronsoft/openwnn/ComposingText;

    .prologue
    .line 366
    sget-object v0, Ljp/co/omronsoft/openwnn/JAJP/RomkanFullKatakana;->mRomkanTable:Ljava/util/HashMap;

    invoke-static {p1, v0}, Ljp/co/omronsoft/openwnn/JAJP/RomkanFullKatakana;->convert(Ljp/co/omronsoft/openwnn/ComposingText;Ljava/util/HashMap;)Z

    move-result v0

    return v0
.end method

.method public setPreferences(Landroid/content/SharedPreferences;)V
    .locals 0
    .param p1, "pref"    # Landroid/content/SharedPreferences;

    .prologue
    .line 438
    return-void
.end method
