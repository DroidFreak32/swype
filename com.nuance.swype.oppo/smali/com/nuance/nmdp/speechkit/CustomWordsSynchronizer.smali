.class public interface abstract Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizer;
.super Ljava/lang/Object;
.source "CustomWordsSynchronizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizer$Listener;,
        Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizer$CustomWordsSynchronizerActionType;
    }
.end annotation


# virtual methods
.method public abstract addCustomWordsSet(Ljava/util/Set;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation
.end method

.method public abstract cancel()V
.end method

.method public abstract clearAllCustomWords()V
.end method

.method public abstract deleteAllUserInformation()V
.end method

.method public abstract removeCustomWordsSet(Ljava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setDictationType(Ljava/lang/String;)V
.end method

.method public abstract setLanguage(Ljava/lang/String;)V
.end method
