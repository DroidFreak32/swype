.class public interface abstract Lcom/nuance/nmdp/speechkit/Vocabulary;
.super Ljava/lang/Object;
.source "Vocabulary.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/nmdp/speechkit/Vocabulary$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Type::",
        "Lcom/nuance/nmdp/speechkit/util/dataupload/VocabularyType;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract add(Lcom/nuance/nmdp/speechkit/util/dataupload/VocabularyType;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TType;)Z"
        }
    .end annotation
.end method

.method public abstract deleteAll(Lcom/nuance/nmdp/speechkit/Vocabulary$Listener;Ljava/lang/Object;)V
.end method

.method public abstract exists(Lcom/nuance/nmdp/speechkit/util/dataupload/VocabularyType;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TType;)Z"
        }
    .end annotation
.end method

.method public abstract getChecksum()J
.end method

.method public abstract getDataCount()J
.end method

.method public abstract getItemList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TType;>;"
        }
    .end annotation
.end method

.method public abstract getLanguage()Ljava/lang/String;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getType()Ljava/lang/String;
.end method

.method public abstract remove(Lcom/nuance/nmdp/speechkit/util/dataupload/VocabularyType;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TType;)Z"
        }
    .end annotation
.end method

.method public abstract upload(Lcom/nuance/nmdp/speechkit/Vocabulary$Listener;Ljava/lang/Object;)V
.end method
