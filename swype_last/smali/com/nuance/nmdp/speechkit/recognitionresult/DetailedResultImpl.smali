.class Lcom/nuance/nmdp/speechkit/recognitionresult/DetailedResultImpl;
.super Ljava/lang/Object;
.source "DetailedResultImpl.java"

# interfaces
.implements Lcom/nuance/nmdp/speechkit/recognitionresult/DetailedResult;


# instance fields
.field private _sentence:Lcom/nuance/nmsp/client/util/dictationresult/Sentence;


# direct methods
.method constructor <init>(Lcom/nuance/nmsp/client/util/dictationresult/Sentence;)V
    .registers 2
    .param p1, "sentence"    # Lcom/nuance/nmsp/client/util/dictationresult/Sentence;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/recognitionresult/DetailedResultImpl;->_sentence:Lcom/nuance/nmsp/client/util/dictationresult/Sentence;

    .line 16
    return-void
.end method


# virtual methods
.method public getAlternatives(II)Ljava/util/List;
    .registers 8
    .param p1, "cursorPositionStart"    # I
    .param p2, "cursorPositionEnd"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/nmdp/speechkit/recognitionresult/AlternativeChoice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 41
    .local v0, "altList":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/nmdp/speechkit/recognitionresult/AlternativeChoice;>;"
    iget-object v3, p0, Lcom/nuance/nmdp/speechkit/recognitionresult/DetailedResultImpl;->_sentence:Lcom/nuance/nmsp/client/util/dictationresult/Sentence;

    invoke-interface {v3, p1, p2}, Lcom/nuance/nmsp/client/util/dictationresult/Sentence;->getAlternatives(II)Lcom/nuance/nmsp/client/util/dictationresult/Alternatives;

    move-result-object v1

    .line 43
    .local v1, "alts":Lcom/nuance/nmsp/client/util/dictationresult/Alternatives;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    invoke-interface {v1}, Lcom/nuance/nmsp/client/util/dictationresult/Alternatives;->size()I

    move-result v3

    if-ge v2, v3, :cond_21

    .line 44
    new-instance v3, Lcom/nuance/nmdp/speechkit/recognitionresult/AlternativeChoiceImpl;

    invoke-interface {v1, v2}, Lcom/nuance/nmsp/client/util/dictationresult/Alternatives;->getAlternativeAt(I)Lcom/nuance/nmsp/client/util/dictationresult/Alternative;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/nuance/nmdp/speechkit/recognitionresult/AlternativeChoiceImpl;-><init>(Lcom/nuance/nmsp/client/util/dictationresult/Alternative;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 47
    :cond_21
    return-object v0
.end method

.method public getConfidenceScore()D
    .registers 3

    .prologue
    .line 35
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/recognitionresult/DetailedResultImpl;->_sentence:Lcom/nuance/nmsp/client/util/dictationresult/Sentence;

    invoke-interface {v0}, Lcom/nuance/nmsp/client/util/dictationresult/Sentence;->getConfidenceScore()D

    move-result-wide v0

    return-wide v0
.end method

.method public getTokenAtCursorPosition(I)Lcom/nuance/nmdp/speechkit/recognitionresult/Token;
    .registers 4
    .param p1, "cursorPosition"    # I

    .prologue
    .line 30
    new-instance v0, Lcom/nuance/nmdp/speechkit/recognitionresult/TokenImpl;

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/recognitionresult/DetailedResultImpl;->_sentence:Lcom/nuance/nmsp/client/util/dictationresult/Sentence;

    invoke-interface {v1, p1}, Lcom/nuance/nmsp/client/util/dictationresult/Sentence;->tokenAtCursorPosition(I)Lcom/nuance/nmsp/client/util/dictationresult/Token;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nuance/nmdp/speechkit/recognitionresult/TokenImpl;-><init>(Lcom/nuance/nmsp/client/util/dictationresult/Token;)V

    return-object v0
.end method

.method public getTokens()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/nmdp/speechkit/recognitionresult/Token;",
            ">;"
        }
    .end annotation

    .prologue
    .line 20
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 22
    .local v1, "wordList":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/nmdp/speechkit/recognitionresult/Token;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/recognitionresult/DetailedResultImpl;->_sentence:Lcom/nuance/nmsp/client/util/dictationresult/Sentence;

    invoke-interface {v2}, Lcom/nuance/nmsp/client/util/dictationresult/Sentence;->size()I

    move-result v2

    if-ge v0, v2, :cond_1f

    .line 23
    new-instance v2, Lcom/nuance/nmdp/speechkit/recognitionresult/TokenImpl;

    iget-object v3, p0, Lcom/nuance/nmdp/speechkit/recognitionresult/DetailedResultImpl;->_sentence:Lcom/nuance/nmsp/client/util/dictationresult/Sentence;

    invoke-interface {v3, v0}, Lcom/nuance/nmsp/client/util/dictationresult/Sentence;->tokenAt(I)Lcom/nuance/nmsp/client/util/dictationresult/Token;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/nuance/nmdp/speechkit/recognitionresult/TokenImpl;-><init>(Lcom/nuance/nmsp/client/util/dictationresult/Token;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 25
    :cond_1f
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/recognitionresult/DetailedResultImpl;->_sentence:Lcom/nuance/nmsp/client/util/dictationresult/Sentence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
