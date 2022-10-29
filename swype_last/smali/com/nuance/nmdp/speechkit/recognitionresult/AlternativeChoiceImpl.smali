.class Lcom/nuance/nmdp/speechkit/recognitionresult/AlternativeChoiceImpl;
.super Ljava/lang/Object;
.source "AlternativeChoiceImpl.java"

# interfaces
.implements Lcom/nuance/nmdp/speechkit/recognitionresult/AlternativeChoice;


# instance fields
.field private _nmspAlt:Lcom/nuance/nmsp/client/util/dictationresult/Alternative;


# direct methods
.method constructor <init>(Lcom/nuance/nmsp/client/util/dictationresult/Alternative;)V
    .registers 2
    .param p1, "nmspAlt"    # Lcom/nuance/nmsp/client/util/dictationresult/Alternative;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/recognitionresult/AlternativeChoiceImpl;->_nmspAlt:Lcom/nuance/nmsp/client/util/dictationresult/Alternative;

    .line 15
    return-void
.end method


# virtual methods
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
    .line 19
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .local v1, "wordList":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/nmdp/speechkit/recognitionresult/Token;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/recognitionresult/AlternativeChoiceImpl;->_nmspAlt:Lcom/nuance/nmsp/client/util/dictationresult/Alternative;

    invoke-interface {v2}, Lcom/nuance/nmsp/client/util/dictationresult/Alternative;->size()I

    move-result v2

    if-ge v0, v2, :cond_1f

    .line 22
    new-instance v2, Lcom/nuance/nmdp/speechkit/recognitionresult/TokenImpl;

    iget-object v3, p0, Lcom/nuance/nmdp/speechkit/recognitionresult/AlternativeChoiceImpl;->_nmspAlt:Lcom/nuance/nmsp/client/util/dictationresult/Alternative;

    invoke-interface {v3, v0}, Lcom/nuance/nmsp/client/util/dictationresult/Alternative;->tokenAt(I)Lcom/nuance/nmsp/client/util/dictationresult/Token;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/nuance/nmdp/speechkit/recognitionresult/TokenImpl;-><init>(Lcom/nuance/nmsp/client/util/dictationresult/Token;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 24
    :cond_1f
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/recognitionresult/AlternativeChoiceImpl;->_nmspAlt:Lcom/nuance/nmsp/client/util/dictationresult/Alternative;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
