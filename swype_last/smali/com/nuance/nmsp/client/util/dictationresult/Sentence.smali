.class public interface abstract Lcom/nuance/nmsp/client/util/dictationresult/Sentence;
.super Ljava/lang/Object;


# virtual methods
.method public abstract chooseAlternative(Lcom/nuance/nmsp/client/util/dictationresult/Alternative;)V
.end method

.method public abstract getAlternatives(II)Lcom/nuance/nmsp/client/util/dictationresult/Alternatives;
.end method

.method public abstract getConfidenceScore()D
.end method

.method public abstract size()I
.end method

.method public abstract toString()Ljava/lang/String;
.end method

.method public abstract tokenAt(I)Lcom/nuance/nmsp/client/util/dictationresult/Token;
.end method

.method public abstract tokenAtCursorPosition(I)Lcom/nuance/nmsp/client/util/dictationresult/Token;
.end method

.method public abstract updateSentence(Lcom/nuance/nmsp/client/util/dictationresult/Sentence;I)V
.end method

.method public abstract updateSentence(Lcom/nuance/nmsp/client/util/dictationresult/Sentence;II)V
.end method

.method public abstract updateSentence(Ljava/lang/String;I)V
.end method
