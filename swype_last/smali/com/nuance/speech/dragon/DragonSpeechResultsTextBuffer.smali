.class public Lcom/nuance/speech/dragon/DragonSpeechResultsTextBuffer;
.super Lcom/nuance/speech/SpeechResultTextBuffer;
.source "DragonSpeechResultsTextBuffer.java"


# static fields
.field private static final log:Lcom/nuance/swype/util/LogManager$Log;


# instance fields
.field private mSentence:Lcom/nuance/nmsp/client/util/dictationresult/Sentence;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    const-string/jumbo v0, "DragonSpeechResultsTextBuffer"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/speech/dragon/DragonSpeechResultsTextBuffer;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/nuance/speech/SpeechResultTextBuffer;-><init>()V

    return-void
.end method


# virtual methods
.method public chooseCandidate(I)V
    .registers 6
    .param p1, "index"    # I

    .prologue
    .line 116
    iget-object v1, p0, Lcom/nuance/speech/dragon/DragonSpeechResultsTextBuffer;->mSentence:Lcom/nuance/nmsp/client/util/dictationresult/Sentence;

    if-eqz v1, :cond_a

    iget v1, p0, Lcom/nuance/speech/dragon/DragonSpeechResultsTextBuffer;->mCursorBegin:I

    iget v2, p0, Lcom/nuance/speech/dragon/DragonSpeechResultsTextBuffer;->mCursorEnd:I

    if-ne v1, v2, :cond_b

    .line 135
    :cond_a
    :goto_a
    return-void

    .line 122
    :cond_b
    :try_start_b
    iget-object v1, p0, Lcom/nuance/speech/dragon/DragonSpeechResultsTextBuffer;->mSentence:Lcom/nuance/nmsp/client/util/dictationresult/Sentence;

    iget v2, p0, Lcom/nuance/speech/dragon/DragonSpeechResultsTextBuffer;->mCursorBegin:I

    iget v3, p0, Lcom/nuance/speech/dragon/DragonSpeechResultsTextBuffer;->mCursorEnd:I

    invoke-interface {v1, v2, v3}, Lcom/nuance/nmsp/client/util/dictationresult/Sentence;->getAlternatives(II)Lcom/nuance/nmsp/client/util/dictationresult/Alternatives;

    move-result-object v0

    .line 126
    .local v0, "alts":Lcom/nuance/nmsp/client/util/dictationresult/Alternatives;
    invoke-interface {v0}, Lcom/nuance/nmsp/client/util/dictationresult/Alternatives;->size()I

    move-result v1

    if-gt p1, v1, :cond_a

    .line 131
    iget-object v1, p0, Lcom/nuance/speech/dragon/DragonSpeechResultsTextBuffer;->mSentence:Lcom/nuance/nmsp/client/util/dictationresult/Sentence;

    add-int/lit8 v2, p1, -0x1

    invoke-interface {v0, v2}, Lcom/nuance/nmsp/client/util/dictationresult/Alternatives;->getAlternativeAt(I)Lcom/nuance/nmsp/client/util/dictationresult/Alternative;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/nuance/nmsp/client/util/dictationresult/Sentence;->chooseAlternative(Lcom/nuance/nmsp/client/util/dictationresult/Alternative;)V
    :try_end_26
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_b .. :try_end_26} :catch_27

    goto :goto_a

    .line 135
    .end local v0    # "alts":Lcom/nuance/nmsp/client/util/dictationresult/Alternatives;
    :catch_27
    move-exception v1

    goto :goto_a
.end method

