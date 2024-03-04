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

.field static final WORD_IS_DEFAULT_MASK:I = 0x40

.field static final WORD_IS_REMOVALBE:I = 0x100

.field static final WORD_IS_SMART_SELECTION:I = 0x400

.field static final WORD_IS_SPELL_CORRETED_MASK:I = 0x20

.field static final WORD_IS_TERMINAL_MASK:I = 0x80

.field static final WORD_SHOULD_REMOVE_SPACE_BEFORE:I = 0x200

.field static final WORD_SOURCE_MASK:I = 0xf


# instance fields
.field mContextPredict:Ljava/lang/String;

.field private mId:I

.field mWord:Ljava/lang/String;

.field private mWordAttribute:I

.field private mWordCompletionLength:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "word"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object p1, p0, Lcom/nuance/input/swypecorelib/WordCandidate;->mWord:Ljava/lang/String;

    .line 98
    iput v0, p0, Lcom/nuance/input/swypecorelib/WordCandidate;->mWordCompletionLength:I

    .line 99
    iput v0, p0, Lcom/nuance/input/swypecorelib/WordCandidate;->mWordAttribute:I

    .line 100
    const/4 v0, -0x1

    iput v0, p0, Lcom/nuance/input/swypecorelib/WordCandidate;->mId:I

    .line 101
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "word"    # Ljava/lang/String;
    .param p2, "id"    # I

    .prologue
    const/4 v0, 0x0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-object p1, p0, Lcom/nuance/input/swypecorelib/WordCandidate;->mWord:Ljava/lang/String;

    .line 105
    iput v0, p0, Lcom/nuance/input/swypecorelib/WordCandidate;->mWordCompletionLength:I

    .line 106
    iput v0, p0, Lcom/nuance/input/swypecorelib/WordCandidate;->mWordAttribute:I

    .line 107
    iput p2, p0, Lcom/nuance/input/swypecorelib/WordCandidate;->mId:I

    .line 108
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .param p1, "word"    # Ljava/lang/String;
    .param p2, "wordCompletionLength"    # I
    .param p3, "wordAttribute"    # I
    .param p4, "id"    # I

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p1, p0, Lcom/nuance/input/swypecorelib/WordCandidate;->mWord:Ljava/lang/String;

    .line 91
    iput p2, p0, Lcom/nuance/input/swypecorelib/WordCandidate;->mWordCompletionLength:I

    .line 92
    iput p3, p0, Lcom/nuance/input/swypecorelib/WordCandidate;->mWordAttribute:I

    .line 93
    iput p4, p0, Lcom/nuance/input/swypecorelib/WordCandidate;->mId:I

    .line 94
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;III)V
    .locals 0
    .param p1, "word"    # Ljava/lang/String;
    .param p2, "contextPredict"    # Ljava/lang/String;
    .param p3, "wordCompletionLength"    # I
    .param p4, "wordAttribute"    # I
    .param p5, "id"    # I

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/nuance/input/swypecorelib/WordCandidate;->mWord:Ljava/lang/String;

    .line 83
    iput-object p2, p0, Lcom/nuance/input/swypecorelib/WordCandidate;->mContextPredict:Ljava/lang/String;

    .line 84
    iput p3, p0, Lcom/nuance/input/swypecorelib/WordCandidate;->mWordCompletionLength:I

    .line 85
    iput p4, p0, Lcom/nuance/input/swypecorelib/WordCandidate;->mWordAttribute:I

    .line 86
    iput p5, p0, Lcom/nuance/input/swypecorelib/WordCandidate;->mId:I

    .line 87
    return-void
.end method

