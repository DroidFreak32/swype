.class public interface abstract Ltwitter4j/UserList;
.super Ljava/lang/Object;
.source "UserList.java"

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
        "Ltwitter4j/UserList;",
        ">;",
        "Ltwitter4j/TwitterResponse;"
    }
.end annotation


# virtual methods
.method public abstract getDescription()Ljava/lang/String;
.end method

.method public abstract getFullName()Ljava/lang/String;
.end method

.method public abstract getId()I
.end method

.method public abstract getMemberCount()I
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getSlug()Ljava/lang/String;
.end method

.method public abstract getSubscriberCount()I
.end method

.method public abstract getURI()Ljava/net/URI;
.end method

.method public abstract getUser()Ltwitter4j/User;
.end method

.method public abstract isFollowing()Z
.end method

.method public abstract isPublic()Z
.end method
