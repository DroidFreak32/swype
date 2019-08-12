.class public interface abstract Lcom/nuance/swype/input/emoji/RecentListOrderingStrategy;
.super Ljava/lang/Object;
.source "RecentListOrderingStrategy.java"


# virtual methods
.method public abstract add(Ljava/lang/String;)V
.end method

.method public abstract getAll()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSize()I
.end method

.method public abstract readFromStore()V
.end method

.method public abstract saveToStore()V
.end method