.method public getCandidates()Ljava/util/ArrayList;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 172
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 174
    .local v3, "lstCandidates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    iget-object v4, p0, Lcom/nuance/speech/dragon/DragonSpeechResultsTextBuffer;->mSentence:Lcom/nuance/nmsp/client/util/dictationresult/Sentence;

    if-eqz v4, :cond_f

    iget v4, p0, Lcom/nuance/speech/dragon/DragonSpeechResultsTextBuffer;->mCursorBegin:I

    iget v5, p0, Lcom/nuance/speech/dragon/DragonSpeechResultsTextBuffer;->mCursorEnd:I

    if-ne v4, v5, :cond_10

    .line 195
    :cond_f
    return-object v3

    .line 178
    :cond_10
    const/4 v0, 0x0

    .line 181
    .local v0, "alts":Lcom/nuance/nmsp/client/util/dictationresult/Alternatives;
    :try_start_11
    iget-object v4, p0, Lcom/nuance/speech/dragon/DragonSpeechResultsTextBuffer;->mSentence:Lcom/nuance/nmsp/client/util/dictationresult/Sentence;

    iget v5, p0, Lcom/nuance/speech/dragon/DragonSpeechResultsTextBuffer;->mCursorBegin:I

    iget v6, p0, Lcom/nuance/speech/dragon/DragonSpeechResultsTextBuffer;->mCursorEnd:I

    invoke-interface {v4, v5, v6}, Lcom/nuance/nmsp/client/util/dictationresult/Sentence;->getAlternatives(II)Lcom/nuance/nmsp/client/util/dictationresult/Alternatives;
    :try_end_1a
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_11 .. :try_end_1a} :catch_45

    move-result-object v0

    .line 186
    :goto_1b
    if-eqz v0, :cond_f

    invoke-interface {v0}, Lcom/nuance/nmsp/client/util/dictationresult/Alternatives;->size()I

    move-result v4

    if-eqz v4, :cond_f

    .line 190
    iget-object v4, p0, Lcom/nuance/speech/dragon/DragonSpeechResultsTextBuffer;->mTextBuffer:Ljava/lang/String;

    iget v5, p0, Lcom/nuance/speech/dragon/DragonSpeechResultsTextBuffer;->mCursorBegin:I

    iget v6, p0, Lcom/nuance/speech/dragon/DragonSpeechResultsTextBuffer;->mCursorEnd:I

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_31
    invoke-interface {v0}, Lcom/nuance/nmsp/client/util/dictationresult/Alternatives;->size()I

    move-result v4

    if-ge v2, v4, :cond_f

    .line 193
    invoke-interface {v0, v2}, Lcom/nuance/nmsp/client/util/dictationresult/Alternatives;->getAlternativeAt(I)Lcom/nuance/nmsp/client/util/dictationresult/Alternative;

    move-result-object v4

    invoke-interface {v4}, Lcom/nuance/nmsp/client/util/dictationresult/Alternative;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    add-int/lit8 v2, v2, 0x1

    goto :goto_31

    .line 182
    .end local v2    # "i":I
    :catch_45
    move-exception v1

    .line 183
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    sget-object v4, Lcom/nuance/speech/dragon/DragonSpeechResultsTextBuffer;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "getCandidates(): bounds error: tl: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/nuance/speech/dragon/DragonSpeechResultsTextBuffer;->mTextBuffer:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "; cb: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/nuance/speech/dragon/DragonSpeechResultsTextBuffer;->mCursorBegin:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "; ce: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/nuance/speech/dragon/DragonSpeechResultsTextBuffer;->mCursorEnd:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v1}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_1b
.end method

