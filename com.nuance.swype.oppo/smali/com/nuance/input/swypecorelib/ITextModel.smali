.class public interface abstract Lcom/nuance/input/swypecorelib/ITextModel;
.super Ljava/lang/Object;
.source "ITextModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/input/swypecorelib/ITextModel$UpdateResult;
    }
.end annotation


# virtual methods
.method public abstract adjust(IILjava/lang/String;)V
.end method

.method public abstract extractString(Lcom/nuance/input/swypecorelib/TextRegion;)Ljava/lang/String;
.end method

.method public abstract getBuffer()Ljava/lang/String;
.end method

.method public abstract reset()V
.end method

.method public abstract search(I)Lcom/nuance/input/swypecorelib/TextRegion;
.end method

.method public abstract setDelims(Ljava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Character;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract update(Ljava/lang/String;I)Lcom/nuance/input/swypecorelib/ITextModel$UpdateResult;
.end method
