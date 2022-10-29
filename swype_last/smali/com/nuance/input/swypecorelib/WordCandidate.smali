.class public Lcom/nuance/input/swypecorelib/WordCandidate;
.super Ljava/lang/Object;
.source "WordCandidate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/input/swypecorelib/WordCandidate$Source;
    }
.end annotation


# static fields
.field private static final ASDB:I = 0x4

.field private static final AUTOAPPEND:I = 0x6

.field private static final CONSTRUCTED:I = 0x8

.field private static final DRAWABLE:I = -0x1

.field private static final GDB:I = 0xa

.field private static final LDB:I = 0x2

.field private static final MDB:I = 0x3

.field private static final NEW_WORD:I = 0x9

.field private static final STEM:I = 0x5

.field private static final TERMPUNCT:I = 0x7

.field private static final UDB:I = 0x1

.field private static final UNKNOWN:I = 0x0

.field static final WORD_IS_AUTO_ACCECPT:I = 0x800

.field static final WORD_IS_DEFAULT_MASK:I = 0x40

.field static final WORD_IS_REMOVALBE:I = 0x100

.field static final WORD_IS_SMART_SELECTION:I = 0x400

.field static final WORD_IS_SPELL_CORRECTED_MASK:I = 0x20

.field static final WORD_IS_TERMINAL_MASK:I = 0x80

.field static final WORD_SHOULD_REMOVE_SPACE_BEFORE:I = 0x200

.field static final WORD_SOURCE_MASK:I = 0xf


# instance fields
.field private emoji_unicode:Ljava/lang/String;

.field private height:I

.field private mContextKillLength:I

.field mContextPredict:Ljava/lang/String;

.field private mId:I

.field mWord:Ljava/lang/String;

.field private mWordAttribute:I

.field private mWordCompletionLength:I

.field private width:I

.field private xPos:I

.field private yPos:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "word"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput-object p1, p0, Lcom/nuance/input/swypecorelib/WordCandidate;->mWord:Ljava/lang/String;

    .line 109
    iput v1, p0, Lcom/nuance/input/swypecorelib/WordCandidate;->mWordCompletionLength:I

    .line 110
    iput v1, p0, Lcom/nuance/input/swypecorelib/WordCandidate;->mWordAttribute:I

    .line 111
    const/4 v0, -0x1

    iput v0, p0, Lcom/nuance/input/swypecorelib/WordCandidate;->mId:I

    .line 112
    iput v1, p0, Lcom/nuance/input/swypecorelib/WordCandidate;->mContextKillLength:I

    .line 113
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .param p1, "word"    # Ljava/lang/String;
    .param p2, "id"    # I

    .prologue
    const/4 v0, 0x0

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput-object p1, p0, Lcom/nuance/input/swypecorelib/WordCandidate;->mWord:Ljava/lang/String;

    .line 117
    iput v0, p0, Lcom/nuance/input/swypecorelib/WordCandidate;->mWordCompletionLength:I

    .line 118
    iput v0, p0, Lcom/nuance/input/swypecorelib/WordCandidate;->mWordAttribute:I

    .line 119
    iput p2, p0, Lcom/nuance/input/swypecorelib/WordCandidate;->mId:I

    .line 120
    iput v0, p0, Lcom/nuance/input/swypecorelib/WordCandidate;->mContextKillLength:I

    .line 121
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;III)V
    .registers 6
    .param p1, "word"    # Ljava/lang/String;
    .param p2, "wordCompletionLength"    # I
    .param p3, "wordAttribute"    # I
    .param p4, "id"    # I

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object p1, p0, Lcom/nuance/input/swypecorelib/WordCandidate;->mWord:Ljava/lang/String;

    .line 101
    iput p2, p0, Lcom/nuance/input/swypecorelib/WordCandidate;->mWordCompletionLength:I

    .line 102
    iput p3, p0, Lcom/nuance/input/swypecorelib/WordCandidate;->mWordAttribute:I

    .line 103
    iput p4, p0, Lcom/nuance/input/swypecorelib/WordCandidate;->mId:I

    .line 104
    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/input/swypecorelib/WordCandidate;->mContextKillLength:I

    .line 105
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IIII)V
    .registers 7
    .param p1, "word"    # Ljava/lang/String;
    .param p2, "contextPredict"    # Ljava/lang/String;
    .param p3, "wordCompletionLength"    # I
    .param p4, "wordAttribute"    # I
    .param p5, "id"    # I
    .param p6, "contextKillLength"    # I

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p1, p0, Lcom/nuance/input/swypecorelib/WordCandidate;->mWord:Ljava/lang/String;

    .line 92
    iput-object p2, p0, Lcom/nuance/input/swypecorelib/WordCandidate;->mContextPredict:Ljava/lang/String;

    .line 93
    iput p3, p0, Lcom/nuance/input/swypecorelib/WordCandidate;->mWordCompletionLength:I

    .line 94
    iput p4, p0, Lcom/nuance/input/swypecorelib/WordCandidate;->mWordAttribute:I

    .line 95
    iput p5, p0, Lcom/nuance/input/swypecorelib/WordCandidate;->mId:I

    .line 96
    iput p6, p0, Lcom/nuance/input/swypecorelib/WordCandidate;->mContextKillLength:I

    .line 97
    return-void