.method public isTextDictated()Z
    .registers 8

    .prologue
    const/4 v3, 0x0

    .line 143
    iget v4, p0, Lcom/nuance/speech/dragon/DragonSpeechResultsTextBuffer;->mCursorBegin:I

    iget v5, p0, Lcom/nuance/speech/dragon/DragonSpeechResultsTextBuffer;->mCursorEnd:I

    if-ne v4, v5, :cond_8

    .line 165
    :goto_7
    return v3

    .line 147
    :cond_8
    const/4 v1, 0x0

    .line 149
    .local v1, "isDictated":Z
    iget-object v4, p0, Lcom/nuance/speech/dragon/DragonSpeechResultsTextBuffer;->mSentence:Lcom/nuance/nmsp/client/util/dictationresult/Sentence;

    if-eqz v4, :cond_2a

    .line 151
    iget v4, p0, Lcom/nuance/speech/dragon/DragonSpeechResultsTextBuffer;->mCursorBegin:I

    iget v5, p0, Lcom/nuance/speech/dragon/DragonSpeechResultsTextBuffer;->mCursorEnd:I

    iget v6, p0, Lcom/nuance/speech/dragon/DragonSpeechResultsTextBuffer;->mCursorBegin:I

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    add-int v0, v4, v5

    .line 153
    .local v0, "cursor":I
    const/4 v2, 0x0

    .line 156
    .local v2, "token":Lcom/nuance/nmsp/client/util/dictationresult/Token;
    :try_start_19
    iget-object v4, p0, Lcom/nuance/speech/dragon/DragonSpeechResultsTextBuffer;->mSentence:Lcom/nuance/nmsp/client/util/dictationresult/Sentence;

    invoke-interface {v4, v0}, Lcom/nuance/nmsp/client/util/dictationresult/Sentence;->tokenAtCursorPosition(I)Lcom/nuance/nmsp/client/util/dictationresult/Token;
    :try_end_1e
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_19 .. :try_end_1e} :catch_2e

    move-result-object v2

    .line 161
    :goto_1f
    if-eqz v2, :cond_2a

    .line 162
    invoke-interface {v2}, Lcom/nuance/nmsp/client/util/dictationresult/Token;->getTokenType()Lcom/nuance/nmsp/client/util/dictationresult/Token$TokenType;

    move-result-object v4

    sget-object v5, Lcom/nuance/nmsp/client/util/dictationresult/Token$TokenType;->VOICE_TOKEN:Lcom/nuance/nmsp/client/util/dictationresult/Token$TokenType;

    if-ne v4, v5, :cond_2c

    const/4 v1, 0x1

    .end local v0    # "cursor":I
    .end local v2    # "token":Lcom/nuance/nmsp/client/util/dictationresult/Token;
    :cond_2a
    :goto_2a
    move v3, v1

    .line 165
    goto :goto_7

    .restart local v0    # "cursor":I
    .restart local v2    # "token":Lcom/nuance/nmsp/client/util/dictationresult/Token;
    :cond_2c
    move v1, v3

    .line 162
    goto :goto_2a

    :catch_2e
    move-exception v4

    goto :goto_1f
.end method

