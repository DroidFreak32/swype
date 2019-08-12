.class public final Lcom/nuance/swype/util/CharacterUtilities;
.super Ljava/lang/Object;
.source "CharacterUtilities.java"


# instance fields
.field private compounders:Ljava/lang/String;

.field private diacriticMark:[C

.field private embeddedPunct:[C

.field public leftPunct:[C

.field public maxSmileyLength:I

.field private punctuation:Ljava/lang/String;

.field private separators:Ljava/lang/String;

.field private smileyDefinition:[Ljava/lang/String;

.field private terminals:Ljava/lang/String;

.field private unicase:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v4, 0x0

    iput v4, p0, Lcom/nuance/swype/util/CharacterUtilities;->maxSmileyLength:I

    .line 65
    sget v4, Lcom/nuance/swype/input/R$string;->word_separators:I

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/nuance/swype/util/CharacterUtilities;->separators:Ljava/lang/String;

    .line 66
    sget v4, Lcom/nuance/swype/input/R$string;->terminal_punctuations:I

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/nuance/swype/util/CharacterUtilities;->terminals:Ljava/lang/String;

    .line 67
    sget v4, Lcom/nuance/swype/input/R$string;->punctuation_and_symbols:I

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/nuance/swype/util/CharacterUtilities;->punctuation:Ljava/lang/String;

    .line 68
    sget v4, Lcom/nuance/swype/input/R$string;->word_compounders:I

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/nuance/swype/util/CharacterUtilities;->compounders:Ljava/lang/String;

    .line 69
    sget v4, Lcom/nuance/swype/input/R$string;->string_joiners:I

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 70
    sget v4, Lcom/nuance/swype/input/R$string;->unicase_letters:I

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/nuance/swype/util/CharacterUtilities;->unicase:Ljava/lang/String;

    .line 72
    sget v4, Lcom/nuance/swype/input/R$string;->diacritic_mark:I

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    iput-object v4, p0, Lcom/nuance/swype/util/CharacterUtilities;->diacriticMark:[C

    .line 73
    sget v4, Lcom/nuance/swype/input/R$string;->left_punctuation:I

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    iput-object v4, p0, Lcom/nuance/swype/util/CharacterUtilities;->leftPunct:[C

    .line 74
    sget v4, Lcom/nuance/swype/input/R$string;->embedded_punct:I

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    iput-object v4, p0, Lcom/nuance/swype/util/CharacterUtilities;->embeddedPunct:[C

    .line 75
    sget v4, Lcom/nuance/swype/input/R$string;->embedded_punct_num:I

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    .line 76
    sget v4, Lcom/nuance/swype/input/R$string;->left_currency:I

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    .line 78
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/nuance/swype/input/R$array;->smiley_definition:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/nuance/swype/util/CharacterUtilities;->smileyDefinition:[Ljava/lang/String;

    .line 80
    iget-object v0, p0, Lcom/nuance/swype/util/CharacterUtilities;->smileyDefinition:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v0, v1

    .line 81
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    .line 82
    .local v2, "len":I
    iget v4, p0, Lcom/nuance/swype/util/CharacterUtilities;->maxSmileyLength:I

    if-le v2, v4, :cond_0

    .line 83
    iput v2, p0, Lcom/nuance/swype/util/CharacterUtilities;->maxSmileyLength:I

    .line 80
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 86
    .end local v2    # "len":I
    :cond_1
    return-void
.end method

.method public static isDigit(I)Z
    .locals 1
    .param p0, "code"    # I

    .prologue
    .line 338
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

.method public static isEmoji(Ljava/lang/CharSequence;)Z
    .locals 5
    .param p0, "text"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v2, 0x1

    .line 434
    const/4 v0, 0x0

    .line 435
    .local v0, "emoji":Z
    if-eqz p0, :cond_0

    .line 436
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 437
    .local v1, "len":I
    if-le v1, v2, :cond_0

    .line 438
    add-int/lit8 v3, v1, -0x2

    invoke-interface {p0, v3, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    .line 439
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v3

    .line 440
    invoke-static {v3}, Ljava/lang/Character;->isSupplementaryCodePoint(I)Z

    move-result v3

    if-eqz v3, :cond_1

    move v0, v2

    .line 443
    .end local v1    # "len":I
    :cond_0
    :goto_0
    return v0

    .line 440
    .restart local v1    # "len":I
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSingleWordSpace(Ljava/lang/CharSequence;)Z
    .locals 4
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 126
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isLetter(C)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public final canStartWord(C)Z
    .locals 1
    .param p1, "c"    # C

    .prologue
    .line 322
    invoke-static {p1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/nuance/swype/util/CharacterUtilities;->isDigit(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/nuance/swype/util/CharacterUtilities;->isPunctuationOrSymbol(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x27

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isDiacriticMark(C)Z
    .locals 1
    .param p1, "c"    # C

    .prologue
    .line 178
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
    .line 188
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

.method public final isPunctSpace(Ljava/lang/CharSequence;)Z
    .locals 4
    .param p1, "cs"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 115
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lcom/nuance/swype/util/CharacterUtilities;->isTerminalPunctuation(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public final isPunctuationOrSymbol(I)Z
    .locals 2
    .param p1, "code"    # I

    .prologue
    .line 138
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
    const/4 v6, 0x0

    .line 452
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 453
    .local v3, "len":I
    const/4 v7, 0x2

    if-ge v3, v7, :cond_1

    .line 464
    :cond_0
    :goto_0
    return v6

    .line 457
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/util/CharacterUtilities;->smileyDefinition:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v4, :cond_0

    aget-object v5, v0, v1

    .line 458
    .local v5, "str":Ljava/lang/String;
    invoke-virtual {p1, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 459
    .local v2, "idx":I
    const/4 v7, -0x1

    if-eq v2, v7, :cond_2

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v2

    if-ne v7, v3, :cond_2

    .line 460
    const/4 v6, 0x1

    goto :goto_0

    .line 457
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public final isTerminalPunctuation(I)Z
    .locals 2
    .param p1, "code"    # I

    .prologue
    .line 105
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

.method public final isUnicase(C)Z
    .locals 2
    .param p1, "ch"    # C

    .prologue
    .line 357
    iget-object v0, p0, Lcom/nuance/swype/util/CharacterUtilities;->unicase:Ljava/lang/String;

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
    .line 309
    int-to-char v0, p1

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

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
    .line 318
    invoke-static {p1}, Ljava/lang/Character;->isWhitespace(C)Z

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

    .line 313
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

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
    .line 148
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
    .line 95
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
