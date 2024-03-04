.class public interface abstract Loauth/signpost/OAuthProvider;
.super Ljava/lang/Object;
.source "OAuthProvider.java"

# interfaces
.implements Ljava/io/Serializable;


# virtual methods
.method public abstract getAccessTokenEndpointUrl()Ljava/lang/String;
.end method

.method public abstract getAuthorizationWebsiteUrl()Ljava/lang/String;
.end method

.method public abstract getRequestHeaders()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getRequestTokenEndpointUrl()Ljava/lang/String;
.end method

.method public abstract getResponseParameters()Loauth/signpost/http/HttpParameters;
.end method

.method public abstract isOAuth10a()Z
.end method

.method public abstract removeListener(Loauth/signpost/OAuthProviderListener;)V
.end method

.method public varargs abstract retrieveAccessToken(Loauth/signpost/OAuthConsumer;Ljava/lang/String;[Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Loauth/signpost/exception/OAuthMessageSignerException;,
            Loauth/signpost/exception/OAuthNotAuthorizedException;,
            Loauth/signpost/exception/OAuthExpectationFailedException;,
            Loauth/signpost/exception/OAuthCommunicationException;
        }
    .end annotation
.end method

.method public varargs abstract retrieveRequestToken(Loauth/signpost/OAuthConsumer;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Loauth/signpost/exception/OAuthMessageSignerException;,
            Loauth/signpost/exception/OAuthNotAuthorizedException;,
            Loauth/signpost/exception/OAuthExpectationFailedException;,
            Loauth/signpost/exception/OAuthCommunicationException;
        }
    .end annotation
.end method

.method public abstract setListener(Loauth/signpost/OAuthProviderListener;)V
.end method

.method public abstract setOAuth10a(Z)V
.end method

.method public abstract setRequestHeader(Ljava/lang/String;Ljava/lang/String;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setResponseParameters(Loauth/signpost/http/HttpParameters;)V
.end method
