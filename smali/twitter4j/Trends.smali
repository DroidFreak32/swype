.class public interface abstract Ltwitter4j/Trends;
.super Ljava/lang/Object;
.source "Trends.java"

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
        "Ltwitter4j/Trends;",
        ">;",
        "Ltwitter4j/TwitterResponse;"
    }
.end annotation


# virtual methods
.method public abstract getAsOf()Ljava/util/Date;
.end method

.method public abstract getLocation()Ltwitter4j/Location;
.end method

.method public abstract getTrendAt()Ljava/util/Date;
.end method

.method public abstract getTrends()[Ltwitter4j/Trend;
.end method
