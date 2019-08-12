.class public interface abstract Ltwitter4j/AccountSettings;
.super Ljava/lang/Object;
.source "AccountSettings.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ltwitter4j/TwitterResponse;


# virtual methods
.method public abstract getLanguage()Ljava/lang/String;
.end method

.method public abstract getScreenName()Ljava/lang/String;
.end method

.method public abstract getSleepEndTime()Ljava/lang/String;
.end method

.method public abstract getSleepStartTime()Ljava/lang/String;
.end method

.method public abstract getTimeZone()Ltwitter4j/TimeZone;
.end method

.method public abstract getTrendLocations()[Ltwitter4j/Location;
.end method

.method public abstract isAlwaysUseHttps()Z
.end method

.method public abstract isDiscoverableByEmail()Z
.end method

.method public abstract isGeoEnabled()Z
.end method

.method public abstract isSleepTimeEnabled()Z
.end method