.end method

.method public static createCandidates([Ljava/lang/String;[I)Ljava/util/List;
    .registers 12
    .param p0, "suggestions"    # [Ljava/lang/String;
    .param p1, "packedFields"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "[I)",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/input/swypecorelib/WordCandidate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 124
    new-instance v2, Ljava/util/ArrayList;

    array-length v8, p0

    invoke-direct {v2, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 126
    .local v2, "candidateList":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/input/swypecorelib/WordCandidate;>;"
    const/4 v4, 0x0

    .line 127
    .local v4, "fieldIndex":I
    array-length v9, p0

    const/4 v8, 0x0

    move v5, v4

    .end local v4    # "fieldIndex":I
    .local v5, "fieldIndex":I
    :goto_a
    if-ge v8, v9, :cond_26

    aget-object v7, p0, v8

    .line 128
    .local v7, "word":Ljava/lang/String;
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "fieldIndex":I
    .restart local v4    # "fieldIndex":I
    aget v3, p1, v5

    .line 129
    .local v3, "completionLength":I
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "fieldIndex":I
    .restart local v5    # "fieldIndex":I
    aget v0, p1, v4

    .line 130
    .local v0, "attr":I
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "fieldIndex":I
    .restart local v4    # "fieldIndex":I
    aget v6, p1, v5

    .line 131
    .local v6, "id":I
    new-instance v1, Lcom/nuance/input/swypecorelib/WordCandidate;

    invoke-direct {v1, v7, v3, v0, v6}, Lcom/nuance/input/swypecorelib/WordCandidate;-><init>(Ljava/lang/String;III)V

    .line 132
    .local v1, "candidate":Lcom/nuance/input/swypecorelib/WordCandidate;
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    add-int/lit8 v8, v8, 0x1

    move v5, v4

    .end local v4    # "fieldIndex":I
    .restart local v5    # "fieldIndex":I
    goto :goto_a

    .line 134
    .end local v0    # "attr":I
    .end local v1    # "candidate":Lcom/nuance/input/swypecorelib/WordCandidate;
    .end local v3    # "completionLength":I
    .end local v6    # "id":I
    .end local v7    # "word":Ljava/lang/String;
    :cond_26
    return-object v2
.end method


# virtual methods
.method public attribute()I
    .registers 2

    .prologue
    .line 178
    iget v0, p0, Lcom/nuance/input/swypecorelib/WordCandidate;->mWordAttribute:I

    return v0
.end method

.method public completionLength()I
    .registers 2

    .prologue
    .line 174
    iget v0, p0, Lcom/nuance/input/swypecorelib/WordCandidate;->mWordCompletionLength:I

    return v0
.end method

.method public containsDoubleLetters()Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 299
    iget-object v2, p0, Lcom/nuance/input/swypecorelib/WordCandidate;->mWord:Ljava/lang/String;

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/nuance/input/swypecorelib/WordCandidate;->mWord:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_f

    .line 310
    :cond_e
    :goto_e
    return v1

    .line 304
    :cond_f
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_10
    iget-object v2, p0, Lcom/nuance/input/swypecorelib/WordCandidate;->mWord:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_e

    .line 305
    iget-object v2, p0, Lcom/nuance/input/swypecorelib/WordCandidate;->mWord:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    iget-object v3, p0, Lcom/nuance/input/swypecorelib/WordCandidate;->mWord:Ljava/lang/String;

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v2, v3, :cond_2c

    .line 306
    const/4 v1, 0x1

    goto :goto_e

    .line 304
    :cond_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_10
.end method

.method public contextKillLength()I
    .registers 2

    .prologue
    .line 186
    iget v0, p0, Lcom/nuance/input/swypecorelib/WordCandidate;->mContextKillLength:I

    return v0
.end method

.method public contextPredict()Ljava/lang/String;
    .registers 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/WordCandidate;->mContextPredict:Ljava/lang/String;

    return-object v0
.end method

.method public contextPredictLength()I
    .registers 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/WordCandidate;->mContextPredict:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 166
    const/4 v0, 0x0

    .line 169
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/WordCandidate;->mContextPredict:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_5
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 285
    if-ne p0, p1, :cond_5

    .line 295
    :cond_4
    :goto_4
    return v1

    .line 289
    :cond_5
    instance-of v3, p1, Lcom/nuance/input/swypecorelib/WordCandidate;

    if-nez v3, :cond_b

    move v1, v2

    .line 290
    goto :goto_4

    :cond_b
    move-object v0, p1

    .line 293
    check-cast v0, Lcom/nuance/input/swypecorelib/WordCandidate;

    .line 295
    .local v0, "c":Lcom/nuance/input/swypecorelib/WordCandidate;
    iget-object v3, v0, Lcom/nuance/input/swypecorelib/WordCandidate;->mWord:Ljava/lang/String;

    if-eqz v3, :cond_24

    iget-object v3, p0, Lcom/nuance/input/swypecorelib/WordCandidate;->mWord:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/nuance/input/swypecorelib/WordCandidate;->mWord:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_24
    move v1, v2

    goto :goto_4
.end method

.method public getBottom()I
    .registers 3

    .prologue
    .line 337
    iget v0, p0, Lcom/nuance/input/swypecorelib/WordCandidate;->yPos:I

    invoke-virtual {p0}, Lcom/nuance/input/swypecorelib/WordCandidate;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getEmojiUnicode()Ljava/lang/String;
    .registers 2

    .prologue
    .line 362
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/WordCandidate;->emoji_unicode:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()I
    .registers 2

    .prologue
    .line 352
    iget v0, p0, Lcom/nuance/input/swypecorelib/WordCandidate;->height:I

    return v0
.end method

.method public getLeft()I
    .registers 2

    .prologue
    .line 321
    iget v0, p0, Lcom/nuance/input/swypecorelib/WordCandidate;->xPos:I

    return v0
.end method

.method public getRight()I
    .registers 3

    .prologue
    .line 333
    iget v0, p0, Lcom/nuance/input/swypecorelib/WordCandidate;->xPos:I

    invoke-virtual {p0}, Lcom/nuance/input/swypecorelib/WordCandidate;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getTop()I
    .registers 2

    .prologue
    .line 329
    iget v0, p0, Lcom/nuance/input/swypecorelib/WordCandidate;->yPos:I

    return v0
.end method

.method public getWidth()I
    .registers 2

    .prologue
    .line 344
    iget v0, p0, Lcom/nuance/input/swypecorelib/WordCandidate;->width:I

    return v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 280
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/WordCandidate;->mWord:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public id()I
    .registers 2

    .prologue
    .line 182
    iget v0, p0, Lcom/nuance/input/swypecorelib/WordCandidate;->mId:I

    return v0
.end method

.method public isAutoAccept()Z
    .registers 2

    .prologue
    .line 236
    iget v0, p0, Lcom/nuance/input/swypecorelib/WordCandidate;->mWordAttribute:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isCompletion()Z
    .registers 2

    .prologue
    .line 261
    iget v0, p0, Lcom/nuance/input/swypecorelib/WordCandidate;->mWordCompletionLength:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isDefault()Z
    .registers 2

    .prologue
    .line 240
    iget v0, p0, Lcom/nuance/input/swypecorelib/WordCandidate;->mWordAttribute:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isExact()Z
    .registers 2

    .prologue
    .line 265
    iget v0, p0, Lcom/nuance/input/swypecorelib/WordCandidate;->mId:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isExactADictionaryWord()Z
    .registers 3

    .prologue
    .line 227
    invoke-virtual {p0}, Lcom/nuance/input/swypecorelib/WordCandidate;->source()Lcom/nuance/input/swypecorelib/WordCandidate$Source;

    move-result-object v0

    .line 228
    .local v0, "src":Lcom/nuance/input/swypecorelib/WordCandidate$Source;
    sget-object v1, Lcom/nuance/input/swypecorelib/WordCandidate$Source;->WORD_SOURCE_NEW_WORD:Lcom/nuance/input/swypecorelib/WordCandidate$Source;

    if-eq v0, v1, :cond_e

    sget-object v1, Lcom/nuance/input/swypecorelib/WordCandidate$Source;->WORD_SOURCE_UNKNOWN:Lcom/nuance/input/swypecorelib/WordCandidate$Source;

    if-eq v0, v1, :cond_e

    const/4 v1, 0x1

    :goto_d
    return v1

    :cond_e
    const/4 v1, 0x0

    goto :goto_d
.end method

.method public isRemovable()Z
    .registers 3

    .prologue
    .line 269
    iget v0, p0, Lcom/nuance/input/swypecorelib/WordCandidate;->mWordAttribute:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_18

    .line 270
    invoke-virtual {p0}, Lcom/nuance/input/swypecorelib/WordCandidate;->source()Lcom/nuance/input/swypecorelib/WordCandidate$Source;

    move-result-object v0

    sget-object v1, Lcom/nuance/input/swypecorelib/WordCandidate$Source;->WORD_SOURCE_NEW_WORD:Lcom/nuance/input/swypecorelib/WordCandidate$Source;

    if-eq v0, v1, :cond_18

    .line 271
    invoke-virtual {p0}, Lcom/nuance/input/swypecorelib/WordCandidate;->source()Lcom/nuance/input/swypecorelib/WordCandidate$Source;

    move-result-object v0

    sget-object v1, Lcom/nuance/input/swypecorelib/WordCandidate$Source;->WORD_SOURCE_CONSTRUCTED:Lcom/nuance/input/swypecorelib/WordCandidate$Source;

    if-eq v0, v1, :cond_18

    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public isSmartSuggestion()Z
    .registers 2

    .prologue
    .line 244
    iget v0, p0, Lcom/nuance/input/swypecorelib/WordCandidate;->mWordAttribute:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isSpellCorrected()Z
    .registers 2

    .prologue
    .line 232
    iget v0, p0, Lcom/nuance/input/swypecorelib/WordCandidate;->mWordAttribute:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isTerminal()Z
    .registers 2

    .prologue
    .line 257
    iget v0, p0, Lcom/nuance/input/swypecorelib/WordCandidate;->mWordAttribute:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public length()I
    .registers 3

    .prologue
    .line 148
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/WordCandidate;->mContextPredict:Ljava/lang/String;

    if-nez v0, :cond_b

    .line 149
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/WordCandidate;->mWord:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 152
    :goto_a
    return v0

    :cond_b
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/WordCandidate;->mContextPredict:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/nuance/input/swypecorelib/WordCandidate;->mWord:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_a
.end method

.method public setEmojiUnicode(Ljava/lang/String;)V
    .registers 2
    .param p1, "emoji_unicode"    # Ljava/lang/String;

    .prologue
    .line 358
    iput-object p1, p0, Lcom/nuance/input/swypecorelib/WordCandidate;->emoji_unicode:Ljava/lang/String;

    .line 359
    return-void
.end method

.method public setHeight(I)V
    .registers 2
    .param p1, "height"    # I

    .prologue
    .line 348
    iput p1, p0, Lcom/nuance/input/swypecorelib/WordCandidate;->height:I

    .line 349
    return-void
.end method

.method public setLeft(I)V
    .registers 2
    .param p1, "xPos"    # I

    .prologue
    .line 318
    iput p1, p0, Lcom/nuance/input/swypecorelib/WordCandidate;->xPos:I

    .line 319
    return-void
.end method

.method public setSmartSuggestion(Z)V
    .registers 3
    .param p1, "val"    # Z

    .prologue
    .line 248
    if-eqz p1, :cond_9

    .line 249
    iget v0, p0, Lcom/nuance/input/swypecorelib/WordCandidate;->mWordAttribute:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/nuance/input/swypecorelib/WordCandidate;->mWordAttribute:I

    .line 254
    :goto_8
    return-void

    .line 252
    :cond_9
    iget v0, p0, Lcom/nuance/input/swypecorelib/WordCandidate;->mWordAttribute:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/nuance/input/swypecorelib/WordCandidate;->mWordAttribute:I

    goto :goto_8
.end method

.method public setTop(I)V
    .registers 2
    .param p1, "yPos"    # I

    .prologue
    .line 325
    iput p1, p0, Lcom/nuance/input/swypecorelib/WordCandidate;->yPos:I

    .line 326
    return-void
.end method

.method public setWidth(I)V
    .registers 2
    .param p1, "width"    # I

    .prologue
    .line 340
    iput p1, p0, Lcom/nuance/input/swypecorelib/WordCandidate;->width:I

    .line 341
    return-void
.end method

.method public setWord(Ljava/lang/String;)V
    .registers 2
    .param p1, "mWord"    # Ljava/lang/String;

    .prologue
    .line 314
    iput-object p1, p0, Lcom/nuance/input/swypecorelib/WordCandidate;->mWord:Ljava/lang/String;

    .line 315
    return-void
.end method

.method public shouldRemoveSpaceBefore()Z
    .registers 2

    .prologue
    .line 275
    iget v0, p0, Lcom/nuance/input/swypecorelib/WordCandidate;->mWordAttribute:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public source()Lcom/nuance/input/swypecorelib/WordCandidate$Source;
    .registers 2

    .prologue
    .line 190
    iget v0, p0, Lcom/nuance/input/swypecorelib/WordCandidate;->mWordAttribute:I

    and-int/lit8 v0, v0, 0xf

    packed-switch v0, :pswitch_data_28

    .line 222
    sget-object v0, Lcom/nuance/input/swypecorelib/WordCandidate$Source;->WORD_SOURCE_UNKNOWN:Lcom/nuance/input/swypecorelib/WordCandidate$Source;

    :goto_9
    return-object v0

    .line 192
    :pswitch_a
    sget-object v0, Lcom/nuance/input/swypecorelib/WordCandidate$Source;->WORD_SOURCE_USER_ADDED:Lcom/nuance/input/swypecorelib/WordCandidate$Source;

    goto :goto_9

    .line 195
    :pswitch_d
    sget-object v0, Lcom/nuance/input/swypecorelib/WordCandidate$Source;->WORD_SOURCE_LDB:Lcom/nuance/input/swypecorelib/WordCandidate$Source;

    goto :goto_9

    .line 198
    :pswitch_10
    sget-object v0, Lcom/nuance/input/swypecorelib/WordCandidate$Source;->WORD_SOURCE_MDB:Lcom/nuance/input/swypecorelib/WordCandidate$Source;

    goto :goto_9

    .line 201
    :pswitch_13
    sget-object v0, Lcom/nuance/input/swypecorelib/WordCandidate$Source;->WORD_SOURCE_ASDB:Lcom/nuance/input/swypecorelib/WordCandidate$Source;

    goto :goto_9

    .line 204
    :pswitch_16
    sget-object v0, Lcom/nuance/input/swypecorelib/WordCandidate$Source;->WORD_SOURCE_STEM:Lcom/nuance/input/swypecorelib/WordCandidate$Source;

    goto :goto_9

    .line 207
    :pswitch_19
    sget-object v0, Lcom/nuance/input/swypecorelib/WordCandidate$Source;->WORD_SOURCE_AUTOAPPEND:Lcom/nuance/input/swypecorelib/WordCandidate$Source;

    goto :goto_9

    .line 210
    :pswitch_1c
    sget-object v0, Lcom/nuance/input/swypecorelib/WordCandidate$Source;->WORD_SOURCE_TERMPUNCT:Lcom/nuance/input/swypecorelib/WordCandidate$Source;

    goto :goto_9

    .line 213
    :pswitch_1f
    sget-object v0, Lcom/nuance/input/swypecorelib/WordCandidate$Source;->WORD_SOURCE_CONSTRUCTED:Lcom/nuance/input/swypecorelib/WordCandidate$Source;

    goto :goto_9

    .line 216
    :pswitch_22
    sget-object v0, Lcom/nuance/input/swypecorelib/WordCandidate$Source;->WORD_SOURCE_NEW_WORD:Lcom/nuance/input/swypecorelib/WordCandidate$Source;

    goto :goto_9

    .line 219
    :pswitch_25
    sget-object v0, Lcom/nuance/input/swypecorelib/WordCandidate$Source;->WORD_SOURCE_GESTURE:Lcom/nuance/input/swypecorelib/WordCandidate$Source;

    goto :goto_9

    .line 190
    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_a
        :pswitch_d
        :pswitch_10
        :pswitch_13
        :pswitch_16
        :pswitch_19
        :pswitch_1c
        :pswitch_1f
        :pswitch_22
        :pswitch_25
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 139
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/WordCandidate;->mContextPredict:Ljava/lang/String;

    if-nez v0, :cond_b

    .line 140
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/WordCandidate;->mWord:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    .line 143
    :goto_a
    return-object v0

    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/nuance/input/swypecorelib/WordCandidate;->mContextPredict:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/input/swypecorelib/WordCandidate;->mWord:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method public word()Ljava/lang/String;
    .registers 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/WordCandidate;->mWord:Ljava/lang/String;

    return-object v0
.end method