.method public static createCandidates([Ljava/lang/String;[I)Ljava/util/List;
    .locals 12
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
    .line 111
    new-instance v3, Ljava/util/ArrayList;

    array-length v11, p0

    invoke-direct {v3, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 113
    .local v3, "candidateList":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/input/swypecorelib/WordCandidate;>;"
    const/4 v5, 0x0

    .line 114
    .local v5, "fieldIndex":I
    move-object v0, p0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v9, p0

    .local v9, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    move v6, v5

    .end local v5    # "fieldIndex":I
    .local v6, "fieldIndex":I
    :goto_0
    if-ge v7, v9, :cond_0

    aget-object v10, v0, v7

    .line 115
    .local v10, "word":Ljava/lang/String;
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "fieldIndex":I
    .restart local v5    # "fieldIndex":I
    aget v4, p1, v6

    .line 116
    .local v4, "completionLength":I
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "fieldIndex":I
    .restart local v6    # "fieldIndex":I
    aget v1, p1, v5

    .line 117
    .local v1, "attr":I
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "fieldIndex":I
    .restart local v5    # "fieldIndex":I
    aget v8, p1, v6

    .line 118
    .local v8, "id":I
    new-instance v2, Lcom/nuance/input/swypecorelib/WordCandidate;

    invoke-direct {v2, v10, v4, v1, v8}, Lcom/nuance/input/swypecorelib/WordCandidate;-><init>(Ljava/lang/String;III)V

    .line 119
    .local v2, "candidate":Lcom/nuance/input/swypecorelib/WordCandidate;
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    add-int/lit8 v7, v7, 0x1

    move v6, v5

    .end local v5    # "fieldIndex":I
    .restart local v6    # "fieldIndex":I
    goto :goto_0

    .line 121
    .end local v1    # "attr":I
    .end local v2    # "candidate":Lcom/nuance/input/swypecorelib/WordCandidate;
    .end local v4    # "completionLength":I
    .end local v8    # "id":I
    .end local v10    # "word":Ljava/lang/String;
    :cond_0
    return-object v3
.end method


# virtual methods
.method public attribute()I
    .locals 1

    .prologue
    .line 161
    iget v0, p0, Lcom/nuance/input/swypecorelib/WordCandidate;->mWordAttribute:I

    return v0
.end method

.method public completionLength()I
    .locals 1

    .prologue
    .line 157
    iget v0, p0, Lcom/nuance/input/swypecorelib/WordCandidate;->mWordCompletionLength:I

    return v0
.end method

.method public containsDoubleLetters()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 274
    iget-object v2, p0, Lcom/nuance/input/swypecorelib/WordCandidate;->mWord:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/nuance/input/swypecorelib/WordCandidate;->mWord:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_1

    .line 285
    :cond_0
    :goto_0
    return v1

    .line 279
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/nuance/input/swypecorelib/WordCandidate;->mWord:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    .line 280
    iget-object v2, p0, Lcom/nuance/input/swypecorelib/WordCandidate;->mWord:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    iget-object v3, p0, Lcom/nuance/input/swypecorelib/WordCandidate;->mWord:Ljava/lang/String;

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v2, v3, :cond_2

    .line 281
    const/4 v1, 0x1

    goto :goto_0

    .line 279
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public contextPredict()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/WordCandidate;->mContextPredict:Ljava/lang/String;

    return-object v0
.end method

.method public contextPredictLength()I
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/WordCandidate;->mContextPredict:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 149
    const/4 v0, 0x0

    .line 152
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/WordCandidate;->mContextPredict:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 260
    if-ne p0, p1, :cond_1

    .line 270
    :cond_0
    :goto_0
    return v1

    .line 264
    :cond_1
    instance-of v3, p1, Lcom/nuance/input/swypecorelib/WordCandidate;

    if-nez v3, :cond_2

    move v1, v2

    .line 265
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 268
    check-cast v0, Lcom/nuance/input/swypecorelib/WordCandidate;

    .line 270
    .local v0, "c":Lcom/nuance/input/swypecorelib/WordCandidate;
    iget-object v3, v0, Lcom/nuance/input/swypecorelib/WordCandidate;->mWord:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/nuance/input/swypecorelib/WordCandidate;->mWord:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/nuance/input/swypecorelib/WordCandidate;->mWord:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/WordCandidate;->mWord:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public id()I
    .locals 1

    .prologue
    .line 165
    iget v0, p0, Lcom/nuance/input/swypecorelib/WordCandidate;->mId:I

    return v0
.end method

.method public isCompletion()Z
    .locals 1

    .prologue
    .line 236
    iget v0, p0, Lcom/nuance/input/swypecorelib/WordCandidate;->mWordCompletionLength:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDefault()Z
    .locals 1

    .prologue
    .line 215
    iget v0, p0, Lcom/nuance/input/swypecorelib/WordCandidate;->mWordAttribute:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isExact()Z
    .locals 1

    .prologue
    .line 240
    iget v0, p0, Lcom/nuance/input/swypecorelib/WordCandidate;->mId:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isExactADictionaryWord()Z
    .locals 2

    .prologue
    .line 206
    invoke-virtual {p0}, Lcom/nuance/input/swypecorelib/WordCandidate;->source()Lcom/nuance/input/swypecorelib/WordCandidate$Source;

    move-result-object v0

    .line 207
    .local v0, "src":Lcom/nuance/input/swypecorelib/WordCandidate$Source;
    sget-object v1, Lcom/nuance/input/swypecorelib/WordCandidate$Source;->WORD_SOURCE_NEW_WORD:Lcom/nuance/input/swypecorelib/WordCandidate$Source;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/nuance/input/swypecorelib/WordCandidate$Source;->WORD_SOURCE_UNKNOWN:Lcom/nuance/input/swypecorelib/WordCandidate$Source;

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isRemovable()Z
    .locals 2

    .prologue
    .line 244
    iget v0, p0, Lcom/nuance/input/swypecorelib/WordCandidate;->mWordAttribute:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/input/swypecorelib/WordCandidate;->source()Lcom/nuance/input/swypecorelib/WordCandidate$Source;

    move-result-object v0

    sget-object v1, Lcom/nuance/input/swypecorelib/WordCandidate$Source;->WORD_SOURCE_NEW_WORD:Lcom/nuance/input/swypecorelib/WordCandidate$Source;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/nuance/input/swypecorelib/WordCandidate;->source()Lcom/nuance/input/swypecorelib/WordCandidate$Source;

    move-result-object v0

    sget-object v1, Lcom/nuance/input/swypecorelib/WordCandidate$Source;->WORD_SOURCE_CONSTRUCTED:Lcom/nuance/input/swypecorelib/WordCandidate$Source;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSmartSuggestion()Z
    .locals 1

    .prologue
    .line 219
    iget v0, p0, Lcom/nuance/input/swypecorelib/WordCandidate;->mWordAttribute:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSpellCorrected()Z
    .locals 1

    .prologue
    .line 211
    iget v0, p0, Lcom/nuance/input/swypecorelib/WordCandidate;->mWordAttribute:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTerminal()Z
    .locals 1

    .prologue
    .line 232
    iget v0, p0, Lcom/nuance/input/swypecorelib/WordCandidate;->mWordAttribute:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public length()I
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/WordCandidate;->mContextPredict:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/WordCandidate;->mWord:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 139
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/WordCandidate;->mContextPredict:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/nuance/input/swypecorelib/WordCandidate;->mWord:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public setSmartSuggestion(Z)V
    .locals 1
    .param p1, "val"    # Z

    .prologue
    .line 223
    if-eqz p1, :cond_0

    .line 224
    iget v0, p0, Lcom/nuance/input/swypecorelib/WordCandidate;->mWordAttribute:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/nuance/input/swypecorelib/WordCandidate;->mWordAttribute:I

    .line 229
    :goto_0
    return-void

    .line 227
    :cond_0
    iget v0, p0, Lcom/nuance/input/swypecorelib/WordCandidate;->mWordAttribute:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/nuance/input/swypecorelib/WordCandidate;->mWordAttribute:I

    goto :goto_0
.end method

.method public shouldRemoveSpaceBefore()Z
    .locals 1

    .prologue
    .line 250
    iget v0, p0, Lcom/nuance/input/swypecorelib/WordCandidate;->mWordAttribute:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public source()Lcom/nuance/input/swypecorelib/WordCandidate$Source;
    .locals 1

    .prologue
    .line 169
    iget v0, p0, Lcom/nuance/input/swypecorelib/WordCandidate;->mWordAttribute:I

    and-int/lit8 v0, v0, 0xf

    packed-switch v0, :pswitch_data_0

    .line 201
    sget-object v0, Lcom/nuance/input/swypecorelib/WordCandidate$Source;->WORD_SOURCE_UNKNOWN:Lcom/nuance/input/swypecorelib/WordCandidate$Source;

    :goto_0
    return-object v0

    .line 171
    :pswitch_0
    sget-object v0, Lcom/nuance/input/swypecorelib/WordCandidate$Source;->WORD_SOURCE_USER_ADDED:Lcom/nuance/input/swypecorelib/WordCandidate$Source;

    goto :goto_0

    .line 174
    :pswitch_1
    sget-object v0, Lcom/nuance/input/swypecorelib/WordCandidate$Source;->WORD_SOURCE_LDB:Lcom/nuance/input/swypecorelib/WordCandidate$Source;

    goto :goto_0

    .line 177
    :pswitch_2
    sget-object v0, Lcom/nuance/input/swypecorelib/WordCandidate$Source;->WORD_SOURCE_MDB:Lcom/nuance/input/swypecorelib/WordCandidate$Source;

    goto :goto_0

    .line 180
    :pswitch_3
    sget-object v0, Lcom/nuance/input/swypecorelib/WordCandidate$Source;->WORD_SOURCE_ASDB:Lcom/nuance/input/swypecorelib/WordCandidate$Source;

    goto :goto_0

    .line 183
    :pswitch_4
    sget-object v0, Lcom/nuance/input/swypecorelib/WordCandidate$Source;->WORD_SOURCE_STEM:Lcom/nuance/input/swypecorelib/WordCandidate$Source;

    goto :goto_0

    .line 186
    :pswitch_5
    sget-object v0, Lcom/nuance/input/swypecorelib/WordCandidate$Source;->WORD_SOURCE_AUTOAPPEND:Lcom/nuance/input/swypecorelib/WordCandidate$Source;

    goto :goto_0

    .line 189
    :pswitch_6
    sget-object v0, Lcom/nuance/input/swypecorelib/WordCandidate$Source;->WORD_SOURCE_TERMPUNCT:Lcom/nuance/input/swypecorelib/WordCandidate$Source;

    goto :goto_0

    .line 192
    :pswitch_7
    sget-object v0, Lcom/nuance/input/swypecorelib/WordCandidate$Source;->WORD_SOURCE_CONSTRUCTED:Lcom/nuance/input/swypecorelib/WordCandidate$Source;

    goto :goto_0

    .line 195
    :pswitch_8
    sget-object v0, Lcom/nuance/input/swypecorelib/WordCandidate$Source;->WORD_SOURCE_NEW_WORD:Lcom/nuance/input/swypecorelib/WordCandidate$Source;

    goto :goto_0

    .line 198
    :pswitch_9
    sget-object v0, Lcom/nuance/input/swypecorelib/WordCandidate$Source;->WORD_SOURCE_GESTURE:Lcom/nuance/input/swypecorelib/WordCandidate$Source;

    goto :goto_0

    .line 169
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/WordCandidate;->mContextPredict:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/WordCandidate;->mWord:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    .line 130
    :goto_0
    return-object v0

    :cond_0
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

    goto :goto_0
.end method
