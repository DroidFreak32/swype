.class public interface abstract Lcom/nuance/nmsp/client/util/dictationresult/DictationResult;
.super Ljava/lang/Object;


# virtual methods
.method public abstract getExtraInformation()Ljava/util/Hashtable;
.end method

.method public abstract sentenceAt(I)Lcom/nuance/nmsp/client/util/dictationresult/Sentence;
.end method

.method public abstract size()I
.end method

.method public abstract toString()Ljava/lang/String;
.end method

.method public abstract update([B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method
