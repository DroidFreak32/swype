.class public interface abstract Ltwitter4j/User;
.super Ljava/lang/Object;
.source "User.java"

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
        "Ltwitter4j/User;",
        ">;",
        "Ltwitter4j/TwitterResponse;"
    }
.end annotation


# virtual methods
.method public abstract getBiggerProfileImageURL()Ljava/lang/String;
.end method

.method public abstract getBiggerProfileImageURLHttps()Ljava/lang/String;
.end method

.method public abstract getCreatedAt()Ljava/util/Date;
.end method

.method public abstract getDescription()Ljava/lang/String;
.end method

.method public abstract getDescriptionURLEntities()[Ltwitter4j/URLEntity;
.end method

.method public abstract getFavouritesCount()I
.end method

.method public abstract getFollowersCount()I
.end method

.method public abstract getFriendsCount()I
.end method

.method public abstract getId()J
.end method

.method public abstract getLang()Ljava/lang/String;
.end method

.method public abstract getListedCount()I
.end method

.method public abstract getLocation()Ljava/lang/String;
.end method

.method public abstract getMiniProfileImageURL()Ljava/lang/String;
.end method

.method public abstract getMiniProfileImageURLHttps()Ljava/lang/String;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getOriginalProfileImageURL()Ljava/lang/String;
.end method

.method public abstract getOriginalProfileImageURLHttps()Ljava/lang/String;
.end method

.method public abstract getProfileBackgroundColor()Ljava/lang/String;
.end method

.method public abstract getProfileBackgroundImageURL()Ljava/lang/String;
.end method

.method public abstract getProfileBackgroundImageUrl()Ljava/lang/String;
.end method

.method public abstract getProfileBackgroundImageUrlHttps()Ljava/lang/String;
.end method

.method public abstract getProfileBannerIPadRetinaURL()Ljava/lang/String;
.end method

.method public abstract getProfileBannerIPadURL()Ljava/lang/String;
.end method

.method public abstract getProfileBannerMobileRetinaURL()Ljava/lang/String;
.end method

.method public abstract getProfileBannerMobileURL()Ljava/lang/String;
.end method

.method public abstract getProfileBannerRetinaURL()Ljava/lang/String;
.end method

.method public abstract getProfileBannerURL()Ljava/lang/String;
.end method

.method public abstract getProfileImageURL()Ljava/lang/String;
.end method

.method public abstract getProfileImageURLHttps()Ljava/lang/String;
.end method

.method public abstract getProfileImageUrlHttps()Ljava/net/URL;
.end method

.method public abstract getProfileLinkColor()Ljava/lang/String;
.end method

.method public abstract getProfileSidebarBorderColor()Ljava/lang/String;
.end method

.method public abstract getProfileSidebarFillColor()Ljava/lang/String;
.end method

.method public abstract getProfileTextColor()Ljava/lang/String;
.end method

.method public abstract getScreenName()Ljava/lang/String;
.end method

.method public abstract getStatus()Ltwitter4j/Status;
.end method

.method public abstract getStatusesCount()I
.end method

.method public abstract getTimeZone()Ljava/lang/String;
.end method

.method public abstract getURL()Ljava/lang/String;
.end method

.method public abstract getURLEntity()Ltwitter4j/URLEntity;
.end method

.method public abstract getUtcOffset()I
.end method

.method public abstract isContributorsEnabled()Z
.end method

.method public abstract isFollowRequestSent()Z
.end method

.method public abstract isGeoEnabled()Z
.end method

.method public abstract isProfileBackgroundTiled()Z
.end method

.method public abstract isProfileUseBackgroundImage()Z
.end method

.method public abstract isProtected()Z
.end method

.method public abstract isShowAllInlineMedia()Z
.end method

.method public abstract isTranslator()Z
.end method

.method public abstract isVerified()Z
.end method
