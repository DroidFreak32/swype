.class public interface abstract Ltwitter4j/SavedSearch;
.super Ljava/lang/Object;
.source "SavedSearch.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;
.implements Ltwitter4j/TwitterResponse;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable",
        "<",
        "Ltwitter4j/SavedSearch;",
        ">;",
        "Ltwitter4j/TwitterResponse;"
    }
.end annotation


# virtual methods
.method public abstract getCreatedAt()Ljava/util/Date;
.end method

.method public abstract getId()I
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getPosition()I
.end method

.method public abstract getQuery()Ljava/lang/String;
.end method