.method public updateResult(Ljava/lang/Object;Z)Ljava/lang/CharSequence;
    .registers 17
    .param p1, "dictationResult"    # Ljava/lang/Object;
    .param p2, "isLanguageSupportingLeadingSpace"    # Z

    .prologue
    .line 25
    move-object v0, p1

    check-cast v0, Lcom/nuance/nmsp/client/util/dictationresult/DictationResult;

    .line 27
    .local v0, "dicResult":Lcom/nuance/nmsp/client/util/dictationresult/DictationResult;
    if-eqz v0, :cond_b

    invoke-interface {v0}, Lcom/nuance/nmsp/client/util/dictationresult/DictationResult;->size()I

    move-result v8

    if-nez v8, :cond_f

    .line 28
    :cond_b
    const-string/jumbo v7, ""

    .line 107
    :cond_e
    :goto_e
    return-object v7

    .line 31
    :cond_f
    const/4 v8, 0x0

    invoke-interface {v0, v8}, Lcom/nuance/nmsp/client/util/dictationresult/DictationResult;->sentenceAt(I)Lcom/nuance/nmsp/client/util/dictationresult/Sentence;

    move-result-object v6

    .line 32
    .local v6, "sentence":Lcom/nuance/nmsp/client/util/dictationresult/Sentence;
    if-eqz v6, :cond_1c

    invoke-interface {v6}, Lcom/nuance/nmsp/client/util/dictationresult/Sentence;->size()I

    move-result v8

    if-nez v8, :cond_20

    .line 33
    :cond_1c
    const-string/jumbo v7, ""

    goto :goto_e

    .line 36
    :cond_20
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_21
    invoke-interface {v0}, Lcom/nuance/nmsp/client/util/dictationresult/DictationResult;->size()I

    move-result v8

    if-ge v4, v8, :cond_7a

    .line 37
    sget-object v8, Lcom/nuance/speech/dragon/DragonSpeechResultsTextBuffer;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string/jumbo v11, "sentence["

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string/jumbo v11, "] = "

    aput-object v11, v9, v10

    const/4 v10, 0x3

    invoke-interface {v0, v4}, Lcom/nuance/nmsp/client/util/dictationresult/DictationResult;->sentenceAt(I)Lcom/nuance/nmsp/client/util/dictationresult/Sentence;

    move-result-object v11

    invoke-interface {v11}, Lcom/nuance/nmsp/client/util/dictationresult/Sentence;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-interface {v8, v9}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 38
    sget-object v8, Lcom/nuance/speech/dragon/DragonSpeechResultsTextBuffer;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string/jumbo v11, "score["

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string/jumbo v11, "] = "

    aput-object v11, v9, v10

    const/4 v10, 0x3

    invoke-interface {v0, v4}, Lcom/nuance/nmsp/client/util/dictationresult/DictationResult;->sentenceAt(I)Lcom/nuance/nmsp/client/util/dictationresult/Sentence;

    move-result-object v11

    invoke-interface {v11}, Lcom/nuance/nmsp/client/util/dictationresult/Sentence;->getConfidenceScore()D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-interface {v8, v9}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 36
    add-int/lit8 v4, v4, 0x1

    goto :goto_21

    .line 41
    :cond_7a
    invoke-interface {v6}, Lcom/nuance/nmsp/client/util/dictationresult/Sentence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 42
    .local v5, "result":Ljava/lang/String;
    if-eqz v5, :cond_86

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_a4

    .line 43
    :cond_86
    sget-object v8, Lcom/nuance/speech/dragon/DragonSpeechResultsTextBuffer;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string/jumbo v11, "result = <empty>, dicResult.size() = "

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-interface {v0}, Lcom/nuance/nmsp/client/util/dictationresult/DictationResult;->size()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-interface {v8, v9}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 44
    const-string/jumbo v7, ""

    goto/16 :goto_e

    .line 47
    :cond_a4
    const-string/jumbo v8, "\r\n"

    const-string/jumbo v9, "\n"

    invoke-virtual {v5, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 49
    iget-object v8, p0, Lcom/nuance/speech/dragon/DragonSpeechResultsTextBuffer;->mSentence:Lcom/nuance/nmsp/client/util/dictationresult/Sentence;

    if-nez v8, :cond_1fd

    .line 50
    iput-object v6, p0, Lcom/nuance/speech/dragon/DragonSpeechResultsTextBuffer;->mSentence:Lcom/nuance/nmsp/client/util/dictationresult/Sentence;

    .line 53
    :try_start_b4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/nuance/speech/dragon/DragonSpeechResultsTextBuffer;->mTextBuffer:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget v9, p0, Lcom/nuance/speech/dragon/DragonSpeechResultsTextBuffer;->mCursorBegin:I

    invoke-interface {v6, v8, v9}, Lcom/nuance/nmsp/client/util/dictationresult/Sentence;->updateSentence(Ljava/lang/String;I)V
    :try_end_cc
    .catch Ljava/lang/Exception; {:try_start_b4 .. :try_end_cc} :catch_185

    .line 81
    :goto_cc
    const-string/jumbo v7, ""

    .line 83
    .local v7, "strResult":Ljava/lang/String;
    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x20

    if-ne v8, v9, :cond_29b

    const/4 v3, 0x1

    .line 84
    .local v3, "hasSpaceBefore":Z
    :goto_d9
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v5, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x20

    if-ne v8, v9, :cond_29e

    const/4 v2, 0x1

    .line 86
    .local v2, "hasSpaceAfter":Z
    :goto_e8
    sget-object v8, Lcom/nuance/speech/dragon/DragonSpeechResultsTextBuffer;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string/jumbo v11, "hasSpaceBefore = "

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-interface {v8, v9}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 87
    sget-object v8, Lcom/nuance/speech/dragon/DragonSpeechResultsTextBuffer;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string/jumbo v11, "hasSpaceAfter = "

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-interface {v8, v9}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 93
    iget v8, p0, Lcom/nuance/speech/dragon/DragonSpeechResultsTextBuffer;->mCursorBegin:I

    if-lez v8, :cond_146

    iget-object v8, p0, Lcom/nuance/speech/dragon/DragonSpeechResultsTextBuffer;->mTextBuffer:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    iget v9, p0, Lcom/nuance/speech/dragon/DragonSpeechResultsTextBuffer;->mCursorBegin:I

    if-lt v8, v9, :cond_146

    iget-object v8, p0, Lcom/nuance/speech/dragon/DragonSpeechResultsTextBuffer;->mTextBuffer:Ljava/lang/String;

    iget v9, p0, Lcom/nuance/speech/dragon/DragonSpeechResultsTextBuffer;->mCursorBegin:I

    add-int/lit8 v9, v9, -0x1

    .line 94
    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x20

    if-eq v8, v9, :cond_146

    if-nez v3, :cond_146

    if-eqz p2, :cond_146

    .line 96
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 99
    :cond_146
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 102
    if-nez v2, :cond_e

    iget v8, p0, Lcom/nuance/speech/dragon/DragonSpeechResultsTextBuffer;->mCursorEnd:I

    iget-object v9, p0, Lcom/nuance/speech/dragon/DragonSpeechResultsTextBuffer;->mTextBuffer:Ljava/lang/String;

    .line 103
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v8, v9, :cond_e

    iget-object v8, p0, Lcom/nuance/speech/dragon/DragonSpeechResultsTextBuffer;->mTextBuffer:Ljava/lang/String;

    iget v9, p0, Lcom/nuance/speech/dragon/DragonSpeechResultsTextBuffer;->mCursorEnd:I

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x20

    if-eq v8, v9, :cond_e

    .line 104
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_e

    .line 54
    .end local v2    # "hasSpaceAfter":Z
    .end local v3    # "hasSpaceBefore":Z
    .end local v7    # "strResult":Ljava/lang/String;
    :catch_185
    move-exception v1

    .line 55
    .local v1, "e":Ljava/lang/Exception;
    sget-object v8, Lcom/nuance/speech/dragon/DragonSpeechResultsTextBuffer;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string/jumbo v9, "Failed to updateSentence."

    invoke-interface {v8, v9, v1}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 56
    sget-object v8, Lcom/nuance/speech/dragon/DragonSpeechResultsTextBuffer;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string/jumbo v9, "mSentence was null"

    invoke-interface {v8, v9}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    .line 57
    sget-object v8, Lcom/nuance/speech/dragon/DragonSpeechResultsTextBuffer;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "mCursorBegin = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v10, p0, Lcom/nuance/speech/dragon/DragonSpeechResultsTextBuffer;->mCursorBegin:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    .line 58
    sget-object v8, Lcom/nuance/speech/dragon/DragonSpeechResultsTextBuffer;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "mCursorEnd = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v10, p0, Lcom/nuance/speech/dragon/DragonSpeechResultsTextBuffer;->mCursorEnd:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    .line 59
    sget-object v8, Lcom/nuance/speech/dragon/DragonSpeechResultsTextBuffer;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "mTextBuffer = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/nuance/speech/dragon/DragonSpeechResultsTextBuffer;->mTextBuffer:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    .line 60
    sget-object v8, Lcom/nuance/speech/dragon/DragonSpeechResultsTextBuffer;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "result = sentence.toString() = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    .line 61
    sget-object v8, Lcom/nuance/speech/dragon/DragonSpeechResultsTextBuffer;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string/jumbo v9, "call sentence.updateSentence(mTextBuffer + result, mCursorBegin);"

    invoke-interface {v8, v9}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    .line 62
    const-string/jumbo v7, ""

    goto/16 :goto_e

    .line 67
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1fd
    :try_start_1fd
    iget-object v8, p0, Lcom/nuance/speech/dragon/DragonSpeechResultsTextBuffer;->mSentence:Lcom/nuance/nmsp/client/util/dictationresult/Sentence;

    iget v9, p0, Lcom/nuance/speech/dragon/DragonSpeechResultsTextBuffer;->mCursorBegin:I

    iget v10, p0, Lcom/nuance/speech/dragon/DragonSpeechResultsTextBuffer;->mCursorEnd:I

    invoke-interface {v8, v6, v9, v10}, Lcom/nuance/nmsp/client/util/dictationresult/Sentence;->updateSentence(Lcom/nuance/nmsp/client/util/dictationresult/Sentence;II)V
    :try_end_206
    .catch Ljava/lang/Exception; {:try_start_1fd .. :try_end_206} :catch_208

    goto/16 :goto_cc

    .line 68
    :catch_208
    move-exception v1

    .line 69
    .restart local v1    # "e":Ljava/lang/Exception;
    sget-object v8, Lcom/nuance/speech/dragon/DragonSpeechResultsTextBuffer;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string/jumbo v9, "Failed to updateSentence."

    invoke-interface {v8, v9, v1}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 70
    sget-object v8, Lcom/nuance/speech/dragon/DragonSpeechResultsTextBuffer;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string/jumbo v9, "mSentence not null"

    invoke-interface {v8, v9}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    .line 71
    sget-object v8, Lcom/nuance/speech/dragon/DragonSpeechResultsTextBuffer;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "mCursorBegin = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v10, p0, Lcom/nuance/speech/dragon/DragonSpeechResultsTextBuffer;->mCursorBegin:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    .line 72
    sget-object v8, Lcom/nuance/speech/dragon/DragonSpeechResultsTextBuffer;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "mCursorEnd = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v10, p0, Lcom/nuance/speech/dragon/DragonSpeechResultsTextBuffer;->mCursorEnd:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    .line 73
    sget-object v8, Lcom/nuance/speech/dragon/DragonSpeechResultsTextBuffer;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "mTextBuffer = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/nuance/speech/dragon/DragonSpeechResultsTextBuffer;->mTextBuffer:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    .line 74
    sget-object v8, Lcom/nuance/speech/dragon/DragonSpeechResultsTextBuffer;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "result = sentence.toString() = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    .line 75
    sget-object v8, Lcom/nuance/speech/dragon/DragonSpeechResultsTextBuffer;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "mSentence.toString() = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/nuance/speech/dragon/DragonSpeechResultsTextBuffer;->mSentence:Lcom/nuance/nmsp/client/util/dictationresult/Sentence;

    invoke-interface {v10}, Lcom/nuance/nmsp/client/util/dictationresult/Sentence;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    .line 76
    sget-object v8, Lcom/nuance/speech/dragon/DragonSpeechResultsTextBuffer;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string/jumbo v9, "call mSentence.updateSentence(sentence, mCursorBegin, mCursorEnd);"

    invoke-interface {v8, v9}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    .line 77
    const-string/jumbo v7, ""

    goto/16 :goto_e

    .line 83
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v7    # "strResult":Ljava/lang/String;
    :cond_29b
    const/4 v3, 0x0

    goto/16 :goto_d9

    .line 84
    .restart local v3    # "hasSpaceBefore":Z
    :cond_29e
    const/4 v2, 0x0

    goto/16 :goto_e8
.end method

.method protected updateSentence(II)V
    .registers 7
    .param p1, "cursorBegin"    # I
    .param p2, "cursorEnd"    # I

    .prologue
    .line 218
    invoke-super {p0, p1, p2}, Lcom/nuance/speech/SpeechResultTextBuffer;->updateSentence(II)V

    .line 220
    iget-object v1, p0, Lcom/nuance/speech/dragon/DragonSpeechResultsTextBuffer;->mSentence:Lcom/nuance/nmsp/client/util/dictationresult/Sentence;

    if-eqz v1, :cond_10

    .line 222
    :try_start_7
    iget-object v1, p0, Lcom/nuance/speech/dragon/DragonSpeechResultsTextBuffer;->mSentence:Lcom/nuance/nmsp/client/util/dictationresult/Sentence;

    iget-object v2, p0, Lcom/nuance/speech/dragon/DragonSpeechResultsTextBuffer;->mTextBuffer:Ljava/lang/String;

    iget v3, p0, Lcom/nuance/speech/dragon/DragonSpeechResultsTextBuffer;->mCursorBegin:I

    invoke-interface {v1, v2, v3}, Lcom/nuance/nmsp/client/util/dictationresult/Sentence;->updateSentence(Ljava/lang/String;I)V
    :try_end_10
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7 .. :try_end_10} :catch_11

    .line 227
    :cond_10
    :goto_10
    return-void

    .line 223
    :catch_11
    move-exception v0

    .line 224
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    sget-object v1, Lcom/nuance/speech/dragon/DragonSpeechResultsTextBuffer;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "updateSentence(): bounds error: tl: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/nuance/speech/dragon/DragonSpeechResultsTextBuffer;->mTextBuffer:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "; cb: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "; ce: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_10
.end method

