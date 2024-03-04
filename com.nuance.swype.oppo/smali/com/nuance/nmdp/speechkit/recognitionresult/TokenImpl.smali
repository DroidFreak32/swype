.class Lcom/nuance/nmdp/speechkit/recognitionresult/TokenImpl;
.super Ljava/lang/Object;
.source "TokenImpl.java"

# interfaces
.implements Lcom/nuance/nmdp/speechkit/recognitionresult/Token;


# instance fields
.field private _nmspToken:Lcom/nuance/nmsp/client/util/dictationresult/Token;


# direct methods
.method constructor <init>(Lcom/nuance/nmsp/client/util/dictationresult/Token;)V
    .locals 0
    .param p1, "nmspToken"    # Lcom/nuance/nmsp/client/util/dictationresult/Token;

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/recognitionresult/TokenImpl;->_nmspToken:Lcom/nuance/nmsp/client/util/dictationresult/Token;

    .line 10
    return-void
.end method


# virtual methods
.method public getConfidenceScore()D
    .locals 2

    .prologue
    .line 14
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/recognitionresult/TokenImpl;->_nmspToken:Lcom/nuance/nmsp/client/util/dictationresult/Token;

    invoke-interface {v0}, Lcom/nuance/nmsp/client/util/dictationresult/Token;->getConfidenceScore()D

    move-result-wide v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/recognitionresult/TokenImpl;->_nmspToken:Lcom/nuance/nmsp/client/util/dictationresult/Token;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
