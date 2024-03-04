.class public interface abstract Ltwitter4j/Status;
.super Ljava/lang/Object;
.source "Status.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;
.implements Ltwitter4j/EntitySupport;
.implements Ltwitter4j/TwitterResponse;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable",
        "<",
        "Ltwitter4j/Status;",
        ">;",
        "Ltwitter4j/EntitySupport;",
        "Ltwitter4j/TwitterResponse;"
    }
.end annotation


# virtual methods
.method public abstract getContributors()[J
.end method

.method public abstract getCreatedAt()Ljava/util/Date;
.end method

.method public abstract getCurrentUserRetweetId()J
.end method

.method public abstract getFavoriteCount()I
.end method

.method public abstract getGeoLocation()Ltwitter4j/GeoLocation;
.end method

.method public abstract getId()J
.end method

.method public abstract getInReplyToScreenName()Ljava/lang/String;
.end method

.method public abstract getInReplyToStatusId()J
.end method

.method public abstract getInReplyToUserId()J
.end method

.method public abstract getIsoLanguageCode()Ljava/lang/String;
.end method

.method public abstract getPlace()Ltwitter4j/Place;
.end method

.method public abstract getRetweetCount()I
.end method

.method public abstract getRetweetedStatus()Ltwitter4j/Status;
.end method

.method public abstract getSource()Ljava/lang/String;
.end method

.method public abstract getText()Ljava/lang/String;
.end method

.method public abstract getUser()Ltwitter4j/User;
.end method

.method public abstract isFavorited()Z
.end method

.method public abstract isPossiblySensitive()Z
.end method

.method public abstract isRetweet()Z
.end method

.method public abstract isRetweeted()Z
.end method

.method public abstract isRetweetedByMe()Z
.end method

.method public abstract isTruncated()Z
.end method
