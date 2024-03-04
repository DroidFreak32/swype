.class public interface abstract Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/XMLParserOEM;
.super Ljava/lang/Object;


# virtual methods
.method public abstract getDictationResult()Lcom/nuance/nmsp/client/util/dictationresult/DictationResult;
.end method

.method public abstract getErrorMsg()Ljava/lang/String;
.end method

.method public abstract parse()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract resultIsValid()Z
.end method
