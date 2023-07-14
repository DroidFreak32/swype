.class public final Lcom/nuance/swype/util/CharacterUtilities;
.super Ljava/lang/Object;
.source "CharacterUtilities.java"


# static fields
.field private static final thaiCombiningMarks:[I


# instance fields
.field private final compounders:Ljava/lang/String;

.field private final diacriticMark:[C

.field private final embeddedPunct:[C

.field private final joiners:Ljava/lang/String;

.field public final leftPunct:[C

.field public maxSmileyLength:I

.field private final punctuation:Ljava/lang/String;

.field private final separators:Ljava/lang/String;

.field private final smileyDefinition:[Ljava/lang/String;

.field private final terminals:Ljava/lang/String;

.field public final unicase:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 423
    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/nuance/swype/util/CharacterUtilities;->thaiCombiningMarks:[I

    return-void

    :array_0
    .array-data 4
        0xe31
        0xe34
        0xe35
        0xe36
        0xe37
        0xe38
        0xe39
        0xe3a
        0xe47
        0xe48
        0xe49
        0xe4a
        0xe4b
        0xe4c
        0xe4d
        0xe4e
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput v1, p0, Lcom/nuance/swype/util/CharacterUtilities;->maxSmileyLength:I

    .line 63
    sget v2, Lcom/nuance/swype/input/R$string;->word_separators:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/swype/util/CharacterUtilities;->separators:Ljava/lang/String;

    .line 64
    sget v2, Lcom/nuance/swype/input/R$string;->terminal_punctuations:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/swype/util/CharacterUtilities;->terminals:Ljava/lang/String;

    .line 65
    sget v2, Lcom/nuance/swype/input/R$string;->punctuation_and_symbols:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/swype/util/CharacterUtilities;->punctuation:Ljava/lang/String;

    .line 66
    sget v2, Lcom/nuance/swype/input/R$string;->word_compounders:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/swype/util/CharacterUtilities;->compounders:Ljava/lang/String;

    .line 67
    sget v2, Lcom/nuance/swype/input/R$string;->string_joiners:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/swype/util/CharacterUtilities;->joiners:Ljava/lang/String;

    .line 68
    sget v2, Lcom/nuance/swype/input/R$string;->unicase_letters:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/swype/util/CharacterUtilities;->unicase:Ljava/lang/String;

    .line 70
    sget v2, Lcom/nuance/swype/input/R$string;->diacritic_mark:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/swype/util/CharacterUtilities;->diacriticMark:[C

    .line 71
    sget v2, Lcom/nuance/swype/input/R$string;->left_punctuation:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/swype/util/CharacterUtilities;->leftPunct:[C

    .line 72
    sget v2, Lcom/nuance/swype/input/R$string;->embedded_punct:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/swype/util/CharacterUtilities;->embeddedPunct:[C

    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/nuance/swype/input/R$array;->smiley_definition:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/swype/util/CharacterUtilities;->smileyDefinition:[Ljava/lang/String;

    .line 76
    iget-object v2, p0, Lcom/nuance/swype/util/CharacterUtilities;->smileyDefinition:[Ljava/lang/String;

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v2, v1

    .line 77
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    .line 78
    .local v0, "len":I
    iget v4, p0, Lcom/nuance/swype/util/CharacterUtilities;->maxSmileyLength:I

    if-le v0, v4, :cond_0

    .line 79
    iput v0, p0, Lcom/nuance/swype/util/CharacterUtilities;->maxSmileyLength:I

    .line 76
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 82
    .end local v0    # "len":I
    :cond_1
    return-void
.end method

.method public static endsWithSurrogatePair(Ljava/lang/CharSequence;)Z
    .locals 5
    .param p0, "text"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v1, 0x0

    .line 414
    if-eqz p0, :cond_3

    .line 415
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    add-int/lit8 v0, v2, -0x2

    .line 416
    .local v0, "index":I
    if-ltz v0, :cond_3

    .line 1395
    if-nez p0, :cond_0

    .line 1396
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "text == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1398
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 1399
    if-ltz v0, :cond_1

    if-lt v0, v2, :cond_2

    .line 1400
    :cond_1
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 1402
    :cond_2
    add-int/lit8 v3, v0, 0x1

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 1403
    if-ne v3, v2, :cond_4

    .line 1404
    .end local v0    # "index":I
    :cond_3
    :goto_0
    return v1

    .line 1406
    .restart local v0    # "index":I
    :cond_4
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 1407
    invoke-static {v4, v1}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v1

    goto :goto_0
.end method

.method public static from(Landroid/content/Context;)Lcom/nuance/swype/util/CharacterUtilities;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 54
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getCharacterUtilities()Lcom/nuance/swype/util/CharacterUtilities;

    move-result-object v0

    return-object v0
.end method

.method public static isControl(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 235
    const/16 v0, 0x20

    if-ge p0, v0, :cond_0

    invoke-static {p0}, Lcom/nuance/swype/util/CharacterUtilities;->isWhiteSpace(C)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/16 v0, 0x7f

    if-ne p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDigit(I)Z
    .locals 1
    .param p0, "code"    # I

    .prologue
    .line 307
    const/16 v0, 0x30

    if-gt v0, p0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isThaiCombiningMark(Ljava/lang/CharSequence;)Z
    .locals 4
    .param p0, "label"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 447
    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ne v3, v1, :cond_1

    .line 448
    invoke-static {p0, v2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 1443
    .local v0, "codePoint":I
    sget-object v3, Lcom/nuance/swype/util/CharacterUtilities;->thaiCombiningMarks:[I

    invoke-static {v3, v0}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v3

    if-ltz v3, :cond_0

    .end local v0    # "codePoint":I
    :goto_0
    return v1

    .restart local v0    # "codePoint":I
    :cond_0
    move v1, v2

    .line 449
    goto :goto_0

    .end local v0    # "codePoint":I
    :cond_1
    move v1, v2

    .line 451
    goto :goto_0
.end method

.method public static isUpperCaseLetter(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 250
    const/16 v0, 0x5a

    if-gt p0, v0, :cond_0

    const/16 v0, 0x41

    if-lt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isValidAlphabeticChar(I)Z
    .locals 1
    .param p0, "iChar"    # I

    .prologue
    .line 354
    invoke-static {p0}, Lcom/nuance/swype/util/CharacterUtilities;->isValidChineseChar(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isValidCJChar(I)Z
    .locals 1
    .param p0, "iChar"    # I

    .prologue
    .line 337
    const/16 v0, 0x3000

    if-lt p0, v0, :cond_0

    const/16 v0, 0x3130

    if-lt p0, v0, :cond_c

    :cond_0
    const/16 v0, 0x318f

    if-le p0, v0, :cond_1

    const v0, 0x9fa5

    if-le p0, v0, :cond_c

    :cond_1
    const v0, 0xe000

    if-lt p0, v0, :cond_2

    const v0, 0xeeb1

    if-le p0, v0, :cond_c

    :cond_2
    const v0, 0xf3a0

    if-lt p0, v0, :cond_3

    const v0, 0xf7ed

    if-le p0, v0, :cond_c

    :cond_3
    const v0, 0xef50

    if-lt p0, v0, :cond_4

    const v0, 0xfe6b

    if-le p0, v0, :cond_c

    :cond_4
    const v0, 0xff01

    if-lt p0, v0, :cond_5

    const v0, 0xff5e

    if-le p0, v0, :cond_c

    :cond_5
    const/16 v0, 0x2e80

    if-lt p0, v0, :cond_6

    const/16 v0, 0x2eff

    if-le p0, v0, :cond_c

    :cond_6
    const/16 v0, 0x4e00

    if-lt p0, v0, :cond_7

    const v0, 0x9fff

    if-le p0, v0, :cond_c

    :cond_7
    const v0, 0xf900

    if-lt p0, v0, :cond_8

    const v0, 0xfaff

    if-le p0, v0, :cond_c

    :cond_8
    const v0, 0xffe0

    if-lt p0, v0, :cond_9

    const v0, 0xfe4f

    if-le p0, v0, :cond_c

    :cond_9
    const v0, 0xfe30

    if-lt p0, v0, :cond_a

    const v0, 0xffe5

    if-le p0, v0, :cond_c

    :cond_a
    const/high16 v0, 0x20000

    if-lt p0, v0, :cond_b

    const v0, 0x2a6df

    if-le p0, v0, :cond_c

    :cond_b
    const v0, 0x2f800

    if-lt p0, v0, :cond_d

    const v0, 0x2fa1f

    if-gt p0, v0, :cond_d

    :cond_c
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isValidChineseChar(I)Z
    .locals 1
    .param p0, "iChar"    # I

    .prologue
    .line 317
    const/16 v0, 0x3000

    if-lt p0, v0, :cond_0

    const v0, 0x9fa5

    if-le p0, v0, :cond_5

    :cond_0
    const v0, 0xe000

    if-lt p0, v0, :cond_1

    const v0, 0xeeb1

    if-le p0, v0, :cond_5

    :cond_1
    const v0, 0xf3a0

    if-lt p0, v0, :cond_2

    const v0, 0xf7ed

    if-le p0, v0, :cond_5

    :cond_2
    const v0, 0xef50

    if-lt p0, v0, :cond_3

    const v0, 0xfe6b

    if-le p0, v0, :cond_5

    :cond_3
    const v0, 0xff01

    if-lt p0, v0, :cond_4

    const v0, 0xff5e

    if-le p0, v0, :cond_5

    :cond_4
    const v0, 0xffe0

    if-lt p0, v0, :cond_6

    const v0, 0xffe5

    if-gt p0, v0, :cond_6

    :cond_5
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isWhiteSpace(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 222
    invoke-static {p0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xa

    if-eq p0, v0, :cond_0

    const/16 v0, 0xa0

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final isDiacriticMark(C)Z
    .locals 1
    .param p1, "c"    # C

    .prologue
    .line 174
    iget-object v0, p0, Lcom/nuance/swype/util/CharacterUtilities;->diacriticMark:[C

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([CC)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isEmbeddedPunct(C)Z
    .locals 1
    .param p1, "c"    # C

    .prologue
    .line 184
    iget-object v0, p0, Lcom/nuance/swype/util/CharacterUtilities;->embeddedPunct:[C

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([CC)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isPunctuationOrSymbol(I)Z
    .locals 2
    .param p1, "code"    # I

    .prologue
    .line 134
    iget-object v0, p0, Lcom/nuance/swype/util/CharacterUtilities;->punctuation:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    int-to-char v0, p1

    invoke-virtual {p0, v0}, Lcom/nuance/swype/util/CharacterUtilities;->isEmbeddedPunct(C)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isSmiley(Ljava/lang/String;)Z
    .locals 8
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 460
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 461
    .local v1, "len":I
    const/4 v4, 0x2

    if-ge v1, v4, :cond_1

    .line 472
    :cond_0
    :goto_0
    return v3

    .line 465
    :cond_1
    iget-object v5, p0, Lcom/nuance/swype/util/CharacterUtilities;->smileyDefinition:[Ljava/lang/String;

    array-length v6, v5

    move v4, v3

    :goto_1
    if-ge v4, v6, :cond_0

    aget-object v2, v5, v4

    .line 466
    .local v2, "str":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 467
    .local v0, "idx":I
    const/4 v7, -0x1

    if-eq v0, v7, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v0

    if-ne v7, v1, :cond_2

    .line 468
    const/4 v3, 0x1

    goto :goto_0

    .line 465
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method public final isTerminalPunctuation(I)Z
    .locals 2
    .param p1, "code"    # I

    .prologue
    .line 101
    iget-object v0, p0, Lcom/nuance/swype/util/CharacterUtilities;->terminals:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isWordAcceptingSymbol(I)Z
    .locals 1
    .param p1, "code"    # I

    .prologue
    .line 278
    int-to-char v0, p1

    invoke-static {v0}, Lcom/nuance/swype/util/CharacterUtilities;->isWhiteSpace(C)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/nuance/swype/util/CharacterUtilities;->isTerminalPunctuation(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isWordBoundary(C)Z
    .locals 1
    .param p1, "c"    # C

    .prologue
    .line 287
    invoke-static {p1}, Lcom/nuance/swype/util/CharacterUtilities;->isWhiteSpace(C)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/nuance/swype/util/CharacterUtilities;->isWordSeparator(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/nuance/swype/util/CharacterUtilities;->isWordCompounder(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x27

    if-eq p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isWordBoundary(Ljava/lang/CharSequence;)Z
    .locals 2
    .param p1, "cs"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v0, 0x0

    .line 282
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 283
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1}, Lcom/nuance/swype/util/CharacterUtilities;->isWordBoundary(C)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public final isWordCompounder(I)Z
    .locals 2
    .param p1, "code"    # I

    .prologue
    .line 144
    iget-object v0, p0, Lcom/nuance/swype/util/CharacterUtilities;->compounders:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isWordSeparator(I)Z
    .locals 2
    .param p1, "code"    # I

    .prologue
    .line 91
    iget-object v0, p0, Lcom/nuance/swype/util/CharacterUtilities;->separators:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
