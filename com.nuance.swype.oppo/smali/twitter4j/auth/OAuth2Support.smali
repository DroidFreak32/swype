.class public interface abstract Ltwitter4j/auth/OAuth2Support;
.super Ljava/lang/Object;
.source "OAuth2Support.java"


# virtual methods
.method public abstract getOAuth2Token()Ltwitter4j/auth/OAuth2Token;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation
.end method

.method public abstract invalidateOAuth2Token()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation
.end method

.method public abstract setOAuth2Token(Ltwitter4j/auth/OAuth2Token;)V
.end method

.method public abstract setOAuthConsumer(Ljava/lang/String;Ljava/lang/String;)V
.end method
