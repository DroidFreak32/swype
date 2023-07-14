.class Lcom/nuance/nmdp/speechkit/BinaryRecognitionResult$1;
.super Ljava/lang/Object;
.source "BinaryRecognitionResult.java"

# interfaces
.implements Lcom/nuance/nmdp/speechkit/util/parsers/IPdxParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/nmdp/speechkit/BinaryRecognitionResult;->getParser()Lcom/nuance/nmdp/speechkit/util/parsers/IPdxParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/nuance/nmdp/speechkit/util/parsers/IPdxParser",
        "<",
        "Lcom/nuance/nmdp/speechkit/Recognition;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/nmdp/speechkit/BinaryRecognitionResult;


# direct methods
.method constructor <init>(Lcom/nuance/nmdp/speechkit/BinaryRecognitionResult;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/BinaryRecognitionResult$1;->this$0:Lcom/nuance/nmdp/speechkit/BinaryRecognitionResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public expectMore()Z
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/BinaryRecognitionResult$1;->this$0:Lcom/nuance/nmdp/speechkit/BinaryRecognitionResult;

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/BinaryRecognitionResult;->access$100(Lcom/nuance/nmdp/speechkit/BinaryRecognitionResult;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getParsed()Lcom/nuance/nmdp/speechkit/Recognition;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/BinaryRecognitionResult$1;->this$0:Lcom/nuance/nmdp/speechkit/BinaryRecognitionResult;

    return-object v0
.end method

.method public bridge synthetic getParsed()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/nuance/nmdp/speechkit/BinaryRecognitionResult$1;->getParsed()Lcom/nuance/nmdp/speechkit/Recognition;

    move-result-object v0

    return-object v0
.end method

.method public parse(Lcom/nuance/nmsp/client/sdk/components/resource/nmas/QueryResult;)Z
    .locals 3
    .param p1, "result"    # Lcom/nuance/nmsp/client/sdk/components/resource/nmas/QueryResult;

    .prologue
    .line 78
    const-string/jumbo v1, "transcription"

    invoke-interface {p1, v1}, Lcom/nuance/nmsp/client/sdk/components/resource/nmas/QueryResult;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 79
    const-string/jumbo v1, "transcription"

    invoke-interface {p1, v1}, Lcom/nuance/nmsp/client/sdk/components/resource/nmas/QueryResult;->getByteString(Ljava/lang/String;)[B

    move-result-object v0

    .line 80
    .local v0, "data":[B
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/BinaryRecognitionResult$1;->this$0:Lcom/nuance/nmdp/speechkit/BinaryRecognitionResult;

    invoke-static {v0}, Lcom/nuance/nmsp/client/util/dictationresult/DictationResultFactory;->createDictationResult([B)Lcom/nuance/nmsp/client/util/dictationresult/DictationResult;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/nuance/nmdp/speechkit/BinaryRecognitionResult;->access$002(Lcom/nuance/nmdp/speechkit/BinaryRecognitionResult;Lcom/nuance/nmsp/client/util/dictationresult/DictationResult;)Lcom/nuance/nmsp/client/util/dictationresult/DictationResult;

    .line 84
    .end local v0    # "data":[B
    :goto_0
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/BinaryRecognitionResult$1;->this$0:Lcom/nuance/nmdp/speechkit/BinaryRecognitionResult;

    invoke-interface {p1}, Lcom/nuance/nmsp/client/sdk/components/resource/nmas/QueryResult;->isFinalResponse()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/nuance/nmdp/speechkit/BinaryRecognitionResult;->access$102(Lcom/nuance/nmdp/speechkit/BinaryRecognitionResult;Z)Z

    .line 86
    const/4 v1, 0x1

    return v1

    .line 82
    :cond_0
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/BinaryRecognitionResult$1;->this$0:Lcom/nuance/nmdp/speechkit/BinaryRecognitionResult;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/nuance/nmdp/speechkit/BinaryRecognitionResult;->access$002(Lcom/nuance/nmdp/speechkit/BinaryRecognitionResult;Lcom/nuance/nmsp/client/util/dictationresult/DictationResult;)Lcom/nuance/nmsp/client/util/dictationresult/DictationResult;

    goto :goto_0
.end method

.method public bridge synthetic parse(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 74
    check-cast p1, Lcom/nuance/nmsp/client/sdk/components/resource/nmas/QueryResult;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/nuance/nmdp/speechkit/BinaryRecognitionResult$1;->parse(Lcom/nuance/nmsp/client/sdk/components/resource/nmas/QueryResult;)Z

    move-result v0

    return v0
.end method
