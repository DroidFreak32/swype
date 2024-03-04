.class public interface abstract Ltwitter4j/QueryResult;
.super Ljava/lang/Object;
.source "QueryResult.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ltwitter4j/TwitterResponse;


# virtual methods
.method public abstract getCompletedIn()D
.end method

.method public abstract getCount()I
.end method

.method public abstract getMaxId()J
.end method

.method public abstract getQuery()Ljava/lang/String;
.end method

.method public abstract getRefreshURL()Ljava/lang/String;
.end method

.method public abstract getRefreshUrl()Ljava/lang/String;
.end method

.method public abstract getSinceId()J
.end method

.method public abstract getTweets()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hasNext()Z
.end method

.method public abstract nextQuery()Ltwitter4j/Query;
.end method
