.class public interface abstract Ltwitter4j/ResponseList;
.super Ljava/lang/Object;
.source "ResponseList.java"

# interfaces
.implements Ljava/util/List;
.implements Ltwitter4j/TwitterResponse;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/List",
        "<TT;>;",
        "Ltwitter4j/TwitterResponse;"
    }
.end annotation


# virtual methods
.method public abstract getRateLimitStatus()Ltwitter4j/RateLimitStatus;
.end method
