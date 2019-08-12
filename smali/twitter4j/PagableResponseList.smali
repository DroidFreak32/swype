.class public interface abstract Ltwitter4j/PagableResponseList;
.super Ljava/lang/Object;
.source "PagableResponseList.java"

# interfaces
.implements Ltwitter4j/CursorSupport;
.implements Ltwitter4j/ResponseList;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Ltwitter4j/TwitterResponse;",
        ">",
        "Ljava/lang/Object;",
        "Ltwitter4j/CursorSupport;",
        "Ltwitter4j/ResponseList",
        "<TT;>;"
    }
.end annotation


# virtual methods
.method public abstract getNextCursor()J
.end method

.method public abstract getPreviousCursor()J
.end method

.method public abstract hasNext()Z
.end method

.method public abstract hasPrevious()Z
.end method