.method public updateText(Ljava/lang/String;II)V
    .registers 8
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "cursorBegin"    # I
    .param p3, "cursorEnd"    # I

    .prologue
    .line 200
    invoke-super {p0, p1, p2, p3}, Lcom/nuance/speech/SpeechResultTextBuffer;->updateText(Ljava/lang/String;II)V

    .line 202
    iget-object v1, p0, Lcom/nuance/speech/dragon/DragonSpeechResultsTextBuffer;->mTextBuffer:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_e

    .line 203
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/nuance/speech/dragon/DragonSpeechResultsTextBuffer;->mSentence:Lcom/nuance/nmsp/client/util/dictationresult/Sentence;

    .line 206
    :cond_e
    iget-object v1, p0, Lcom/nuance/speech/dragon/DragonSpeechResultsTextBuffer;->mSentence:Lcom/nuance/nmsp/client/util/dictationresult/Sentence;

    if-eqz v1, :cond_19

    .line 208
    :try_start_12
    iget-object v1, p0, Lcom/nuance/speech/dragon/DragonSpeechResultsTextBuffer;->mSentence:Lcom/nuance/nmsp/client/util/dictationresult/Sentence;

    iget v2, p0, Lcom/nuance/speech/dragon/DragonSpeechResultsTextBuffer;->mCursorBegin:I

    invoke-interface {v1, p1, v2}, Lcom/nuance/nmsp/client/util/dictationresult/Sentence;->updateSentence(Ljava/lang/String;I)V
    :try_end_19
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_12 .. :try_end_19} :catch_1a

    .line 214
    :cond_19
    :goto_19
    return-void

    .line 209
    :catch_1a
    move-exception v0

    .line 210
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    sget-object v1, Lcom/nuance/speech/dragon/DragonSpeechResultsTextBuffer;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "updateText(): bounds error: tl: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "; cb: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "; ce: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_19
.end method
