.class public interface abstract Ltwitter4j/TwitterAPIConfiguration;
.super Ljava/lang/Object;
.source "TwitterAPIConfiguration.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ltwitter4j/TwitterResponse;


# virtual methods
.method public abstract getCharactersReservedPerMedia()I
.end method

.method public abstract getMaxMediaPerUpload()I
.end method

.method public abstract getNonUsernamePaths()[Ljava/lang/String;
.end method

.method public abstract getPhotoSizeLimit()I
.end method

.method public abstract getPhotoSizes()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ltwitter4j/MediaEntity$Size;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getShortURLLength()I
.end method

.method public abstract getShortURLLengthHttps()I
.end method
