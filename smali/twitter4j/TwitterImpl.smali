.class Ltwitter4j/TwitterImpl;
.super Ltwitter4j/TwitterBaseImpl;
.source "TwitterImpl.java"

# interfaces
.implements Ltwitter4j/Twitter;


# static fields
.field private static final implicitParamsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ltwitter4j/conf/Configuration;",
            "[",
            "Ltwitter4j/internal/http/HttpParameter;",
            ">;"
        }
    .end annotation
.end field

.field private static final implicitParamsStrMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ltwitter4j/conf/Configuration;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x14a09c9e28673704L


# instance fields
.field private final IMPLICIT_PARAMS:[Ltwitter4j/internal/http/HttpParameter;

.field private final IMPLICIT_PARAMS_STR:Ljava/lang/String;

.field private final INCLUDE_MY_RETWEET:Ltwitter4j/internal/http/HttpParameter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ltwitter4j/TwitterImpl;->implicitParamsMap:Ljava/util/Map;

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ltwitter4j/TwitterImpl;->implicitParamsStrMap:Ljava/util/Map;

    return-void
.end method

.method constructor <init>(Ltwitter4j/conf/Configuration;Ltwitter4j/auth/Authorization;)V
    .locals 10
    .param p1, "conf"    # Ltwitter4j/conf/Configuration;
    .param p2, "auth"    # Ltwitter4j/auth/Authorization;

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Ltwitter4j/TwitterBaseImpl;-><init>(Ltwitter4j/conf/Configuration;Ltwitter4j/auth/Authorization;)V

    .line 53
    new-instance v6, Ltwitter4j/internal/http/HttpParameter;

    const-string v7, "include_my_retweet"

    invoke-interface {p1}, Ltwitter4j/conf/Configuration;->isIncludeMyRetweetEnabled()Z

    move-result v8

    invoke-direct {v6, v7, v8}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Z)V

    iput-object v6, p0, Ltwitter4j/TwitterImpl;->INCLUDE_MY_RETWEET:Ltwitter4j/internal/http/HttpParameter;

    .line 54
    sget-object v6, Ltwitter4j/TwitterImpl;->implicitParamsMap:Ljava/util/Map;

    invoke-interface {v6, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ltwitter4j/internal/http/HttpParameter;

    .line 55
    .local v1, "implicitParams":[Ltwitter4j/internal/http/HttpParameter;
    sget-object v6, Ltwitter4j/TwitterImpl;->implicitParamsStrMap:Ljava/util/Map;

    invoke-interface {v6, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 56
    .local v2, "implicitParamsStr":Ljava/lang/String;
    if-nez v1, :cond_2

    .line 57
    invoke-interface {p1}, Ltwitter4j/conf/Configuration;->isIncludeEntitiesEnabled()Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v3, "1"

    .line 58
    .local v3, "includeEntities":Ljava/lang/String;
    :goto_0
    invoke-interface {p1}, Ltwitter4j/conf/Configuration;->isIncludeRTsEnabled()Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v4, "1"

    .line 59
    .local v4, "includeRTs":Ljava/lang/String;
    :goto_1
    invoke-interface {p1}, Ltwitter4j/conf/Configuration;->getContributingTo()J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-eqz v6, :cond_5

    const/4 v0, 0x1

    .line 60
    .local v0, "contributorsEnabled":Z
    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "include_entities="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&include_rts="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz v0, :cond_6

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "&contributingto="

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ltwitter4j/conf/Configuration;->getContributingTo()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_3
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 62
    sget-object v6, Ltwitter4j/TwitterImpl;->implicitParamsStrMap:Ljava/util/Map;

    invoke-interface {v6, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    new-instance v5, Ljava/util/ArrayList;

    const/4 v6, 0x4

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 65
    .local v5, "params":Ljava/util/List;, "Ljava/util/List<Ltwitter4j/internal/http/HttpParameter;>;"
    new-instance v6, Ltwitter4j/internal/http/HttpParameter;

    const-string v7, "include_entities"

    invoke-direct {v6, v7, v3}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    new-instance v6, Ltwitter4j/internal/http/HttpParameter;

    const-string v7, "include_rts"

    invoke-direct {v6, v7, v4}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    if-eqz v0, :cond_0

    .line 68
    new-instance v6, Ltwitter4j/internal/http/HttpParameter;

    const-string v7, "contributingto"

    invoke-interface {p1}, Ltwitter4j/conf/Configuration;->getContributingTo()J

    move-result-wide v8

    invoke-direct {v6, v7, v8, v9}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;J)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    :cond_0
    invoke-interface {p1}, Ltwitter4j/conf/Configuration;->isTrimUserEnabled()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 71
    new-instance v6, Ltwitter4j/internal/http/HttpParameter;

    const-string v7, "trim_user"

    const-string v8, "1"

    invoke-direct {v6, v7, v8}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    :cond_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Ltwitter4j/internal/http/HttpParameter;

    invoke-interface {v5, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "implicitParams":[Ltwitter4j/internal/http/HttpParameter;
    check-cast v1, [Ltwitter4j/internal/http/HttpParameter;

    .line 74
    .restart local v1    # "implicitParams":[Ltwitter4j/internal/http/HttpParameter;
    sget-object v6, Ltwitter4j/TwitterImpl;->implicitParamsMap:Ljava/util/Map;

    invoke-interface {v6, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .end local v0    # "contributorsEnabled":Z
    .end local v3    # "includeEntities":Ljava/lang/String;
    .end local v4    # "includeRTs":Ljava/lang/String;
    .end local v5    # "params":Ljava/util/List;, "Ljava/util/List<Ltwitter4j/internal/http/HttpParameter;>;"
    :cond_2
    iput-object v1, p0, Ltwitter4j/TwitterImpl;->IMPLICIT_PARAMS:[Ltwitter4j/internal/http/HttpParameter;

    .line 77
    iput-object v2, p0, Ltwitter4j/TwitterImpl;->IMPLICIT_PARAMS_STR:Ljava/lang/String;

    .line 78
    return-void

    .line 57
    :cond_3
    const-string v3, "0"

    goto/16 :goto_0

    .line 58
    .restart local v3    # "includeEntities":Ljava/lang/String;
    :cond_4
    const-string v4, "0"

    goto/16 :goto_1

    .line 59
    .restart local v4    # "includeRTs":Ljava/lang/String;
    :cond_5
    const/4 v0, 0x0

    goto/16 :goto_2

    .line 60
    .restart local v0    # "contributorsEnabled":Z
    :cond_6
    const-string v6, ""

    goto :goto_3
.end method

.method private addParameterToList(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p2, "paramName"    # Ljava/lang/String;
    .param p3, "color"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/internal/http/HttpParameter;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 719
    .local p1, "colors":Ljava/util/List;, "Ljava/util/List<Ltwitter4j/internal/http/HttpParameter;>;"
    if-eqz p3, :cond_0

    .line 720
    new-instance v0, Ltwitter4j/internal/http/HttpParameter;

    invoke-direct {v0, p2, p3}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 722
    :cond_0
    return-void
.end method

.method private checkFileValidity(Ljava/io/File;)V
    .locals 4
    .param p1, "image"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 753
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 755
    new-instance v0, Ltwitter4j/TwitterException;

    new-instance v1, Ljava/io/FileNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not found."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v0

    .line 757
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-nez v0, :cond_1

    .line 759
    new-instance v0, Ltwitter4j/TwitterException;

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not a file."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v0

    .line 761
    :cond_1
    return-void
.end method

.method private get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;
    .locals 8
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1904
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 1905
    const-string v3, "?"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1906
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "&"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, p0, Ltwitter4j/TwitterImpl;->IMPLICIT_PARAMS_STR:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1910
    :goto_0
    iget-object v3, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v3}, Ltwitter4j/conf/Configuration;->isMBeanEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1911
    iget-object v3, p0, Ltwitter4j/TwitterImpl;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    iget-object v6, p0, Ltwitter4j/TwitterImpl;->auth:Ltwitter4j/auth/Authorization;

    invoke-virtual {v3, p1, v6}, Ltwitter4j/internal/http/HttpClientWrapper;->get(Ljava/lang/String;Ltwitter4j/auth/Authorization;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v2

    .line 1922
    :goto_1
    return-object v2

    .line 1908
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "?"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, p0, Ltwitter4j/TwitterImpl;->IMPLICIT_PARAMS_STR:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 1914
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1917
    .local v4, "start":J
    :try_start_0
    iget-object v3, p0, Ltwitter4j/TwitterImpl;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    iget-object v6, p0, Ltwitter4j/TwitterImpl;->auth:Ltwitter4j/auth/Authorization;

    invoke-virtual {v3, p1, v6}, Ltwitter4j/internal/http/HttpClientWrapper;->get(Ljava/lang/String;Ltwitter4j/auth/Authorization;)Ltwitter4j/internal/http/HttpResponse;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 1919
    .local v2, "response":Ltwitter4j/internal/http/HttpResponse;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v0, v6, v4

    .line 1920
    .local v0, "elapsedTime":J
    invoke-static {}, Ltwitter4j/TwitterAPIMonitor;->getInstance()Ltwitter4j/TwitterAPIMonitor;

    move-result-object v3

    invoke-direct {p0, v2}, Ltwitter4j/TwitterImpl;->isOk(Ltwitter4j/internal/http/HttpResponse;)Z

    move-result v6

    invoke-virtual {v3, p1, v0, v1, v6}, Ltwitter4j/TwitterAPIMonitor;->methodCalled(Ljava/lang/String;JZ)V

    goto :goto_1

    .line 1919
    .end local v0    # "elapsedTime":J
    .end local v2    # "response":Ltwitter4j/internal/http/HttpResponse;
    :catchall_0
    move-exception v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v0, v6, v4

    .line 1920
    .restart local v0    # "elapsedTime":J
    invoke-static {}, Ltwitter4j/TwitterAPIMonitor;->getInstance()Ltwitter4j/TwitterAPIMonitor;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {p0, v7}, Ltwitter4j/TwitterImpl;->isOk(Ltwitter4j/internal/http/HttpResponse;)Z

    move-result v7

    invoke-virtual {v6, p1, v0, v1, v7}, Ltwitter4j/TwitterAPIMonitor;->methodCalled(Ljava/lang/String;JZ)V

    .line 1921
    throw v3
.end method

.method private get(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;
    .locals 8
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "params"    # [Ltwitter4j/internal/http/HttpParameter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1927
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 1928
    iget-object v3, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v3}, Ltwitter4j/conf/Configuration;->isMBeanEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1929
    iget-object v3, p0, Ltwitter4j/TwitterImpl;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    invoke-direct {p0, p2}, Ltwitter4j/TwitterImpl;->mergeImplicitParams([Ltwitter4j/internal/http/HttpParameter;)[Ltwitter4j/internal/http/HttpParameter;

    move-result-object v6

    iget-object v7, p0, Ltwitter4j/TwitterImpl;->auth:Ltwitter4j/auth/Authorization;

    invoke-virtual {v3, p1, v6, v7}, Ltwitter4j/internal/http/HttpClientWrapper;->get(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/auth/Authorization;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v2

    .line 1940
    :goto_0
    return-object v2

    .line 1932
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1935
    .local v4, "start":J
    :try_start_0
    iget-object v3, p0, Ltwitter4j/TwitterImpl;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    invoke-direct {p0, p2}, Ltwitter4j/TwitterImpl;->mergeImplicitParams([Ltwitter4j/internal/http/HttpParameter;)[Ltwitter4j/internal/http/HttpParameter;

    move-result-object v6

    iget-object v7, p0, Ltwitter4j/TwitterImpl;->auth:Ltwitter4j/auth/Authorization;

    invoke-virtual {v3, p1, v6, v7}, Ltwitter4j/internal/http/HttpClientWrapper;->get(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/auth/Authorization;)Ltwitter4j/internal/http/HttpResponse;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 1937
    .local v2, "response":Ltwitter4j/internal/http/HttpResponse;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v0, v6, v4

    .line 1938
    .local v0, "elapsedTime":J
    invoke-static {}, Ltwitter4j/TwitterAPIMonitor;->getInstance()Ltwitter4j/TwitterAPIMonitor;

    move-result-object v3

    invoke-direct {p0, v2}, Ltwitter4j/TwitterImpl;->isOk(Ltwitter4j/internal/http/HttpResponse;)Z

    move-result v6

    invoke-virtual {v3, p1, v0, v1, v6}, Ltwitter4j/TwitterAPIMonitor;->methodCalled(Ljava/lang/String;JZ)V

    goto :goto_0

    .line 1937
    .end local v0    # "elapsedTime":J
    .end local v2    # "response":Ltwitter4j/internal/http/HttpResponse;
    :catchall_0
    move-exception v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v0, v6, v4

    .line 1938
    .restart local v0    # "elapsedTime":J
    invoke-static {}, Ltwitter4j/TwitterAPIMonitor;->getInstance()Ltwitter4j/TwitterAPIMonitor;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {p0, v7}, Ltwitter4j/TwitterImpl;->isOk(Ltwitter4j/internal/http/HttpResponse;)Z

    move-result v7

    invoke-virtual {v6, p1, v0, v1, v7}, Ltwitter4j/TwitterAPIMonitor;->methodCalled(Ljava/lang/String;JZ)V

    .line 1939
    throw v3
.end method

.method private isOk(Ltwitter4j/internal/http/HttpResponse;)Z
    .locals 2
    .param p1, "response"    # Ltwitter4j/internal/http/HttpResponse;

    .prologue
    .line 2019
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ltwitter4j/internal/http/HttpResponse;->getStatusCode()I

    move-result v0

    const/16 v1, 0x12c

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private mergeImplicitParams([Ltwitter4j/internal/http/HttpParameter;)[Ltwitter4j/internal/http/HttpParameter;
    .locals 1
    .param p1, "params"    # [Ltwitter4j/internal/http/HttpParameter;

    .prologue
    .line 2015
    iget-object v0, p0, Ltwitter4j/TwitterImpl;->IMPLICIT_PARAMS:[Ltwitter4j/internal/http/HttpParameter;

    invoke-direct {p0, p1, v0}, Ltwitter4j/TwitterImpl;->mergeParameters([Ltwitter4j/internal/http/HttpParameter;[Ltwitter4j/internal/http/HttpParameter;)[Ltwitter4j/internal/http/HttpParameter;

    move-result-object v0

    return-object v0
.end method

.method private mergeParameters([Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/internal/http/HttpParameter;)[Ltwitter4j/internal/http/HttpParameter;
    .locals 3
    .param p1, "params1"    # [Ltwitter4j/internal/http/HttpParameter;
    .param p2, "params2"    # Ltwitter4j/internal/http/HttpParameter;

    .prologue
    const/4 v2, 0x0

    .line 1998
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 1999
    array-length v1, p1

    add-int/lit8 v1, v1, 0x1

    new-array v0, v1, [Ltwitter4j/internal/http/HttpParameter;

    .line 2000
    .local v0, "params":[Ltwitter4j/internal/http/HttpParameter;
    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2001
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput-object p2, v0, v1

    .line 2010
    .end local v0    # "params":[Ltwitter4j/internal/http/HttpParameter;
    :goto_0
    return-object v0

    .line 2004
    :cond_0
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    .line 2005
    new-array v0, v2, [Ltwitter4j/internal/http/HttpParameter;

    goto :goto_0

    .line 2007
    :cond_1
    if-eqz p1, :cond_2

    move-object v0, p1

    .line 2008
    goto :goto_0

    .line 2010
    :cond_2
    const/4 v1, 0x1

    new-array v0, v1, [Ltwitter4j/internal/http/HttpParameter;

    aput-object p2, v0, v2

    goto :goto_0
.end method

.method private mergeParameters([Ltwitter4j/internal/http/HttpParameter;[Ltwitter4j/internal/http/HttpParameter;)[Ltwitter4j/internal/http/HttpParameter;
    .locals 4
    .param p1, "params1"    # [Ltwitter4j/internal/http/HttpParameter;
    .param p2, "params2"    # [Ltwitter4j/internal/http/HttpParameter;

    .prologue
    const/4 v3, 0x0

    .line 1981
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 1982
    array-length v1, p1

    array-length v2, p2

    add-int/2addr v1, v2

    new-array v0, v1, [Ltwitter4j/internal/http/HttpParameter;

    .line 1983
    .local v0, "params":[Ltwitter4j/internal/http/HttpParameter;
    array-length v1, p1

    invoke-static {p1, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1984
    array-length v1, p1

    array-length v2, p2

    invoke-static {p2, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1993
    .end local v0    # "params":[Ltwitter4j/internal/http/HttpParameter;
    :goto_0
    return-object v0

    .line 1987
    :cond_0
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    .line 1988
    new-array v0, v3, [Ltwitter4j/internal/http/HttpParameter;

    goto :goto_0

    .line 1990
    :cond_1
    if-eqz p1, :cond_2

    move-object v0, p1

    .line 1991
    goto :goto_0

    :cond_2
    move-object v0, p2

    .line 1993
    goto :goto_0
.end method

.method private post(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;
    .locals 8
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1945
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 1946
    iget-object v3, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v3}, Ltwitter4j/conf/Configuration;->isMBeanEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1947
    iget-object v3, p0, Ltwitter4j/TwitterImpl;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    iget-object v6, p0, Ltwitter4j/TwitterImpl;->IMPLICIT_PARAMS:[Ltwitter4j/internal/http/HttpParameter;

    iget-object v7, p0, Ltwitter4j/TwitterImpl;->auth:Ltwitter4j/auth/Authorization;

    invoke-virtual {v3, p1, v6, v7}, Ltwitter4j/internal/http/HttpClientWrapper;->post(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/auth/Authorization;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v2

    .line 1958
    :goto_0
    return-object v2

    .line 1950
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1953
    .local v4, "start":J
    :try_start_0
    iget-object v3, p0, Ltwitter4j/TwitterImpl;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    iget-object v6, p0, Ltwitter4j/TwitterImpl;->IMPLICIT_PARAMS:[Ltwitter4j/internal/http/HttpParameter;

    iget-object v7, p0, Ltwitter4j/TwitterImpl;->auth:Ltwitter4j/auth/Authorization;

    invoke-virtual {v3, p1, v6, v7}, Ltwitter4j/internal/http/HttpClientWrapper;->post(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/auth/Authorization;)Ltwitter4j/internal/http/HttpResponse;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 1955
    .local v2, "response":Ltwitter4j/internal/http/HttpResponse;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v0, v6, v4

    .line 1956
    .local v0, "elapsedTime":J
    invoke-static {}, Ltwitter4j/TwitterAPIMonitor;->getInstance()Ltwitter4j/TwitterAPIMonitor;

    move-result-object v3

    invoke-direct {p0, v2}, Ltwitter4j/TwitterImpl;->isOk(Ltwitter4j/internal/http/HttpResponse;)Z

    move-result v6

    invoke-virtual {v3, p1, v0, v1, v6}, Ltwitter4j/TwitterAPIMonitor;->methodCalled(Ljava/lang/String;JZ)V

    goto :goto_0

    .line 1955
    .end local v0    # "elapsedTime":J
    .end local v2    # "response":Ltwitter4j/internal/http/HttpResponse;
    :catchall_0
    move-exception v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v0, v6, v4

    .line 1956
    .restart local v0    # "elapsedTime":J
    invoke-static {}, Ltwitter4j/TwitterAPIMonitor;->getInstance()Ltwitter4j/TwitterAPIMonitor;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {p0, v7}, Ltwitter4j/TwitterImpl;->isOk(Ltwitter4j/internal/http/HttpResponse;)Z

    move-result v7

    invoke-virtual {v6, p1, v0, v1, v7}, Ltwitter4j/TwitterAPIMonitor;->methodCalled(Ljava/lang/String;JZ)V

    .line 1957
    throw v3
.end method

.method private post(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;
    .locals 8
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "params"    # [Ltwitter4j/internal/http/HttpParameter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1963
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->ensureAuthorizationEnabled()V

    .line 1964
    iget-object v3, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v3}, Ltwitter4j/conf/Configuration;->isMBeanEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1965
    iget-object v3, p0, Ltwitter4j/TwitterImpl;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    invoke-direct {p0, p2}, Ltwitter4j/TwitterImpl;->mergeImplicitParams([Ltwitter4j/internal/http/HttpParameter;)[Ltwitter4j/internal/http/HttpParameter;

    move-result-object v6

    iget-object v7, p0, Ltwitter4j/TwitterImpl;->auth:Ltwitter4j/auth/Authorization;

    invoke-virtual {v3, p1, v6, v7}, Ltwitter4j/internal/http/HttpClientWrapper;->post(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/auth/Authorization;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v2

    .line 1976
    :goto_0
    return-object v2

    .line 1968
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1971
    .local v4, "start":J
    :try_start_0
    iget-object v3, p0, Ltwitter4j/TwitterImpl;->http:Ltwitter4j/internal/http/HttpClientWrapper;

    invoke-direct {p0, p2}, Ltwitter4j/TwitterImpl;->mergeImplicitParams([Ltwitter4j/internal/http/HttpParameter;)[Ltwitter4j/internal/http/HttpParameter;

    move-result-object v6

    iget-object v7, p0, Ltwitter4j/TwitterImpl;->auth:Ltwitter4j/auth/Authorization;

    invoke-virtual {v3, p1, v6, v7}, Ltwitter4j/internal/http/HttpClientWrapper;->post(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/auth/Authorization;)Ltwitter4j/internal/http/HttpResponse;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 1973
    .local v2, "response":Ltwitter4j/internal/http/HttpResponse;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v0, v6, v4

    .line 1974
    .local v0, "elapsedTime":J
    invoke-static {}, Ltwitter4j/TwitterAPIMonitor;->getInstance()Ltwitter4j/TwitterAPIMonitor;

    move-result-object v3

    invoke-direct {p0, v2}, Ltwitter4j/TwitterImpl;->isOk(Ltwitter4j/internal/http/HttpResponse;)Z

    move-result v6

    invoke-virtual {v3, p1, v0, v1, v6}, Ltwitter4j/TwitterAPIMonitor;->methodCalled(Ljava/lang/String;JZ)V

    goto :goto_0

    .line 1973
    .end local v0    # "elapsedTime":J
    .end local v2    # "response":Ltwitter4j/internal/http/HttpResponse;
    :catchall_0
    move-exception v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v0, v6, v4

    .line 1974
    .restart local v0    # "elapsedTime":J
    invoke-static {}, Ltwitter4j/TwitterAPIMonitor;->getInstance()Ltwitter4j/TwitterAPIMonitor;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {p0, v7}, Ltwitter4j/TwitterImpl;->isOk(Ltwitter4j/internal/http/HttpResponse;)Z

    move-result v7

    invoke-virtual {v6, p1, v0, v1, v7}, Ltwitter4j/TwitterAPIMonitor;->methodCalled(Ljava/lang/String;JZ)V

    .line 1975
    throw v3
.end method

.method private varargs updateUserList(Ljava/lang/String;ZLjava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/UserList;
    .locals 4
    .param p1, "newListName"    # Ljava/lang/String;
    .param p2, "isPublicList"    # Z
    .param p3, "newDescription"    # Ljava/lang/String;
    .param p4, "params"    # [Ltwitter4j/internal/http/HttpParameter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1538
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1539
    .local v0, "httpParams":Ljava/util/List;, "Ljava/util/List<Ltwitter4j/internal/http/HttpParameter;>;"
    invoke-static {v0, p4}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 1540
    if-eqz p1, :cond_0

    .line 1541
    new-instance v1, Ltwitter4j/internal/http/HttpParameter;

    const-string v2, "name"

    invoke-direct {v1, v2, p1}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1543
    :cond_0
    new-instance v2, Ltwitter4j/internal/http/HttpParameter;

    const-string v3, "mode"

    if-eqz p2, :cond_2

    const-string v1, "public"

    :goto_0
    invoke-direct {v2, v3, v1}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1544
    if-eqz p3, :cond_1

    .line 1545
    new-instance v1, Ltwitter4j/internal/http/HttpParameter;

    const-string v2, "description"

    invoke-direct {v1, v2, p3}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1547
    :cond_1
    iget-object v2, p0, Ltwitter4j/TwitterImpl;->factory:Ltwitter4j/internal/json/z_T4JInternalFactory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v3}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "lists/update.json"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ltwitter4j/internal/http/HttpParameter;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ltwitter4j/internal/http/HttpParameter;

    invoke-direct {p0, v3, v1}, Ltwitter4j/TwitterImpl;->post(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-interface {v2, v1}, Ltwitter4j/internal/json/z_T4JInternalFactory;->createAUserList(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/UserList;

    move-result-object v1

    return-object v1

    .line 1543
    :cond_2
    const-string v1, "private"

    goto :goto_0
.end method


# virtual methods
.method public addUserListMember(IJ)Ltwitter4j/UserList;
    .locals 1
    .param p1, "listId"    # I
    .param p2, "userId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1450
    const/4 v0, 0x0

    return-object v0
.end method

.method public addUserListMember(JLjava/lang/String;J)Ltwitter4j/UserList;
    .locals 1
    .param p1, "ownerId"    # J
    .param p3, "slug"    # Ljava/lang/String;
    .param p4, "userId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1476
    const/4 v0, 0x0

    return-object v0
.end method

.method public addUserListMembers(I[J)Ltwitter4j/UserList;
    .locals 1
    .param p1, "listId"    # I
    .param p2, "userIds"    # [J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1307
    invoke-virtual {p0, p1, p2}, Ltwitter4j/TwitterImpl;->createUserListMembers(I[J)Ltwitter4j/UserList;

    move-result-object v0

    return-object v0
.end method

.method public addUserListMembers(I[Ljava/lang/String;)Ltwitter4j/UserList;
    .locals 1
    .param p1, "listId"    # I
    .param p2, "screenNames"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1350
    invoke-virtual {p0, p1, p2}, Ltwitter4j/TwitterImpl;->createUserListMembers(I[Ljava/lang/String;)Ltwitter4j/UserList;

    move-result-object v0

    return-object v0
.end method

.method public addUserListMembers(JLjava/lang/String;[J)Ltwitter4j/UserList;
    .locals 1
    .param p1, "ownerId"    # J
    .param p3, "slug"    # Ljava/lang/String;
    .param p4, "userIds"    # [J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1333
    invoke-virtual {p0, p1, p2, p3, p4}, Ltwitter4j/TwitterImpl;->createUserListMembers(JLjava/lang/String;[J)Ltwitter4j/UserList;

    move-result-object v0

    return-object v0
.end method

.method public addUserListMembers(JLjava/lang/String;[Ljava/lang/String;)Ltwitter4j/UserList;
    .locals 1
    .param p1, "ownerId"    # J
    .param p3, "slug"    # Ljava/lang/String;
    .param p4, "screenNames"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1378
    invoke-virtual {p0, p1, p2, p3, p4}, Ltwitter4j/TwitterImpl;->createUserListMembers(JLjava/lang/String;[Ljava/lang/String;)Ltwitter4j/UserList;

    move-result-object v0

    return-object v0
.end method

.method public createBlock(J)Ltwitter4j/User;
    .locals 3
    .param p1, "userId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 802
    iget-object v0, p0, Ltwitter4j/TwitterImpl;->factory:Ltwitter4j/internal/json/z_T4JInternalFactory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "blocks/create.json?user_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->post(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Ltwitter4j/internal/json/z_T4JInternalFactory;->createUser(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/User;

    move-result-object v0

    return-object v0
.end method

.method public createBlock(Ljava/lang/String;)Ltwitter4j/User;
    .locals 3
    .param p1, "screenName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 810
    iget-object v0, p0, Ltwitter4j/TwitterImpl;->factory:Ltwitter4j/internal/json/z_T4JInternalFactory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "blocks/create.json?screen_name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->post(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Ltwitter4j/internal/json/z_T4JInternalFactory;->createUser(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/User;

    move-result-object v0

    return-object v0
.end method

.method public createFavorite(J)Ltwitter4j/Status;
    .locals 3
    .param p1, "id"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1040
    iget-object v0, p0, Ltwitter4j/TwitterImpl;->factory:Ltwitter4j/internal/json/z_T4JInternalFactory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "favorites/create.json?id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->post(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Ltwitter4j/internal/json/z_T4JInternalFactory;->createStatus(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/Status;

    move-result-object v0

    return-object v0
.end method

.method public createFriendship(J)Ltwitter4j/User;
    .locals 3
    .param p1, "userId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 477
    iget-object v0, p0, Ltwitter4j/TwitterImpl;->factory:Ltwitter4j/internal/json/z_T4JInternalFactory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "friendships/create.json?user_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->post(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Ltwitter4j/internal/json/z_T4JInternalFactory;->createUser(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/User;

    move-result-object v0

    return-object v0
.end method

.method public createFriendship(JZ)Ltwitter4j/User;
    .locals 3
    .param p1, "userId"    # J
    .param p3, "follow"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 493
    iget-object v0, p0, Ltwitter4j/TwitterImpl;->factory:Ltwitter4j/internal/json/z_T4JInternalFactory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "friendships/create.json?user_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&follow="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->post(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Ltwitter4j/internal/json/z_T4JInternalFactory;->createUser(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/User;

    move-result-object v0

    return-object v0
.end method

.method public createFriendship(Ljava/lang/String;)Ltwitter4j/User;
    .locals 3
    .param p1, "screenName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 485
    iget-object v0, p0, Ltwitter4j/TwitterImpl;->factory:Ltwitter4j/internal/json/z_T4JInternalFactory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "friendships/create.json?screen_name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->post(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Ltwitter4j/internal/json/z_T4JInternalFactory;->createUser(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/User;

    move-result-object v0

    return-object v0
.end method

.method public createFriendship(Ljava/lang/String;Z)Ltwitter4j/User;
    .locals 3
    .param p1, "screenName"    # Ljava/lang/String;
    .param p2, "follow"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 502
    iget-object v0, p0, Ltwitter4j/TwitterImpl;->factory:Ltwitter4j/internal/json/z_T4JInternalFactory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "friendships/create.json?screen_name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&follow="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->post(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Ltwitter4j/internal/json/z_T4JInternalFactory;->createUser(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/User;

    move-result-object v0

    return-object v0
.end method

.method public createPlace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ltwitter4j/GeoLocation;Ljava/lang/String;)Ltwitter4j/Place;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "containedWithin"    # Ljava/lang/String;
    .param p3, "token"    # Ljava/lang/String;
    .param p4, "location"    # Ltwitter4j/GeoLocation;
    .param p5, "streetAddress"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1699
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1700
    .local v0, "params":Ljava/util/List;, "Ljava/util/List<Ltwitter4j/internal/http/HttpParameter;>;"
    new-instance v1, Ltwitter4j/internal/http/HttpParameter;

    const-string v2, "name"

    invoke-direct {v1, v2, p1}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1701
    new-instance v1, Ltwitter4j/internal/http/HttpParameter;

    const-string v2, "contained_within"

    invoke-direct {v1, v2, p2}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1702
    new-instance v1, Ltwitter4j/internal/http/HttpParameter;

    const-string v2, "token"

    invoke-direct {v1, v2, p3}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1703
    new-instance v1, Ltwitter4j/internal/http/HttpParameter;

    const-string v2, "lat"

    invoke-virtual {p4}, Ltwitter4j/GeoLocation;->getLatitude()D

    move-result-wide v4

    invoke-direct {v1, v2, v4, v5}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;D)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1704
    new-instance v1, Ltwitter4j/internal/http/HttpParameter;

    const-string v2, "long"

    invoke-virtual {p4}, Ltwitter4j/GeoLocation;->getLongitude()D

    move-result-wide v4

    invoke-direct {v1, v2, v4, v5}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;D)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1705
    if-eqz p5, :cond_0

    .line 1706
    new-instance v1, Ltwitter4j/internal/http/HttpParameter;

    const-string v2, "attribute:street_address"

    invoke-direct {v1, v2, p5}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1708
    :cond_0
    iget-object v2, p0, Ltwitter4j/TwitterImpl;->factory:Ltwitter4j/internal/json/z_T4JInternalFactory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v3}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "geo/place.json"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ltwitter4j/internal/http/HttpParameter;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ltwitter4j/internal/http/HttpParameter;

    invoke-direct {p0, v3, v1}, Ltwitter4j/TwitterImpl;->post(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-interface {v2, v1}, Ltwitter4j/internal/json/z_T4JInternalFactory;->createPlace(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/Place;

    move-result-object v1

    return-object v1
.end method

.method public createSavedSearch(Ljava/lang/String;)Ltwitter4j/SavedSearch;
    .locals 6
    .param p1, "query"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1625
    iget-object v0, p0, Ltwitter4j/TwitterImpl;->factory:Ltwitter4j/internal/json/z_T4JInternalFactory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "saved_searches/create.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ltwitter4j/internal/http/HttpParameter;

    const/4 v3, 0x0

    new-instance v4, Ltwitter4j/internal/http/HttpParameter;

    const-string v5, "query"

    invoke-direct {v4, v5, p1}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    invoke-direct {p0, v1, v2}, Ltwitter4j/TwitterImpl;->post(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Ltwitter4j/internal/json/z_T4JInternalFactory;->createSavedSearch(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/SavedSearch;

    move-result-object v0

    return-object v0
.end method

.method public createUserList(Ljava/lang/String;ZLjava/lang/String;)Ltwitter4j/UserList;
    .locals 4
    .param p1, "listName"    # Ljava/lang/String;
    .param p2, "isPublicList"    # Z
    .param p3, "description"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1555
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1556
    .local v0, "httpParams":Ljava/util/List;, "Ljava/util/List<Ltwitter4j/internal/http/HttpParameter;>;"
    new-instance v1, Ltwitter4j/internal/http/HttpParameter;

    const-string v2, "name"

    invoke-direct {v1, v2, p1}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1557
    new-instance v2, Ltwitter4j/internal/http/HttpParameter;

    const-string v3, "mode"

    if-eqz p2, :cond_1

    const-string v1, "public"

    :goto_0
    invoke-direct {v2, v3, v1}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1558
    if-eqz p3, :cond_0

    .line 1559
    new-instance v1, Ltwitter4j/internal/http/HttpParameter;

    const-string v2, "description"

    invoke-direct {v1, v2, p3}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1561
    :cond_0
    iget-object v2, p0, Ltwitter4j/TwitterImpl;->factory:Ltwitter4j/internal/json/z_T4JInternalFactory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v3}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "lists/create.json"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ltwitter4j/internal/http/HttpParameter;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ltwitter4j/internal/http/HttpParameter;

    invoke-direct {p0, v3, v1}, Ltwitter4j/TwitterImpl;->post(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-interface {v2, v1}, Ltwitter4j/internal/json/z_T4JInternalFactory;->createAUserList(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/UserList;

    move-result-object v1

    return-object v1

    .line 1557
    :cond_1
    const-string v1, "private"

    goto :goto_0
.end method

.method public createUserListMember(IJ)Ltwitter4j/UserList;
    .locals 6
    .param p1, "listId"    # I
    .param p2, "userId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1443
    iget-object v0, p0, Ltwitter4j/TwitterImpl;->factory:Ltwitter4j/internal/json/z_T4JInternalFactory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "lists/members/create.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ltwitter4j/internal/http/HttpParameter;

    const/4 v3, 0x0

    new-instance v4, Ltwitter4j/internal/http/HttpParameter;

    const-string v5, "user_id"

    invoke-direct {v4, v5, p2, p3}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;J)V

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ltwitter4j/internal/http/HttpParameter;

    const-string v5, "list_id"

    invoke-direct {v4, v5, p1}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;I)V

    aput-object v4, v2, v3

    invoke-direct {p0, v1, v2}, Ltwitter4j/TwitterImpl;->post(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Ltwitter4j/internal/json/z_T4JInternalFactory;->createAUserList(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/UserList;

    move-result-object v0

    return-object v0
.end method

.method public createUserListMember(JLjava/lang/String;J)Ltwitter4j/UserList;
    .locals 6
    .param p1, "ownerId"    # J
    .param p3, "slug"    # Ljava/lang/String;
    .param p4, "userId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1458
    iget-object v0, p0, Ltwitter4j/TwitterImpl;->factory:Ltwitter4j/internal/json/z_T4JInternalFactory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "lists/members/create.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ltwitter4j/internal/http/HttpParameter;

    const/4 v3, 0x0

    new-instance v4, Ltwitter4j/internal/http/HttpParameter;

    const-string v5, "user_id"

    invoke-direct {v4, v5, p4, p5}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;J)V

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ltwitter4j/internal/http/HttpParameter;

    const-string v5, "owner_id"

    invoke-direct {v4, v5, p1, p2}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;J)V

    aput-object v4, v2, v3

    const/4 v3, 0x2

    new-instance v4, Ltwitter4j/internal/http/HttpParameter;

    const-string v5, "slug"

    invoke-direct {v4, v5, p3}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    invoke-direct {p0, v1, v2}, Ltwitter4j/TwitterImpl;->post(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Ltwitter4j/internal/json/z_T4JInternalFactory;->createAUserList(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/UserList;

    move-result-object v0

    return-object v0
.end method

.method public createUserListMember(Ljava/lang/String;Ljava/lang/String;J)Ltwitter4j/UserList;
    .locals 7
    .param p1, "ownerScreenName"    # Ljava/lang/String;
    .param p2, "slug"    # Ljava/lang/String;
    .param p3, "userId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1469
    iget-object v0, p0, Ltwitter4j/TwitterImpl;->factory:Ltwitter4j/internal/json/z_T4JInternalFactory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "lists/members/create.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ltwitter4j/internal/http/HttpParameter;

    const/4 v3, 0x0

    new-instance v4, Ltwitter4j/internal/http/HttpParameter;

    const-string v5, "user_id"

    invoke-direct {v4, v5, p3, p4}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;J)V

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ltwitter4j/internal/http/HttpParameter;

    const-string v5, "owner_screen_name"

    invoke-direct {v4, v5, p1}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/4 v3, 0x2

    new-instance v4, Ltwitter4j/internal/http/HttpParameter;

    const-string v5, "slug"

    invoke-direct {v4, v5, p2}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    invoke-direct {p0, v1, v2}, Ltwitter4j/TwitterImpl;->post(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Ltwitter4j/internal/json/z_T4JInternalFactory;->createAUserList(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/UserList;

    move-result-object v0

    return-object v0
.end method

.method public createUserListMembers(I[J)Ltwitter4j/UserList;
    .locals 7
    .param p1, "listId"    # I
    .param p2, "userIds"    # [J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1300
    iget-object v0, p0, Ltwitter4j/TwitterImpl;->factory:Ltwitter4j/internal/json/z_T4JInternalFactory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "lists/members/create_all.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ltwitter4j/internal/http/HttpParameter;

    const/4 v3, 0x0

    new-instance v4, Ltwitter4j/internal/http/HttpParameter;

    const-string v5, "list_id"

    invoke-direct {v4, v5, p1}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;I)V

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ltwitter4j/internal/http/HttpParameter;

    const-string v5, "user_id"

    invoke-static {p2}, Ltwitter4j/internal/util/z_T4JInternalStringUtil;->join([J)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    invoke-direct {p0, v1, v2}, Ltwitter4j/TwitterImpl;->post(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Ltwitter4j/internal/json/z_T4JInternalFactory;->createAUserList(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/UserList;

    move-result-object v0

    return-object v0
.end method

.method public createUserListMembers(I[Ljava/lang/String;)Ltwitter4j/UserList;
    .locals 7
    .param p1, "listId"    # I
    .param p2, "screenNames"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1341
    iget-object v0, p0, Ltwitter4j/TwitterImpl;->factory:Ltwitter4j/internal/json/z_T4JInternalFactory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "lists/members/create_all.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ltwitter4j/internal/http/HttpParameter;

    const/4 v3, 0x0

    new-instance v4, Ltwitter4j/internal/http/HttpParameter;

    const-string v5, "list_id"

    invoke-direct {v4, v5, p1}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;I)V

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ltwitter4j/internal/http/HttpParameter;

    const-string v5, "screen_name"

    invoke-static {p2}, Ltwitter4j/internal/util/z_T4JInternalStringUtil;->join([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    invoke-direct {p0, v1, v2}, Ltwitter4j/TwitterImpl;->post(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Ltwitter4j/internal/json/z_T4JInternalFactory;->createAUserList(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/UserList;

    move-result-object v0

    return-object v0
.end method

.method public createUserListMembers(JLjava/lang/String;[J)Ltwitter4j/UserList;
    .locals 7
    .param p1, "ownerId"    # J
    .param p3, "slug"    # Ljava/lang/String;
    .param p4, "userIds"    # [J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1315
    iget-object v0, p0, Ltwitter4j/TwitterImpl;->factory:Ltwitter4j/internal/json/z_T4JInternalFactory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "lists/members/create_all.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ltwitter4j/internal/http/HttpParameter;

    const/4 v3, 0x0

    new-instance v4, Ltwitter4j/internal/http/HttpParameter;

    const-string v5, "owner_id"

    invoke-direct {v4, v5, p1, p2}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;J)V

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ltwitter4j/internal/http/HttpParameter;

    const-string v5, "slug"

    invoke-direct {v4, v5, p3}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/4 v3, 0x2

    new-instance v4, Ltwitter4j/internal/http/HttpParameter;

    const-string v5, "user_id"

    invoke-static {p4}, Ltwitter4j/internal/util/z_T4JInternalStringUtil;->join([J)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    invoke-direct {p0, v1, v2}, Ltwitter4j/TwitterImpl;->post(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Ltwitter4j/internal/json/z_T4JInternalFactory;->createAUserList(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/UserList;

    move-result-object v0

    return-object v0
.end method

.method public createUserListMembers(JLjava/lang/String;[Ljava/lang/String;)Ltwitter4j/UserList;
    .locals 7
    .param p1, "ownerId"    # J
    .param p3, "slug"    # Ljava/lang/String;
    .param p4, "screenNames"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1358
    iget-object v0, p0, Ltwitter4j/TwitterImpl;->factory:Ltwitter4j/internal/json/z_T4JInternalFactory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "lists/members/create_all.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ltwitter4j/internal/http/HttpParameter;

    const/4 v3, 0x0

    new-instance v4, Ltwitter4j/internal/http/HttpParameter;

    const-string v5, "owner_id"

    invoke-direct {v4, v5, p1, p2}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;J)V

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ltwitter4j/internal/http/HttpParameter;

    const-string v5, "slug"

    invoke-direct {v4, v5, p3}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/4 v3, 0x2

    new-instance v4, Ltwitter4j/internal/http/HttpParameter;

    const-string v5, "screen_name"

    invoke-static {p4}, Ltwitter4j/internal/util/z_T4JInternalStringUtil;->join([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    invoke-direct {p0, v1, v2}, Ltwitter4j/TwitterImpl;->post(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Ltwitter4j/internal/json/z_T4JInternalFactory;->createAUserList(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/UserList;

    move-result-object v0

    return-object v0
.end method

.method public createUserListMembers(Ljava/lang/String;Ljava/lang/String;[J)Ltwitter4j/UserList;
    .locals 7
    .param p1, "ownerScreenName"    # Ljava/lang/String;
    .param p2, "slug"    # Ljava/lang/String;
    .param p3, "userIds"    # [J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1326
    iget-object v0, p0, Ltwitter4j/TwitterImpl;->factory:Ltwitter4j/internal/json/z_T4JInternalFactory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "lists/members/create_all.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ltwitter4j/internal/http/HttpParameter;

    const/4 v3, 0x0

    new-instance v4, Ltwitter4j/internal/http/HttpParameter;

    const-string v5, "owner_screen_name"

    invoke-direct {v4, v5, p1}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ltwitter4j/internal/http/HttpParameter;

    const-string v5, "slug"

    invoke-direct {v4, v5, p2}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/4 v3, 0x2

    new-instance v4, Ltwitter4j/internal/http/HttpParameter;

    const-string v5, "user_id"

    invoke-static {p3}, Ltwitter4j/internal/util/z_T4JInternalStringUtil;->join([J)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    invoke-direct {p0, v1, v2}, Ltwitter4j/TwitterImpl;->post(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Ltwitter4j/internal/json/z_T4JInternalFactory;->createAUserList(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/UserList;

    move-result-object v0

    return-object v0
.end method

.method public createUserListMembers(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ltwitter4j/UserList;
    .locals 7
    .param p1, "ownerScreenName"    # Ljava/lang/String;
    .param p2, "slug"    # Ljava/lang/String;
    .param p3, "screenNames"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1370
    iget-object v0, p0, Ltwitter4j/TwitterImpl;->factory:Ltwitter4j/internal/json/z_T4JInternalFactory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "lists/members/create_all.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ltwitter4j/internal/http/HttpParameter;

    const/4 v3, 0x0

    new-instance v4, Ltwitter4j/internal/http/HttpParameter;

    const-string v5, "owner_screen_name"

    invoke-direct {v4, v5, p1}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ltwitter4j/internal/http/HttpParameter;

    const-string v5, "slug"

    invoke-direct {v4, v5, p2}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/4 v3, 0x2

    new-instance v4, Ltwitter4j/internal/http/HttpParameter;

    const-string v5, "screen_name"

    invoke-static {p3}, Ltwitter4j/internal/util/z_T4JInternalStringUtil;->join([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    invoke-direct {p0, v1, v2}, Ltwitter4j/TwitterImpl;->post(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Ltwitter4j/internal/json/z_T4JInternalFactory;->createAUserList(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/UserList;

    move-result-object v0

    return-object v0
.end method

.method public createUserListSubscription(I)Ltwitter4j/UserList;
    .locals 6
    .param p1, "listId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1213
    iget-object v0, p0, Ltwitter4j/TwitterImpl;->factory:Ltwitter4j/internal/json/z_T4JInternalFactory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "lists/subscribers/create.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ltwitter4j/internal/http/HttpParameter;

    const/4 v3, 0x0

    new-instance v4, Ltwitter4j/internal/http/HttpParameter;

    const-string v5, "list_id"

    invoke-direct {v4, v5, p1}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;I)V

    aput-object v4, v2, v3

    invoke-direct {p0, v1, v2}, Ltwitter4j/TwitterImpl;->post(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Ltwitter4j/internal/json/z_T4JInternalFactory;->createAUserList(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/UserList;

    move-result-object v0

    return-object v0
.end method

.method public createUserListSubscription(JLjava/lang/String;)Ltwitter4j/UserList;
    .locals 7
    .param p1, "ownerId"    # J
    .param p3, "slug"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1222
    iget-object v0, p0, Ltwitter4j/TwitterImpl;->factory:Ltwitter4j/internal/json/z_T4JInternalFactory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "lists/subscribers/create.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ltwitter4j/internal/http/HttpParameter;

    const/4 v3, 0x0

    new-instance v4, Ltwitter4j/internal/http/HttpParameter;

    const-string v5, "owner_id"

    invoke-direct {v4, v5, p1, p2}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;J)V

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ltwitter4j/internal/http/HttpParameter;

    const-string v5, "slug"

    invoke-direct {v4, v5, p3}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    invoke-direct {p0, v1, v2}, Ltwitter4j/TwitterImpl;->post(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Ltwitter4j/internal/json/z_T4JInternalFactory;->createAUserList(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/UserList;

    move-result-object v0

    return-object v0
.end method

.method public createUserListSubscription(Ljava/lang/String;Ljava/lang/String;)Ltwitter4j/UserList;
    .locals 6
    .param p1, "ownerScreenName"    # Ljava/lang/String;
    .param p2, "slug"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1234
    iget-object v0, p0, Ltwitter4j/TwitterImpl;->factory:Ltwitter4j/internal/json/z_T4JInternalFactory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "lists/subscribers/create.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ltwitter4j/internal/http/HttpParameter;

    const/4 v3, 0x0

    new-instance v4, Ltwitter4j/internal/http/HttpParameter;

    const-string v5, "owner_screen_name"

    invoke-direct {v4, v5, p1}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ltwitter4j/internal/http/HttpParameter;

    const-string v5, "slug"

    invoke-direct {v4, v5, p2}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    invoke-direct {p0, v1, v2}, Ltwitter4j/TwitterImpl;->post(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Ltwitter4j/internal/json/z_T4JInternalFactory;->createAUserList(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/UserList;

    move-result-object v0

    return-object v0
.end method

.method public deleteUserListMember(IJ)Ltwitter4j/UserList;
    .locals 2
    .param p1, "listId"    # I
    .param p2, "userId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1106
    invoke-virtual {p0, p1, p2, p3}, Ltwitter4j/TwitterImpl;->destroyUserListMember(IJ)Ltwitter4j/UserList;

    move-result-object v0

    return-object v0
.end method

.method public deleteUserListMember(JLjava/lang/String;J)Ltwitter4j/UserList;
    .locals 1
    .param p1, "ownerId"    # J
    .param p3, "slug"    # Ljava/lang/String;
    .param p4, "userId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1132
    invoke-virtual/range {p0 .. p5}, Ltwitter4j/TwitterImpl;->destroyUserListMember(JLjava/lang/String;J)Ltwitter4j/UserList;

    move-result-object v0

    return-object v0
.end method

.method public destroyBlock(J)Ltwitter4j/User;
    .locals 3
    .param p1, "userId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 818
    iget-object v0, p0, Ltwitter4j/TwitterImpl;->factory:Ltwitter4j/internal/json/z_T4JInternalFactory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "blocks/destroy.json?user_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->post(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Ltwitter4j/internal/json/z_T4JInternalFactory;->createUser(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/User;

    move-result-object v0

    return-object v0
.end method

.method public destroyBlock(Ljava/lang/String;)Ltwitter4j/User;
    .locals 3
    .param p1, "screen_name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 826
    iget-object v0, p0, Ltwitter4j/TwitterImpl;->factory:Ltwitter4j/internal/json/z_T4JInternalFactory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "blocks/destroy.json?screen_name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->post(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Ltwitter4j/internal/json/z_T4JInternalFactory;->createUser(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/User;

    move-result-object v0

    return-object v0
.end method

.method public destroyDirectMessage(J)Ltwitter4j/DirectMessage;
    .locals 3
    .param p1, "id"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 363
    iget-object v0, p0, Ltwitter4j/TwitterImpl;->factory:Ltwitter4j/internal/json/z_T4JInternalFactory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "direct_messages/destroy.json?id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->post(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Ltwitter4j/internal/json/z_T4JInternalFactory;->createDirectMessage(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/DirectMessage;

    move-result-object v0

    return-object v0
.end method

.method public destroyFavorite(J)Ltwitter4j/Status;
    .locals 3
    .param p1, "id"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1032
    iget-object v0, p0, Ltwitter4j/TwitterImpl;->factory:Ltwitter4j/internal/json/z_T4JInternalFactory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "favorites/destroy.json?id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->post(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Ltwitter4j/internal/json/z_T4JInternalFactory;->createStatus(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/Status;

    move-result-object v0

    return-object v0
.end method

.method public destroyFriendship(J)Ltwitter4j/User;
    .locals 3
    .param p1, "userId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 511
    iget-object v0, p0, Ltwitter4j/TwitterImpl;->factory:Ltwitter4j/internal/json/z_T4JInternalFactory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "friendships/destroy.json?user_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->post(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Ltwitter4j/internal/json/z_T4JInternalFactory;->createUser(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/User;

    move-result-object v0

    return-object v0
.end method

.method public destroyFriendship(Ljava/lang/String;)Ltwitter4j/User;
    .locals 3
    .param p1, "screenName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 519
    iget-object v0, p0, Ltwitter4j/TwitterImpl;->factory:Ltwitter4j/internal/json/z_T4JInternalFactory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "friendships/destroy.json?screen_name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->post(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Ltwitter4j/internal/json/z_T4JInternalFactory;->createUser(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/User;

    move-result-object v0

    return-object v0
.end method

.method public destroySavedSearch(I)Ltwitter4j/SavedSearch;
    .locals 3
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1634
    iget-object v0, p0, Ltwitter4j/TwitterImpl;->factory:Ltwitter4j/internal/json/z_T4JInternalFactory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "saved_searches/destroy/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->post(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Ltwitter4j/internal/json/z_T4JInternalFactory;->createSavedSearch(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/SavedSearch;

    move-result-object v0

    return-object v0
.end method

.method public destroyStatus(J)Ltwitter4j/Status;
    .locals 3
    .param p1, "statusId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 256
    iget-object v0, p0, Ltwitter4j/TwitterImpl;->factory:Ltwitter4j/internal/json/z_T4JInternalFactory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "statuses/destroy/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->post(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Ltwitter4j/internal/json/z_T4JInternalFactory;->createStatus(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/Status;

    move-result-object v0

    return-object v0
.end method

.method public destroyUserList(I)Ltwitter4j/UserList;
    .locals 6
    .param p1, "listId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1484
    iget-object v0, p0, Ltwitter4j/TwitterImpl;->factory:Ltwitter4j/internal/json/z_T4JInternalFactory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "lists/destroy.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ltwitter4j/internal/http/HttpParameter;

    const/4 v3, 0x0

    new-instance v4, Ltwitter4j/internal/http/HttpParameter;

    const-string v5, "list_id"

    invoke-direct {v4, v5, p1}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;I)V

    aput-object v4, v2, v3

    invoke-direct {p0, v1, v2}, Ltwitter4j/TwitterImpl;->post(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Ltwitter4j/internal/json/z_T4JInternalFactory;->createAUserList(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/UserList;

    move-result-object v0

    return-object v0
.end method

.method public destroyUserList(JLjava/lang/String;)Ltwitter4j/UserList;
    .locals 7
    .param p1, "ownerId"    # J
    .param p3, "slug"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1493
    iget-object v0, p0, Ltwitter4j/TwitterImpl;->factory:Ltwitter4j/internal/json/z_T4JInternalFactory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "lists/destroy.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ltwitter4j/internal/http/HttpParameter;

    const/4 v3, 0x0

    new-instance v4, Ltwitter4j/internal/http/HttpParameter;

    const-string v5, "owner_id"

    invoke-direct {v4, v5, p1, p2}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;J)V

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ltwitter4j/internal/http/HttpParameter;

    const-string v5, "slug"

    invoke-direct {v4, v5, p3}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    invoke-direct {p0, v1, v2}, Ltwitter4j/TwitterImpl;->post(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Ltwitter4j/internal/json/z_T4JInternalFactory;->createAUserList(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/UserList;

    move-result-object v0

    return-object v0
.end method

.method public destroyUserList(Ljava/lang/String;Ljava/lang/String;)Ltwitter4j/UserList;
    .locals 6
    .param p1, "ownerScreenName"    # Ljava/lang/String;
    .param p2, "slug"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1504
    iget-object v0, p0, Ltwitter4j/TwitterImpl;->factory:Ltwitter4j/internal/json/z_T4JInternalFactory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "lists/destroy.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ltwitter4j/internal/http/HttpParameter;

    const/4 v3, 0x0

    new-instance v4, Ltwitter4j/internal/http/HttpParameter;

    const-string v5, "owner_screen_name"

    invoke-direct {v4, v5, p1}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ltwitter4j/internal/http/HttpParameter;

    const-string v5, "slug"

    invoke-direct {v4, v5, p2}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    invoke-direct {p0, v1, v2}, Ltwitter4j/TwitterImpl;->post(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Ltwitter4j/internal/json/z_T4JInternalFactory;->createAUserList(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/UserList;

    move-result-object v0

    return-object v0
.end method

.method public destroyUserListMember(IJ)Ltwitter4j/UserList;
    .locals 6
    .param p1, "listId"    # I
    .param p2, "userId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1099
    iget-object v0, p0, Ltwitter4j/TwitterImpl;->factory:Ltwitter4j/internal/json/z_T4JInternalFactory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "lists/members/destroy.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ltwitter4j/internal/http/HttpParameter;

    const/4 v3, 0x0

    new-instance v4, Ltwitter4j/internal/http/HttpParameter;

    const-string v5, "list_id"

    invoke-direct {v4, v5, p1}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;I)V

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ltwitter4j/internal/http/HttpParameter;

    const-string v5, "user_id"

    invoke-direct {v4, v5, p2, p3}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;J)V

    aput-object v4, v2, v3

    invoke-direct {p0, v1, v2}, Ltwitter4j/TwitterImpl;->post(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Ltwitter4j/internal/json/z_T4JInternalFactory;->createAUserList(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/UserList;

    move-result-object v0

    return-object v0
.end method

.method public destroyUserListMember(JLjava/lang/String;J)Ltwitter4j/UserList;
    .locals 6
    .param p1, "ownerId"    # J
    .param p3, "slug"    # Ljava/lang/String;
    .param p4, "userId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1114
    iget-object v0, p0, Ltwitter4j/TwitterImpl;->factory:Ltwitter4j/internal/json/z_T4JInternalFactory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "lists/members/destroy.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ltwitter4j/internal/http/HttpParameter;

    const/4 v3, 0x0

    new-instance v4, Ltwitter4j/internal/http/HttpParameter;

    const-string v5, "owner_id"

    invoke-direct {v4, v5, p1, p2}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;J)V

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ltwitter4j/internal/http/HttpParameter;

    const-string v5, "slug"

    invoke-direct {v4, v5, p3}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/4 v3, 0x2

    new-instance v4, Ltwitter4j/internal/http/HttpParameter;

    const-string v5, "user_id"

    invoke-direct {v4, v5, p4, p5}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;J)V

    aput-object v4, v2, v3

    invoke-direct {p0, v1, v2}, Ltwitter4j/TwitterImpl;->post(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Ltwitter4j/internal/json/z_T4JInternalFactory;->createAUserList(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/UserList;

    move-result-object v0

    return-object v0
.end method

.method public destroyUserListMember(Ljava/lang/String;Ljava/lang/String;J)Ltwitter4j/UserList;
    .locals 7
    .param p1, "ownerScreenName"    # Ljava/lang/String;
    .param p2, "slug"    # Ljava/lang/String;
    .param p3, "userId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1125
    iget-object v0, p0, Ltwitter4j/TwitterImpl;->factory:Ltwitter4j/internal/json/z_T4JInternalFactory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "lists/members/destroy.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ltwitter4j/internal/http/HttpParameter;

    const/4 v3, 0x0

    new-instance v4, Ltwitter4j/internal/http/HttpParameter;

    const-string v5, "owner_screen_name"

    invoke-direct {v4, v5, p1}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ltwitter4j/internal/http/HttpParameter;

    const-string v5, "slug"

    invoke-direct {v4, v5, p2}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/4 v3, 0x2

    new-instance v4, Ltwitter4j/internal/http/HttpParameter;

    const-string v5, "user_id"

    invoke-direct {v4, v5, p3, p4}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;J)V

    aput-object v4, v2, v3

    invoke-direct {p0, v1, v2}, Ltwitter4j/TwitterImpl;->post(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Ltwitter4j/internal/json/z_T4JInternalFactory;->createAUserList(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/UserList;

    move-result-object v0

    return-object v0
.end method

.method public destroyUserListSubscription(I)Ltwitter4j/UserList;
    .locals 6
    .param p1, "listId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1272
    iget-object v0, p0, Ltwitter4j/TwitterImpl;->factory:Ltwitter4j/internal/json/z_T4JInternalFactory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "lists/subscribers/destroy.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ltwitter4j/internal/http/HttpParameter;

    const/4 v3, 0x0

    new-instance v4, Ltwitter4j/internal/http/HttpParameter;

    const-string v5, "list_id"

    invoke-direct {v4, v5, p1}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;I)V

    aput-object v4, v2, v3

    invoke-direct {p0, v1, v2}, Ltwitter4j/TwitterImpl;->post(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Ltwitter4j/internal/json/z_T4JInternalFactory;->createAUserList(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/UserList;

    move-result-object v0

    return-object v0
.end method

.method public destroyUserListSubscription(JLjava/lang/String;)Ltwitter4j/UserList;
    .locals 7
    .param p1, "ownerId"    # J
    .param p3, "slug"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1281
    iget-object v0, p0, Ltwitter4j/TwitterImpl;->factory:Ltwitter4j/internal/json/z_T4JInternalFactory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "lists/subscribers/destroy.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ltwitter4j/internal/http/HttpParameter;

    const/4 v3, 0x0

    new-instance v4, Ltwitter4j/internal/http/HttpParameter;

    const-string v5, "owner_id"

    invoke-direct {v4, v5, p1, p2}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;J)V

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ltwitter4j/internal/http/HttpParameter;

    const-string v5, "slug"

    invoke-direct {v4, v5, p3}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    invoke-direct {p0, v1, v2}, Ltwitter4j/TwitterImpl;->post(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Ltwitter4j/internal/json/z_T4JInternalFactory;->createAUserList(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/UserList;

    move-result-object v0

    return-object v0
.end method

.method public destroyUserListSubscription(Ljava/lang/String;Ljava/lang/String;)Ltwitter4j/UserList;
    .locals 6
    .param p1, "ownerScreenName"    # Ljava/lang/String;
    .param p2, "slug"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1291
    iget-object v0, p0, Ltwitter4j/TwitterImpl;->factory:Ltwitter4j/internal/json/z_T4JInternalFactory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "lists/subscribers/destroy.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ltwitter4j/internal/http/HttpParameter;

    const/4 v3, 0x0

    new-instance v4, Ltwitter4j/internal/http/HttpParameter;

    const-string v5, "owner_screen_name"

    invoke-direct {v4, v5, p1}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ltwitter4j/internal/http/HttpParameter;

    const-string v5, "slug"

    invoke-direct {v4, v5, p2}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    invoke-direct {p0, v1, v2}, Ltwitter4j/TwitterImpl;->post(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Ltwitter4j/internal/json/z_T4JInternalFactory;->createAUserList(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/UserList;

    move-result-object v0

    return-object v0
.end method

.method public directMessages()Ltwitter4j/api/DirectMessagesResources;
    .locals 0

    .prologue
    .line 1850
    return-object p0
.end method

.method public favorites()Ltwitter4j/api/FavoritesResources;
    .locals 0

    .prologue
    .line 1870
    return-object p0
.end method

.method public friendsFollowers()Ltwitter4j/api/FriendsFollowersResources;
    .locals 0

    .prologue
    .line 1855
    return-object p0
.end method

.method public getAPIConfiguration()Ltwitter4j/TwitterAPIConfiguration;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1785
    iget-object v0, p0, Ltwitter4j/TwitterImpl;->factory:Ltwitter4j/internal/json/z_T4JInternalFactory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "help/configuration.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Ltwitter4j/internal/json/z_T4JInternalFactory;->createTwitterAPIConfiguration(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/TwitterAPIConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public getAccountSettings()Ltwitter4j/AccountSettings;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 611
    iget-object v0, p0, Ltwitter4j/TwitterImpl;->factory:Ltwitter4j/internal/json/z_T4JInternalFactory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "account/settings.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Ltwitter4j/internal/json/z_T4JInternalFactory;->createAccountSettings(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/AccountSettings;

    move-result-object v0

    return-object v0
.end method

.method public getAvailableTrends()Ltwitter4j/ResponseList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Location;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1736
    iget-object v0, p0, Ltwitter4j/TwitterImpl;->factory:Ltwitter4j/internal/json/z_T4JInternalFactory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "trends/available.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Ltwitter4j/internal/json/z_T4JInternalFactory;->createLocationList(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getAvailableTrends(Ltwitter4j/GeoLocation;)Ltwitter4j/ResponseList;
    .locals 1
    .param p1, "location"    # Ltwitter4j/GeoLocation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/GeoLocation;",
            ")",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Location;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1745
    invoke-virtual {p0, p1}, Ltwitter4j/TwitterImpl;->getClosestTrends(Ltwitter4j/GeoLocation;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getBlocksIDs()Ltwitter4j/IDs;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 786
    iget-object v0, p0, Ltwitter4j/TwitterImpl;->factory:Ltwitter4j/internal/json/z_T4JInternalFactory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "blocks/ids.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Ltwitter4j/internal/json/z_T4JInternalFactory;->createIDs(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/IDs;

    move-result-object v0

    return-object v0
.end method

.method public getBlocksIDs(J)Ltwitter4j/IDs;
    .locals 3
    .param p1, "cursor"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 794
    iget-object v0, p0, Ltwitter4j/TwitterImpl;->factory:Ltwitter4j/internal/json/z_T4JInternalFactory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "blocks/ids.json?cursor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Ltwitter4j/internal/json/z_T4JInternalFactory;->createIDs(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/IDs;

    move-result-object v0

    return-object v0
.end method

.method public getBlocksList()Ltwitter4j/PagableResponseList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ltwitter4j/PagableResponseList",
            "<",
            "Ltwitter4j/User;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 769
    const-wide/16 v0, -0x1

    invoke-virtual {p0, v0, v1}, Ltwitter4j/TwitterImpl;->getBlocksList(J)Ltwitter4j/PagableResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getBlocksList(J)Ltwitter4j/PagableResponseList;
    .locals 3
    .param p1, "cursor"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ltwitter4j/PagableResponseList",
            "<",
            "Ltwitter4j/User;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 778
    iget-object v0, p0, Ltwitter4j/TwitterImpl;->factory:Ltwitter4j/internal/json/z_T4JInternalFactory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "blocks/list.json?cursor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Ltwitter4j/internal/json/z_T4JInternalFactory;->createPagableUserList(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/PagableResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getClosestTrends(Ltwitter4j/GeoLocation;)Ltwitter4j/ResponseList;
    .locals 8
    .param p1, "location"    # Ltwitter4j/GeoLocation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/GeoLocation;",
            ")",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Location;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1753
    iget-object v0, p0, Ltwitter4j/TwitterImpl;->factory:Ltwitter4j/internal/json/z_T4JInternalFactory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "trends/closest.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ltwitter4j/internal/http/HttpParameter;

    const/4 v3, 0x0

    new-instance v4, Ltwitter4j/internal/http/HttpParameter;

    const-string v5, "lat"

    invoke-virtual {p1}, Ltwitter4j/GeoLocation;->getLatitude()D

    move-result-wide v6

    invoke-direct {v4, v5, v6, v7}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;D)V

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ltwitter4j/internal/http/HttpParameter;

    const-string v5, "long"

    invoke-virtual {p1}, Ltwitter4j/GeoLocation;->getLongitude()D

    move-result-wide v6

    invoke-direct {v4, v5, v6, v7}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;D)V

    aput-object v4, v2, v3

    invoke-direct {p0, v1, v2}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Ltwitter4j/internal/json/z_T4JInternalFactory;->createLocationList(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getContributees(J)Ltwitter4j/ResponseList;
    .locals 3
    .param p1, "userId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/User;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 878
    iget-object v0, p0, Ltwitter4j/TwitterImpl;->factory:Ltwitter4j/internal/json/z_T4JInternalFactory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "users/contributees.json?user_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Ltwitter4j/internal/json/z_T4JInternalFactory;->createUserList(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getContributees(Ljava/lang/String;)Ltwitter4j/ResponseList;
    .locals 3
    .param p1, "screenName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/User;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 886
    iget-object v0, p0, Ltwitter4j/TwitterImpl;->factory:Ltwitter4j/internal/json/z_T4JInternalFactory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "users/contributees.json?screen_name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Ltwitter4j/internal/json/z_T4JInternalFactory;->createUserList(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getContributors(J)Ltwitter4j/ResponseList;
    .locals 3
    .param p1, "userId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/User;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 894
    iget-object v0, p0, Ltwitter4j/TwitterImpl;->factory:Ltwitter4j/internal/json/z_T4JInternalFactory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "users/contributors.json?user_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Ltwitter4j/internal/json/z_T4JInternalFactory;->createUserList(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getContributors(Ljava/lang/String;)Ltwitter4j/ResponseList;
    .locals 3
    .param p1, "screenName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/User;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 902
    iget-object v0, p0, Ltwitter4j/TwitterImpl;->factory:Ltwitter4j/internal/json/z_T4JInternalFactory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "users/contributors.json?screen_name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Ltwitter4j/internal/json/z_T4JInternalFactory;->createUserList(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getDirectMessages()Ltwitter4j/ResponseList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/DirectMessage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 318
    iget-object v0, p0, Ltwitter4j/TwitterImpl;->factory:Ltwitter4j/internal/json/z_T4JInternalFactory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "direct_messages.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Ltwitter4j/internal/json/z_T4JInternalFactory;->createDirectMessageList(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getDirectMessages(Ltwitter4j/Paging;)Ltwitter4j/ResponseList;
    .locals 3
    .param p1, "paging"    # Ltwitter4j/Paging;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/Paging;",
            ")",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/DirectMessage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 326
    iget-object v0, p0, Ltwitter4j/TwitterImpl;->factory:Ltwitter4j/internal/json/z_T4JInternalFactory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "direct_messages.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ltwitter4j/Paging;->asPostParameterArray()[Ltwitter4j/internal/http/HttpParameter;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Ltwitter4j/internal/json/z_T4JInternalFactory;->createDirectMessageList(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getFavorites()Ltwitter4j/ResponseList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 980
    iget-object v0, p0, Ltwitter4j/TwitterImpl;->factory:Ltwitter4j/internal/json/z_T4JInternalFactory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "favorites/list.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Ltwitter4j/internal/json/z_T4JInternalFactory;->createStatusList(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getFavorites(J)Ltwitter4j/ResponseList;
    .locals 3
    .param p1, "userId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 988
    iget-object v0, p0, Ltwitter4j/TwitterImpl;->factory:Ltwitter4j/internal/json/z_T4JInternalFactory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "favorites/list.json?user_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Ltwitter4j/internal/json/z_T4JInternalFactory;->createStatusList(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getFavorites(JLtwitter4j/Paging;)Ltwitter4j/ResponseList;
    .locals 7
    .param p1, "userId"    # J
    .param p3, "paging"    # Ltwitter4j/Paging;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ltwitter4j/Paging;",
            ")",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1012
    iget-object v0, p0, Ltwitter4j/TwitterImpl;->factory:Ltwitter4j/internal/json/z_T4JInternalFactory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "favorites/list.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ltwitter4j/internal/http/HttpParameter;

    const/4 v3, 0x0

    new-instance v4, Ltwitter4j/internal/http/HttpParameter;

    const-string v5, "user_id"

    invoke-direct {v4, v5, p1, p2}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;J)V

    aput-object v4, v2, v3

    invoke-virtual {p3}, Ltwitter4j/Paging;->asPostParameterArray()[Ltwitter4j/internal/http/HttpParameter;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Ltwitter4j/TwitterImpl;->mergeParameters([Ltwitter4j/internal/http/HttpParameter;[Ltwitter4j/internal/http/HttpParameter;)[Ltwitter4j/internal/http/HttpParameter;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Ltwitter4j/internal/json/z_T4JInternalFactory;->createStatusList(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getFavorites(Ljava/lang/String;)Ltwitter4j/ResponseList;
    .locals 3
    .param p1, "screenName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 996
    iget-object v0, p0, Ltwitter4j/TwitterImpl;->factory:Ltwitter4j/internal/json/z_T4JInternalFactory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "favorites/list.json?screen_name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Ltwitter4j/internal/json/z_T4JInternalFactory;->createStatusList(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getFavorites(Ljava/lang/String;Ltwitter4j/Paging;)Ltwitter4j/ResponseList;
    .locals 6
    .param p1, "screenName"    # Ljava/lang/String;
    .param p2, "paging"    # Ltwitter4j/Paging;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ltwitter4j/Paging;",
            ")",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1022
    iget-object v0, p0, Ltwitter4j/TwitterImpl;->factory:Ltwitter4j/internal/json/z_T4JInternalFactory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "favorites/list.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ltwitter4j/internal/http/HttpParameter;

    const/4 v3, 0x0

    new-instance v4, Ltwitter4j/internal/http/HttpParameter;

    const-string v5, "screen_name"

    invoke-direct {v4, v5, p1}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    invoke-virtual {p2}, Ltwitter4j/Paging;->asPostParameterArray()[Ltwitter4j/internal/http/HttpParameter;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Ltwitter4j/TwitterImpl;->mergeParameters([Ltwitter4j/internal/http/HttpParameter;[Ltwitter4j/internal/http/HttpParameter;)[Ltwitter4j/internal/http/HttpParameter;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Ltwitter4j/internal/json/z_T4JInternalFactory;->createStatusList(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getFavorites(Ltwitter4j/Paging;)Ltwitter4j/ResponseList;
    .locals 3
    .param p1, "paging"    # Ltwitter4j/Paging;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/Paging;",
            ")",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1004
    iget-object v0, p0, Ltwitter4j/TwitterImpl;->factory:Ltwitter4j/internal/json/z_T4JInternalFactory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "favorites/list.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ltwitter4j/Paging;->asPostParameterArray()[Ltwitter4j/internal/http/HttpParameter;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Ltwitter4j/internal/json/z_T4JInternalFactory;->createStatusList(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getFollowersIDs(J)Ltwitter4j/IDs;
    .locals 3
    .param p1, "cursor"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 418
    iget-object v0, p0, Ltwitter4j/TwitterImpl;->factory:Ltwitter4j/internal/json/z_T4JInternalFactory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "followers/ids.json?cursor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Ltwitter4j/internal/json/z_T4JInternalFactory;->createIDs(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/IDs;

    move-result-object v0

    return-object v0
.end method

.method public getFollowersIDs(JJ)Ltwitter4j/IDs;
    .locals 3
    .param p1, "userId"    # J
    .param p3, "cursor"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 426
    iget-object v0, p0, Ltwitter4j/TwitterImpl;->factory:Ltwitter4j/internal/json/z_T4JInternalFactory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "followers/ids.json?user_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&cursor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Ltwitter4j/internal/json/z_T4JInternalFactory;->createIDs(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/IDs;

    move-result-object v0

    return-object v0
.end method

.method public getFollowersIDs(Ljava/lang/String;J)Ltwitter4j/IDs;
    .locals 4
    .param p1, "screenName"    # Ljava/lang/String;
    .param p2, "cursor"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 435
    iget-object v0, p0, Ltwitter4j/TwitterImpl;->factory:Ltwitter4j/internal/json/z_T4JInternalFactory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "followers/ids.json?screen_name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&cursor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Ltwitter4j/internal/json/z_T4JInternalFactory;->createIDs(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/IDs;

    move-result-object v0

    return-object v0
.end method

.method public getFollowersList(JJ)Ltwitter4j/PagableResponseList;
    .locals 3
    .param p1, "userId"    # J
    .param p3, "cursor"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ltwitter4j/PagableResponseList",
            "<",
            "Ltwitter4j/User;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 591
    iget-object v0, p0, Ltwitter4j/TwitterImpl;->factory:Ltwitter4j/internal/json/z_T4JInternalFactory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "followers/list.json?user_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&cursor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Ltwitter4j/internal/json/z_T4JInternalFactory;->createPagableUserList(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/PagableResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getFollowersList(Ljava/lang/String;J)Ltwitter4j/PagableResponseList;
    .locals 4
    .param p1, "screenName"    # Ljava/lang/String;
    .param p2, "cursor"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)",
            "Ltwitter4j/PagableResponseList",
            "<",
            "Ltwitter4j/User;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 600
    iget-object v0, p0, Ltwitter4j/TwitterImpl;->factory:Ltwitter4j/internal/json/z_T4JInternalFactory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "followers/list.json?screen_name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&cursor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Ltwitter4j/internal/json/z_T4JInternalFactory;->createPagableUserList(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/PagableResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getFriendsIDs(J)Ltwitter4j/IDs;
    .locals 3
    .param p1, "cursor"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 392
    iget-object v0, p0, Ltwitter4j/TwitterImpl;->factory:Ltwitter4j/internal/json/z_T4JInternalFactory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "friends/ids.json?cursor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Ltwitter4j/internal/json/z_T4JInternalFactory;->createIDs(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/IDs;

    move-result-object v0

    return-object v0
.end method

.method public getFriendsIDs(JJ)Ltwitter4j/IDs;
    .locals 3
    .param p1, "userId"    # J
    .param p3, "cursor"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 400
    iget-object v0, p0, Ltwitter4j/TwitterImpl;->factory:Ltwitter4j/internal/json/z_T4JInternalFactory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "friends/ids.json?user_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&cursor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Ltwitter4j/internal/json/z_T4JInternalFactory;->createIDs(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/IDs;

    move-result-object v0

    return-object v0
.end method

.method public getFriendsIDs(Ljava/lang/String;J)Ltwitter4j/IDs;
    .locals 4
    .param p1, "screenName"    # Ljava/lang/String;
    .param p2, "cursor"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 409
    iget-object v0, p0, Ltwitter4j/TwitterImpl;->factory:Ltwitter4j/internal/json/z_T4JInternalFactory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "friends/ids.json?screen_name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&cursor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Ltwitter4j/internal/json/z_T4JInternalFactory;->createIDs(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/IDs;

    move-result-object v0

    return-object v0
.end method

.method public getFriendsList(JJ)Ltwitter4j/PagableResponseList;
    .locals 3
    .param p1, "userId"    # J
    .param p3, "cursor"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ltwitter4j/PagableResponseList",
            "<",
            "Ltwitter4j/User;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 573
    iget-object v0, p0, Ltwitter4j/TwitterImpl;->factory:Ltwitter4j/internal/json/z_T4JInternalFactory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "friends/list.json?user_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&cursor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Ltwitter4j/internal/json/z_T4JInternalFactory;->createPagableUserList(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/PagableResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getFriendsList(Ljava/lang/String;J)Ltwitter4j/PagableResponseList;
    .locals 4
    .param p1, "screenName"    # Ljava/lang/String;
    .param p2, "cursor"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)",
            "Ltwitter4j/PagableResponseList",
            "<",
            "Ltwitter4j/User;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 582
    iget-object v0, p0, Ltwitter4j/TwitterImpl;->factory:Ltwitter4j/internal/json/z_T4JInternalFactory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "friends/list.json?screen_name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&cursor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Ltwitter4j/internal/json/z_T4JInternalFactory;->createPagableUserList(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/PagableResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getGeoDetails(Ljava/lang/String;)Ltwitter4j/Place;
    .locals 3
    .param p1, "placeId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1645
    iget-object v0, p0, Ltwitter4j/TwitterImpl;->factory:Ltwitter4j/internal/json/z_T4JInternalFactory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "geo/id/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Ltwitter4j/internal/json/z_T4JInternalFactory;->createPlace(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/Place;

    move-result-object v0

    return-object v0
.end method

.method public getHomeTimeline()Ltwitter4j/ResponseList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 122
    iget-object v0, p0, Ltwitter4j/TwitterImpl;->factory:Ltwitter4j/internal/json/z_T4JInternalFactory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "statuses/home_timeline.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ltwitter4j/internal/http/HttpParameter;

    const/4 v3, 0x0

    iget-object v4, p0, Ltwitter4j/TwitterImpl;->INCLUDE_MY_RETWEET:Ltwitter4j/internal/http/HttpParameter;

    aput-object v4, v2, v3

    invoke-direct {p0, v1, v2}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Ltwitter4j/internal/json/z_T4JInternalFactory;->createStatusList(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getHomeTimeline(Ltwitter4j/Paging;)Ltwitter4j/ResponseList;
    .locals 6
    .param p1, "paging"    # Ltwitter4j/Paging;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/Paging;",
            ")",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 132
    iget-object v0, p0, Ltwitter4j/TwitterImpl;->factory:Ltwitter4j/internal/json/z_T4JInternalFactory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "statuses/home_timeline.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ltwitter4j/Paging;->asPostParameterArray()[Ltwitter4j/internal/http/HttpParameter;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ltwitter4j/internal/http/HttpParameter;

    const/4 v4, 0x0

    iget-object v5, p0, Ltwitter4j/TwitterImpl;->INCLUDE_MY_RETWEET:Ltwitter4j/internal/http/HttpParameter;

    aput-object v5, v3, v4

    invoke-direct {p0, v2, v3}, Ltwitter4j/TwitterImpl;->mergeParameters([Ltwitter4j/internal/http/HttpParameter;[Ltwitter4j/internal/http/HttpParameter;)[Ltwitter4j/internal/http/HttpParameter;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Ltwitter4j/internal/json/z_T4JInternalFactory;->createStatusList(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getIncomingFriendships(J)Ltwitter4j/IDs;
    .locals 3
    .param p1, "cursor"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 461
    iget-object v0, p0, Ltwitter4j/TwitterImpl;->factory:Ltwitter4j/internal/json/z_T4JInternalFactory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "friendships/incoming.json?cursor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Ltwitter4j/internal/json/z_T4JInternalFactory;->createIDs(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/IDs;

    move-result-object v0

    return-object v0
.end method

.method public getLanguages()Ltwitter4j/ResponseList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/api/HelpResources$Language;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1793
    iget-object v0, p0, Ltwitter4j/TwitterImpl;->factory:Ltwitter4j/internal/json/z_T4JInternalFactory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "help/languages.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Ltwitter4j/internal/json/z_T4JInternalFactory;->createLanguageList(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getLocationTrends(I)Ltwitter4j/Trends;
    .locals 1
    .param p1, "woeid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1719
    invoke-virtual {p0, p1}, Ltwitter4j/TwitterImpl;->getPlaceTrends(I)Ltwitter4j/Trends;

    move-result-object v0

    return-object v0
.end method

.method public getMemberSuggestions(Ljava/lang/String;)Ltwitter4j/ResponseList;
    .locals 4
    .param p1, "categorySlug"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/User;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 964
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v3}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "users/suggestions/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-static {p1, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/members.json"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 970
    .local v1, "res":Ltwitter4j/internal/http/HttpResponse;
    iget-object v2, p0, Ltwitter4j/TwitterImpl;->factory:Ltwitter4j/internal/json/z_T4JInternalFactory;

    invoke-interface {v2, v1}, Ltwitter4j/internal/json/z_T4JInternalFactory;->createUserListFromJSONArray(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/ResponseList;

    move-result-object v2

    return-object v2

    .line 967
    .end local v1    # "res":Ltwitter4j/internal/http/HttpResponse;
    :catch_0
    move-exception v0

    .line 968
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getMentions()Ltwitter4j/ResponseList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 87
    invoke-virtual {p0}, Ltwitter4j/TwitterImpl;->getMentionsTimeline()Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getMentions(Ltwitter4j/Paging;)Ltwitter4j/ResponseList;
    .locals 1
    .param p1, "paging"    # Ltwitter4j/Paging;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/Paging;",
            ")",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 103
    invoke-virtual {p0, p1}, Ltwitter4j/TwitterImpl;->getMentionsTimeline(Ltwitter4j/Paging;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getMentionsTimeline()Ltwitter4j/ResponseList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 95
    iget-object v0, p0, Ltwitter4j/TwitterImpl;->factory:Ltwitter4j/internal/json/z_T4JInternalFactory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "statuses/mentions_timeline.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Ltwitter4j/internal/json/z_T4JInternalFactory;->createStatusList(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getMentionsTimeline(Ltwitter4j/Paging;)Ltwitter4j/ResponseList;
    .locals 3
    .param p1, "paging"    # Ltwitter4j/Paging;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/Paging;",
            ")",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 111
    iget-object v0, p0, Ltwitter4j/TwitterImpl;->factory:Ltwitter4j/internal/json/z_T4JInternalFactory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "statuses/mentions_timeline.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ltwitter4j/Paging;->asPostParameterArray()[Ltwitter4j/internal/http/HttpParameter;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Ltwitter4j/internal/json/z_T4JInternalFactory;->createStatusList(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getOEmbed(Ltwitter4j/OEmbedRequest;)Ltwitter4j/OEmbed;
    .locals 3
    .param p1, "req"    # Ltwitter4j/OEmbedRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 291
    iget-object v0, p0, Ltwitter4j/TwitterImpl;->factory:Ltwitter4j/internal/json/z_T4JInternalFactory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "statuses/oembed.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ltwitter4j/OEmbedRequest;->asHttpParameterArray()[Ltwitter4j/internal/http/HttpParameter;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Ltwitter4j/internal/json/z_T4JInternalFactory;->createOEmbed(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/OEmbed;

    move-result-object v0

    return-object v0
.end method

.method public getOutgoingFriendships(J)Ltwitter4j/IDs;
    .locals 3
    .param p1, "cursor"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 469
    iget-object v0, p0, Ltwitter4j/TwitterImpl;->factory:Ltwitter4j/internal/json/z_T4JInternalFactory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "friendships/outgoing.json?cursor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Ltwitter4j/internal/json/z_T4JInternalFactory;->createIDs(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/IDs;

    move-result-object v0

    return-object v0
.end method

.method public getPlaceTrends(I)Ltwitter4j/Trends;
    .locals 3
    .param p1, "woeid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1727
    iget-object v0, p0, Ltwitter4j/TwitterImpl;->factory:Ltwitter4j/internal/json/z_T4JInternalFactory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "trends/place.json?id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Ltwitter4j/internal/json/z_T4JInternalFactory;->createTrends(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/Trends;

    move-result-object v0

    return-object v0
.end method

.method public getPrivacyPolicy()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1802
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "help/privacy.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-virtual {v1}, Ltwitter4j/internal/http/HttpResponse;->asJSONObject()Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v1

    const-string v2, "privacy"

    invoke-virtual {v1, v2}, Ltwitter4j/internal/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ltwitter4j/internal/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1803
    :catch_0
    move-exception v0

    .line 1804
    .local v0, "e":Ltwitter4j/internal/org/json/JSONException;
    new-instance v1, Ltwitter4j/TwitterException;

    invoke-direct {v1, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public getRateLimitStatus()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ltwitter4j/RateLimitStatus;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1825
    iget-object v0, p0, Ltwitter4j/TwitterImpl;->factory:Ltwitter4j/internal/json/z_T4JInternalFactory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "application/rate_limit_status.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Ltwitter4j/internal/json/z_T4JInternalFactory;->createRateLimitStatuses(Ltwitter4j/internal/http/HttpResponse;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public varargs getRateLimitStatus([Ljava/lang/String;)Ljava/util/Map;
    .locals 3
    .param p1, "resources"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ltwitter4j/RateLimitStatus;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1830
    iget-object v0, p0, Ltwitter4j/TwitterImpl;->factory:Ltwitter4j/internal/json/z_T4JInternalFactory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "application/rate_limit_status.json?resources="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ltwitter4j/internal/util/z_T4JInternalStringUtil;->join([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Ltwitter4j/internal/json/z_T4JInternalFactory;->createRateLimitStatuses(Ltwitter4j/internal/http/HttpResponse;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getRetweeterIds(JIJ)Ltwitter4j/IDs;
    .locals 3
    .param p1, "statusId"    # J
    .param p3, "count"    # I
    .param p4, "cursor"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 239
    iget-object v0, p0, Ltwitter4j/TwitterImpl;->factory:Ltwitter4j/internal/json/z_T4JInternalFactory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "statuses/retweeters/ids.json?id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&cursor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Ltwitter4j/internal/json/z_T4JInternalFactory;->createIDs(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/IDs;

    move-result-object v0

    return-object v0
.end method

.method public getRetweeterIds(JJ)Ltwitter4j/IDs;
    .locals 7
    .param p1, "statusId"    # J
    .param p3, "cursor"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 231
    const/16 v3, 0x64

    move-object v0, p0

    move-wide v1, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Ltwitter4j/TwitterImpl;->getRetweeterIds(JIJ)Ltwitter4j/IDs;

    move-result-object v0

    return-object v0
.end method

.method public getRetweets(J)Ltwitter4j/ResponseList;
    .locals 3
    .param p1, "statusId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 222
    iget-object v0, p0, Ltwitter4j/TwitterImpl;->factory:Ltwitter4j/internal/json/z_T4JInternalFactory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "statuses/retweets/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".json?count=100"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Ltwitter4j/internal/json/z_T4JInternalFactory;->createStatusList(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getRetweetsOfMe()Ltwitter4j/ResponseList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 140
    iget-object v0, p0, Ltwitter4j/TwitterImpl;->factory:Ltwitter4j/internal/json/z_T4JInternalFactory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "statuses/retweets_of_me.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Ltwitter4j/internal/json/z_T4JInternalFactory;->createStatusList(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getRetweetsOfMe(Ltwitter4j/Paging;)Ltwitter4j/ResponseList;
    .locals 3
    .param p1, "paging"    # Ltwitter4j/Paging;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/Paging;",
            ")",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 148
    iget-object v0, p0, Ltwitter4j/TwitterImpl;->factory:Ltwitter4j/internal/json/z_T4JInternalFactory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "statuses/retweets_of_me.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ltwitter4j/Paging;->asPostParameterArray()[Ltwitter4j/internal/http/HttpParameter;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Ltwitter4j/internal/json/z_T4JInternalFactory;->createStatusList(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getSavedSearches()Ltwitter4j/ResponseList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/SavedSearch;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1608
    iget-object v0, p0, Ltwitter4j/TwitterImpl;->factory:Ltwitter4j/internal/json/z_T4JInternalFactory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "saved_searches/list.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Ltwitter4j/internal/json/z_T4JInternalFactory;->createSavedSearchList(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getSentDirectMessages()Ltwitter4j/ResponseList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/DirectMessage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 336
    iget-object v0, p0, Ltwitter4j/TwitterImpl;->factory:Ltwitter4j/internal/json/z_T4JInternalFactory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "direct_messages/sent.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Ltwitter4j/internal/json/z_T4JInternalFactory;->createDirectMessageList(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getSentDirectMessages(Ltwitter4j/Paging;)Ltwitter4j/ResponseList;
    .locals 3
    .param p1, "paging"    # Ltwitter4j/Paging;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/Paging;",
            ")",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/DirectMessage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 345
    iget-object v0, p0, Ltwitter4j/TwitterImpl;->factory:Ltwitter4j/internal/json/z_T4JInternalFactory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "direct_messages/sent.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ltwitter4j/Paging;->asPostParameterArray()[Ltwitter4j/internal/http/HttpParameter;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Ltwitter4j/internal/json/z_T4JInternalFactory;->createDirectMessageList(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getSimilarPlaces(Ltwitter4j/GeoLocation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ltwitter4j/SimilarPlaces;
    .locals 6
    .param p1, "location"    # Ltwitter4j/GeoLocation;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "containedWithin"    # Ljava/lang/String;
    .param p4, "streetAddress"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1680
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1681
    .local v0, "params":Ljava/util/List;, "Ljava/util/List<Ltwitter4j/internal/http/HttpParameter;>;"
    new-instance v1, Ltwitter4j/internal/http/HttpParameter;

    const-string v2, "lat"

    invoke-virtual {p1}, Ltwitter4j/GeoLocation;->getLatitude()D

    move-result-wide v4

    invoke-direct {v1, v2, v4, v5}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;D)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1682
    new-instance v1, Ltwitter4j/internal/http/HttpParameter;

    const-string v2, "long"

    invoke-virtual {p1}, Ltwitter4j/GeoLocation;->getLongitude()D

    move-result-wide v4

    invoke-direct {v1, v2, v4, v5}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;D)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1683
    new-instance v1, Ltwitter4j/internal/http/HttpParameter;

    const-string v2, "name"

    invoke-direct {v1, v2, p2}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1684
    if-eqz p3, :cond_0

    .line 1685
    new-instance v1, Ltwitter4j/internal/http/HttpParameter;

    const-string v2, "contained_within"

    invoke-direct {v1, v2, p3}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1687
    :cond_0
    if-eqz p4, :cond_1

    .line 1688
    new-instance v1, Ltwitter4j/internal/http/HttpParameter;

    const-string v2, "attribute:street_address"

    invoke-direct {v1, v2, p4}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1690
    :cond_1
    iget-object v2, p0, Ltwitter4j/TwitterImpl;->factory:Ltwitter4j/internal/json/z_T4JInternalFactory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v3}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "geo/similar_places.json"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ltwitter4j/internal/http/HttpParameter;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ltwitter4j/internal/http/HttpParameter;

    invoke-direct {p0, v3, v1}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-interface {v2, v1}, Ltwitter4j/internal/json/z_T4JInternalFactory;->createSimilarPlaces(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/SimilarPlaces;

    move-result-object v1

    return-object v1
.end method

.method public getSuggestedUserCategories()Ltwitter4j/ResponseList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Category;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 956
    iget-object v0, p0, Ltwitter4j/TwitterImpl;->factory:Ltwitter4j/internal/json/z_T4JInternalFactory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "users/suggestions.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Ltwitter4j/internal/json/z_T4JInternalFactory;->createCategoryList(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getTermsOfService()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1814
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "help/tos.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-virtual {v1}, Ltwitter4j/internal/http/HttpResponse;->asJSONObject()Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v1

    const-string v2, "tos"

    invoke-virtual {v1, v2}, Ltwitter4j/internal/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ltwitter4j/internal/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1815
    :catch_0
    move-exception v0

    .line 1816
    .local v0, "e":Ltwitter4j/internal/org/json/JSONException;
    new-instance v1, Ltwitter4j/TwitterException;

    invoke-direct {v1, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public getUserListMembers(IJ)Ltwitter4j/PagableResponseList;
    .locals 4
    .param p1, "listId"    # I
    .param p2, "cursor"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ)",
            "Ltwitter4j/PagableResponseList",
            "<",
            "Ltwitter4j/User;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1415
    iget-object v0, p0, Ltwitter4j/TwitterImpl;->factory:Ltwitter4j/internal/json/z_T4JInternalFactory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "lists/members.json?list_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&cursor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Ltwitter4j/internal/json/z_T4JInternalFactory;->createPagableUserList(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/PagableResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getUserListMembers(JLjava/lang/String;J)Ltwitter4j/PagableResponseList;
    .locals 3
    .param p1, "ownerId"    # J
    .param p3, "slug"    # Ljava/lang/String;
    .param p4, "cursor"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "J)",
            "Ltwitter4j/PagableResponseList",
            "<",
            "Ltwitter4j/User;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1424
    iget-object v0, p0, Ltwitter4j/TwitterImpl;->factory:Ltwitter4j/internal/json/z_T4JInternalFactory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "lists/members.json?owner_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&slug="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&cursor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Ltwitter4j/internal/json/z_T4JInternalFactory;->createPagableUserList(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/PagableResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getUserListMembers(Ljava/lang/String;Ljava/lang/String;J)Ltwitter4j/PagableResponseList;
    .locals 3
    .param p1, "ownerScreenName"    # Ljava/lang/String;
    .param p2, "slug"    # Ljava/lang/String;
    .param p3, "cursor"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J)",
            "Ltwitter4j/PagableResponseList",
            "<",
            "Ltwitter4j/User;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1434
    iget-object v0, p0, Ltwitter4j/TwitterImpl;->factory:Ltwitter4j/internal/json/z_T4JInternalFactory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "lists/members.json?owner_screen_name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&slug="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&cursor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Ltwitter4j/internal/json/z_T4JInternalFactory;->createPagableUserList(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/PagableResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getUserListMemberships(J)Ltwitter4j/PagableResponseList;
    .locals 3
    .param p1, "cursor"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ltwitter4j/PagableResponseList",
            "<",
            "Ltwitter4j/UserList;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1140
    iget-object v0, p0, Ltwitter4j/TwitterImpl;->factory:Ltwitter4j/internal/json/z_T4JInternalFactory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "lists/memberships.json?cursor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Ltwitter4j/internal/json/z_T4JInternalFactory;->createPagableUserListList(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/PagableResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getUserListMemberships(JJ)Ltwitter4j/PagableResponseList;
    .locals 7
    .param p1, "listMemberId"    # J
    .param p3, "cursor"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ltwitter4j/PagableResponseList",
            "<",
            "Ltwitter4j/UserList;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1157
    const/4 v6, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v1 .. v6}, Ltwitter4j/TwitterImpl;->getUserListMemberships(JJZ)Ltwitter4j/PagableResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getUserListMemberships(JJZ)Ltwitter4j/PagableResponseList;
    .locals 3
    .param p1, "listMemberId"    # J
    .param p3, "cursor"    # J
    .param p5, "filterToOwnedLists"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJZ)",
            "Ltwitter4j/PagableResponseList",
            "<",
            "Ltwitter4j/UserList;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1165
    iget-object v0, p0, Ltwitter4j/TwitterImpl;->factory:Ltwitter4j/internal/json/z_T4JInternalFactory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "lists/memberships.json?user_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&cursor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&filter_to_owned_lists="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Ltwitter4j/internal/json/z_T4JInternalFactory;->createPagableUserListList(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/PagableResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getUserListMemberships(Ljava/lang/String;J)Ltwitter4j/PagableResponseList;
    .locals 2
    .param p1, "listMemberScreenName"    # Ljava/lang/String;
    .param p2, "cursor"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)",
            "Ltwitter4j/PagableResponseList",
            "<",
            "Ltwitter4j/UserList;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1149
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Ltwitter4j/TwitterImpl;->getUserListMemberships(Ljava/lang/String;JZ)Ltwitter4j/PagableResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getUserListMemberships(Ljava/lang/String;JZ)Ltwitter4j/PagableResponseList;
    .locals 4
    .param p1, "listMemberScreenName"    # Ljava/lang/String;
    .param p2, "cursor"    # J
    .param p4, "filterToOwnedLists"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JZ)",
            "Ltwitter4j/PagableResponseList",
            "<",
            "Ltwitter4j/UserList;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1175
    iget-object v0, p0, Ltwitter4j/TwitterImpl;->factory:Ltwitter4j/internal/json/z_T4JInternalFactory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "lists/memberships.json?screen_name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&cursor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&filter_to_owned_lists="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Ltwitter4j/internal/json/z_T4JInternalFactory;->createPagableUserListList(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/PagableResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getUserListStatuses(ILtwitter4j/Paging;)Ltwitter4j/ResponseList;
    .locals 5
    .param p1, "listId"    # I
    .param p2, "paging"    # Ltwitter4j/Paging;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ltwitter4j/Paging;",
            ")",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1066
    iget-object v0, p0, Ltwitter4j/TwitterImpl;->factory:Ltwitter4j/internal/json/z_T4JInternalFactory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "lists/statuses.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ltwitter4j/Paging;->SMCP:[C

    const-string v3, "count"

    invoke-virtual {p2, v2, v3}, Ltwitter4j/Paging;->asPostParameterArray([CLjava/lang/String;)[Ltwitter4j/internal/http/HttpParameter;

    move-result-object v2

    new-instance v3, Ltwitter4j/internal/http/HttpParameter;

    const-string v4, "list_id"

    invoke-direct {v3, v4, p1}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;I)V

    invoke-direct {p0, v2, v3}, Ltwitter4j/TwitterImpl;->mergeParameters([Ltwitter4j/internal/http/HttpParameter;Ltwitter4j/internal/http/HttpParameter;)[Ltwitter4j/internal/http/HttpParameter;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Ltwitter4j/internal/json/z_T4JInternalFactory;->createStatusList(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getUserListStatuses(JLjava/lang/String;Ltwitter4j/Paging;)Ltwitter4j/ResponseList;
    .locals 7
    .param p1, "ownerId"    # J
    .param p3, "slug"    # Ljava/lang/String;
    .param p4, "paging"    # Ltwitter4j/Paging;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ltwitter4j/Paging;",
            ")",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1076
    iget-object v0, p0, Ltwitter4j/TwitterImpl;->factory:Ltwitter4j/internal/json/z_T4JInternalFactory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "lists/statuses.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ltwitter4j/Paging;->SMCP:[C

    const-string v3, "count"

    invoke-virtual {p4, v2, v3}, Ltwitter4j/Paging;->asPostParameterArray([CLjava/lang/String;)[Ltwitter4j/internal/http/HttpParameter;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ltwitter4j/internal/http/HttpParameter;

    const/4 v4, 0x0

    new-instance v5, Ltwitter4j/internal/http/HttpParameter;

    const-string v6, "owner_id"

    invoke-direct {v5, v6, p1, p2}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;J)V

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ltwitter4j/internal/http/HttpParameter;

    const-string v6, "slug"

    invoke-direct {v5, v6, p3}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    invoke-direct {p0, v2, v3}, Ltwitter4j/TwitterImpl;->mergeParameters([Ltwitter4j/internal/http/HttpParameter;[Ltwitter4j/internal/http/HttpParameter;)[Ltwitter4j/internal/http/HttpParameter;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Ltwitter4j/internal/json/z_T4JInternalFactory;->createStatusList(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getUserListStatuses(Ljava/lang/String;Ljava/lang/String;Ltwitter4j/Paging;)Ltwitter4j/ResponseList;
    .locals 7
    .param p1, "ownerScreenName"    # Ljava/lang/String;
    .param p2, "slug"    # Ljava/lang/String;
    .param p3, "paging"    # Ltwitter4j/Paging;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ltwitter4j/Paging;",
            ")",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1088
    iget-object v0, p0, Ltwitter4j/TwitterImpl;->factory:Ltwitter4j/internal/json/z_T4JInternalFactory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "lists/statuses.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ltwitter4j/Paging;->SMCP:[C

    const-string v3, "count"

    invoke-virtual {p3, v2, v3}, Ltwitter4j/Paging;->asPostParameterArray([CLjava/lang/String;)[Ltwitter4j/internal/http/HttpParameter;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ltwitter4j/internal/http/HttpParameter;

    const/4 v4, 0x0

    new-instance v5, Ltwitter4j/internal/http/HttpParameter;

    const-string v6, "owner_screen_name"

    invoke-direct {v5, v6, p1}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ltwitter4j/internal/http/HttpParameter;

    const-string v6, "slug"

    invoke-direct {v5, v6, p2}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    invoke-direct {p0, v2, v3}, Ltwitter4j/TwitterImpl;->mergeParameters([Ltwitter4j/internal/http/HttpParameter;[Ltwitter4j/internal/http/HttpParameter;)[Ltwitter4j/internal/http/HttpParameter;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Ltwitter4j/internal/json/z_T4JInternalFactory;->createStatusList(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getUserListSubscribers(IJ)Ltwitter4j/PagableResponseList;
    .locals 4
    .param p1, "listId"    # I
    .param p2, "cursor"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ)",
            "Ltwitter4j/PagableResponseList",
            "<",
            "Ltwitter4j/User;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1185
    iget-object v0, p0, Ltwitter4j/TwitterImpl;->factory:Ltwitter4j/internal/json/z_T4JInternalFactory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "lists/subscribers.json?list_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&cursor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Ltwitter4j/internal/json/z_T4JInternalFactory;->createPagableUserList(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/PagableResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getUserListSubscribers(JLjava/lang/String;J)Ltwitter4j/PagableResponseList;
    .locals 3
    .param p1, "ownerId"    # J
    .param p3, "slug"    # Ljava/lang/String;
    .param p4, "cursor"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "J)",
            "Ltwitter4j/PagableResponseList",
            "<",
            "Ltwitter4j/User;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1193
    iget-object v0, p0, Ltwitter4j/TwitterImpl;->factory:Ltwitter4j/internal/json/z_T4JInternalFactory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "lists/subscribers.json?owner_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&slug="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&cursor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Ltwitter4j/internal/json/z_T4JInternalFactory;->createPagableUserList(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/PagableResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getUserListSubscribers(Ljava/lang/String;Ljava/lang/String;J)Ltwitter4j/PagableResponseList;
    .locals 3
    .param p1, "ownerScreenName"    # Ljava/lang/String;
    .param p2, "slug"    # Ljava/lang/String;
    .param p3, "cursor"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J)",
            "Ltwitter4j/PagableResponseList",
            "<",
            "Ltwitter4j/User;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1204
    iget-object v0, p0, Ltwitter4j/TwitterImpl;->factory:Ltwitter4j/internal/json/z_T4JInternalFactory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "lists/subscribers.json?owner_screen_name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&slug="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&cursor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Ltwitter4j/internal/json/z_T4JInternalFactory;->createPagableUserList(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/PagableResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getUserListSubscriptions(Ljava/lang/String;J)Ltwitter4j/PagableResponseList;
    .locals 4
    .param p1, "listOwnerScreenName"    # Ljava/lang/String;
    .param p2, "cursor"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)",
            "Ltwitter4j/PagableResponseList",
            "<",
            "Ltwitter4j/UserList;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1597
    iget-object v0, p0, Ltwitter4j/TwitterImpl;->factory:Ltwitter4j/internal/json/z_T4JInternalFactory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "lists/subscriptions.json?screen_name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&cursor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Ltwitter4j/internal/json/z_T4JInternalFactory;->createPagableUserListList(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/PagableResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getUserLists(J)Ltwitter4j/ResponseList;
    .locals 3
    .param p1, "listOwnerUserId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/UserList;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1058
    iget-object v0, p0, Ltwitter4j/TwitterImpl;->factory:Ltwitter4j/internal/json/z_T4JInternalFactory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "lists/list.json?user_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Ltwitter4j/internal/json/z_T4JInternalFactory;->createUserListList(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getUserLists(Ljava/lang/String;)Ltwitter4j/ResponseList;
    .locals 3
    .param p1, "listOwnerScreenName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/UserList;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1050
    iget-object v0, p0, Ltwitter4j/TwitterImpl;->factory:Ltwitter4j/internal/json/z_T4JInternalFactory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "lists/list.json?screen_name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Ltwitter4j/internal/json/z_T4JInternalFactory;->createUserListList(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getUserSuggestions(Ljava/lang/String;)Ltwitter4j/ResponseList;
    .locals 4
    .param p1, "categorySlug"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/User;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 942
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v3}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "users/suggestions/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-static {p1, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".json"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 948
    .local v1, "res":Ltwitter4j/internal/http/HttpResponse;
    iget-object v2, p0, Ltwitter4j/TwitterImpl;->factory:Ltwitter4j/internal/json/z_T4JInternalFactory;

    invoke-interface {v2, v1}, Ltwitter4j/internal/json/z_T4JInternalFactory;->createUserListFromJSONArray_Users(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/ResponseList;

    move-result-object v2

    return-object v2

    .line 945
    .end local v1    # "res":Ltwitter4j/internal/http/HttpResponse;
    :catch_0
    move-exception v0

    .line 946
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getUserTimeline()Ltwitter4j/ResponseList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 200
    new-instance v0, Ltwitter4j/Paging;

    invoke-direct {v0}, Ltwitter4j/Paging;-><init>()V

    invoke-virtual {p0, v0}, Ltwitter4j/TwitterImpl;->getUserTimeline(Ltwitter4j/Paging;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getUserTimeline(J)Ltwitter4j/ResponseList;
    .locals 1
    .param p1, "userId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 191
    new-instance v0, Ltwitter4j/Paging;

    invoke-direct {v0}, Ltwitter4j/Paging;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Ltwitter4j/TwitterImpl;->getUserTimeline(JLtwitter4j/Paging;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getUserTimeline(JLtwitter4j/Paging;)Ltwitter4j/ResponseList;
    .locals 7
    .param p1, "userId"    # J
    .param p3, "paging"    # Ltwitter4j/Paging;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ltwitter4j/Paging;",
            ")",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 171
    iget-object v0, p0, Ltwitter4j/TwitterImpl;->factory:Ltwitter4j/internal/json/z_T4JInternalFactory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "statuses/user_timeline.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ltwitter4j/internal/http/HttpParameter;

    const/4 v3, 0x0

    new-instance v4, Ltwitter4j/internal/http/HttpParameter;

    const-string v5, "user_id"

    invoke-direct {v4, v5, p1, p2}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;J)V

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Ltwitter4j/TwitterImpl;->INCLUDE_MY_RETWEET:Ltwitter4j/internal/http/HttpParameter;

    aput-object v4, v2, v3

    invoke-virtual {p3}, Ltwitter4j/Paging;->asPostParameterArray()[Ltwitter4j/internal/http/HttpParameter;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Ltwitter4j/TwitterImpl;->mergeParameters([Ltwitter4j/internal/http/HttpParameter;[Ltwitter4j/internal/http/HttpParameter;)[Ltwitter4j/internal/http/HttpParameter;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Ltwitter4j/internal/json/z_T4JInternalFactory;->createStatusList(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getUserTimeline(Ljava/lang/String;)Ltwitter4j/ResponseList;
    .locals 1
    .param p1, "screenName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 183
    new-instance v0, Ltwitter4j/Paging;

    invoke-direct {v0}, Ltwitter4j/Paging;-><init>()V

    invoke-virtual {p0, p1, v0}, Ltwitter4j/TwitterImpl;->getUserTimeline(Ljava/lang/String;Ltwitter4j/Paging;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getUserTimeline(Ljava/lang/String;Ltwitter4j/Paging;)Ltwitter4j/ResponseList;
    .locals 6
    .param p1, "screenName"    # Ljava/lang/String;
    .param p2, "paging"    # Ltwitter4j/Paging;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ltwitter4j/Paging;",
            ")",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 158
    iget-object v0, p0, Ltwitter4j/TwitterImpl;->factory:Ltwitter4j/internal/json/z_T4JInternalFactory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "statuses/user_timeline.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ltwitter4j/internal/http/HttpParameter;

    const/4 v3, 0x0

    new-instance v4, Ltwitter4j/internal/http/HttpParameter;

    const-string v5, "screen_name"

    invoke-direct {v4, v5, p1}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Ltwitter4j/TwitterImpl;->INCLUDE_MY_RETWEET:Ltwitter4j/internal/http/HttpParameter;

    aput-object v4, v2, v3

    invoke-virtual {p2}, Ltwitter4j/Paging;->asPostParameterArray()[Ltwitter4j/internal/http/HttpParameter;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Ltwitter4j/TwitterImpl;->mergeParameters([Ltwitter4j/internal/http/HttpParameter;[Ltwitter4j/internal/http/HttpParameter;)[Ltwitter4j/internal/http/HttpParameter;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Ltwitter4j/internal/json/z_T4JInternalFactory;->createStatusList(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public getUserTimeline(Ltwitter4j/Paging;)Ltwitter4j/ResponseList;
    .locals 5
    .param p1, "paging"    # Ltwitter4j/Paging;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/Paging;",
            ")",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 209
    iget-object v0, p0, Ltwitter4j/TwitterImpl;->factory:Ltwitter4j/internal/json/z_T4JInternalFactory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "statuses/user_timeline.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ltwitter4j/internal/http/HttpParameter;

    const/4 v3, 0x0

    iget-object v4, p0, Ltwitter4j/TwitterImpl;->INCLUDE_MY_RETWEET:Ltwitter4j/internal/http/HttpParameter;

    aput-object v4, v2, v3

    invoke-virtual {p1}, Ltwitter4j/Paging;->asPostParameterArray()[Ltwitter4j/internal/http/HttpParameter;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Ltwitter4j/TwitterImpl;->mergeParameters([Ltwitter4j/internal/http/HttpParameter;[Ltwitter4j/internal/http/HttpParameter;)[Ltwitter4j/internal/http/HttpParameter;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Ltwitter4j/internal/json/z_T4JInternalFactory;->createStatusList(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public help()Ltwitter4j/api/HelpResources;
    .locals 0

    .prologue
    .line 1900
    return-object p0
.end method

.method public list()Ltwitter4j/api/ListsResources;
    .locals 0

    .prologue
    .line 1875
    return-object p0
.end method

.method public lookupFriendships([J)Ltwitter4j/ResponseList;
    .locals 3
    .param p1, "ids"    # [J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([J)",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Friendship;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 444
    iget-object v0, p0, Ltwitter4j/TwitterImpl;->factory:Ltwitter4j/internal/json/z_T4JInternalFactory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "friendships/lookup.json?user_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ltwitter4j/internal/util/z_T4JInternalStringUtil;->join([J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Ltwitter4j/internal/json/z_T4JInternalFactory;->createFriendshipList(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public lookupFriendships([Ljava/lang/String;)Ltwitter4j/ResponseList;
    .locals 3
    .param p1, "screenNames"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Friendship;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 452
    iget-object v0, p0, Ltwitter4j/TwitterImpl;->factory:Ltwitter4j/internal/json/z_T4JInternalFactory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "friendships/lookup.json?screen_name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ltwitter4j/internal/util/z_T4JInternalStringUtil;->join([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Ltwitter4j/internal/json/z_T4JInternalFactory;->createFriendshipList(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public lookupUsers([J)Ltwitter4j/ResponseList;
    .locals 7
    .param p1, "ids"    # [J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([J)",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/User;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 834
    iget-object v0, p0, Ltwitter4j/TwitterImpl;->factory:Ltwitter4j/internal/json/z_T4JInternalFactory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "users/lookup.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ltwitter4j/internal/http/HttpParameter;

    const/4 v3, 0x0

    new-instance v4, Ltwitter4j/internal/http/HttpParameter;

    const-string v5, "user_id"

    invoke-static {p1}, Ltwitter4j/internal/util/z_T4JInternalStringUtil;->join([J)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    invoke-direct {p0, v1, v2}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Ltwitter4j/internal/json/z_T4JInternalFactory;->createUserList(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public lookupUsers([Ljava/lang/String;)Ltwitter4j/ResponseList;
    .locals 7
    .param p1, "screenNames"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/User;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 843
    iget-object v0, p0, Ltwitter4j/TwitterImpl;->factory:Ltwitter4j/internal/json/z_T4JInternalFactory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "users/lookup.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ltwitter4j/internal/http/HttpParameter;

    const/4 v3, 0x0

    new-instance v4, Ltwitter4j/internal/http/HttpParameter;

    const-string v5, "screen_name"

    invoke-static {p1}, Ltwitter4j/internal/util/z_T4JInternalStringUtil;->join([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    invoke-direct {p0, v1, v2}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Ltwitter4j/internal/json/z_T4JInternalFactory;->createUserList(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public placesGeo()Ltwitter4j/api/PlacesGeoResources;
    .locals 0

    .prologue
    .line 1885
    return-object p0
.end method

.method public removeProfileBanner()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 910
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "account/remove_profile_banner.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ltwitter4j/TwitterImpl;->post(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    .line 912
    return-void
.end method

.method public reportSpam(J)Ltwitter4j/User;
    .locals 3
    .param p1, "userId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1767
    iget-object v0, p0, Ltwitter4j/TwitterImpl;->factory:Ltwitter4j/internal/json/z_T4JInternalFactory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "users/report_spam.json?user_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->post(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Ltwitter4j/internal/json/z_T4JInternalFactory;->createUser(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/User;

    move-result-object v0

    return-object v0
.end method

.method public reportSpam(Ljava/lang/String;)Ltwitter4j/User;
    .locals 3
    .param p1, "screenName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1775
    iget-object v0, p0, Ltwitter4j/TwitterImpl;->factory:Ltwitter4j/internal/json/z_T4JInternalFactory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "users/report_spam.json?screen_name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->post(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Ltwitter4j/internal/json/z_T4JInternalFactory;->createUser(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/User;

    move-result-object v0

    return-object v0
.end method

.method public retweetStatus(J)Ltwitter4j/Status;
    .locals 3
    .param p1, "statusId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 283
    iget-object v0, p0, Ltwitter4j/TwitterImpl;->factory:Ltwitter4j/internal/json/z_T4JInternalFactory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "statuses/retweet/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->post(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Ltwitter4j/internal/json/z_T4JInternalFactory;->createStatus(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/Status;

    move-result-object v0

    return-object v0
.end method

.method public reverseGeoCode(Ltwitter4j/GeoQuery;)Ltwitter4j/ResponseList;
    .locals 4
    .param p1, "query"    # Ltwitter4j/GeoQuery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/GeoQuery;",
            ")",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Place;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1655
    :try_start_0
    iget-object v1, p0, Ltwitter4j/TwitterImpl;->factory:Ltwitter4j/internal/json/z_T4JInternalFactory;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v3}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "geo/reverse_geocode.json"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ltwitter4j/GeoQuery;->asHttpParameterArray()[Ltwitter4j/internal/http/HttpParameter;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v2

    invoke-interface {v1, v2}, Ltwitter4j/internal/json/z_T4JInternalFactory;->createPlaceList(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/ResponseList;
    :try_end_0
    .catch Ltwitter4j/TwitterException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1659
    :goto_0
    return-object v1

    .line 1657
    :catch_0
    move-exception v0

    .line 1658
    .local v0, "te":Ltwitter4j/TwitterException;
    invoke-virtual {v0}, Ltwitter4j/TwitterException;->getStatusCode()I

    move-result v1

    const/16 v2, 0x194

    if-ne v1, v2, :cond_0

    .line 1659
    iget-object v1, p0, Ltwitter4j/TwitterImpl;->factory:Ltwitter4j/internal/json/z_T4JInternalFactory;

    invoke-interface {v1}, Ltwitter4j/internal/json/z_T4JInternalFactory;->createEmptyResponseList()Ltwitter4j/ResponseList;

    move-result-object v1

    goto :goto_0

    .line 1661
    :cond_0
    throw v0
.end method

.method public savedSearches()Ltwitter4j/api/SavedSearchesResources;
    .locals 0

    .prologue
    .line 1880
    return-object p0
.end method

.method public search(Ltwitter4j/Query;)Ltwitter4j/QueryResult;
    .locals 3
    .param p1, "query"    # Ltwitter4j/Query;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 302
    invoke-virtual {p1}, Ltwitter4j/Query;->nextPage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Ltwitter4j/TwitterImpl;->factory:Ltwitter4j/internal/json/z_T4JInternalFactory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "search/tweets.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ltwitter4j/Query;->nextPage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ltwitter4j/internal/json/z_T4JInternalFactory;->createQueryResult(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/Query;)Ltwitter4j/QueryResult;

    move-result-object v0

    .line 306
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ltwitter4j/TwitterImpl;->factory:Ltwitter4j/internal/json/z_T4JInternalFactory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "search/tweets.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ltwitter4j/Query;->asHttpParameterArray()[Ltwitter4j/internal/http/HttpParameter;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ltwitter4j/internal/json/z_T4JInternalFactory;->createQueryResult(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/Query;)Ltwitter4j/QueryResult;

    move-result-object v0

    goto :goto_0
.end method

.method public search()Ltwitter4j/api/SearchResource;
    .locals 0

    .prologue
    .line 1845
    return-object p0
.end method

.method public searchPlaces(Ltwitter4j/GeoQuery;)Ltwitter4j/ResponseList;
    .locals 3
    .param p1, "query"    # Ltwitter4j/GeoQuery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/GeoQuery;",
            ")",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Place;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1671
    iget-object v0, p0, Ltwitter4j/TwitterImpl;->factory:Ltwitter4j/internal/json/z_T4JInternalFactory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "geo/search.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ltwitter4j/GeoQuery;->asHttpParameterArray()[Ltwitter4j/internal/http/HttpParameter;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Ltwitter4j/internal/json/z_T4JInternalFactory;->createPlaceList(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public searchUsers(Ljava/lang/String;I)Ltwitter4j/ResponseList;
    .locals 7
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "page"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/User;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 868
    iget-object v0, p0, Ltwitter4j/TwitterImpl;->factory:Ltwitter4j/internal/json/z_T4JInternalFactory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "users/search.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ltwitter4j/internal/http/HttpParameter;

    const/4 v3, 0x0

    new-instance v4, Ltwitter4j/internal/http/HttpParameter;

    const-string v5, "q"

    invoke-direct {v4, v5, p1}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ltwitter4j/internal/http/HttpParameter;

    const-string v5, "per_page"

    const/16 v6, 0x14

    invoke-direct {v4, v5, v6}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;I)V

    aput-object v4, v2, v3

    const/4 v3, 0x2

    new-instance v4, Ltwitter4j/internal/http/HttpParameter;

    const-string v5, "page"

    invoke-direct {v4, v5, p2}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;I)V

    aput-object v4, v2, v3

    invoke-direct {p0, v1, v2}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Ltwitter4j/internal/json/z_T4JInternalFactory;->createUserList(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/ResponseList;

    move-result-object v0

    return-object v0
.end method

.method public sendDirectMessage(JLjava/lang/String;)Ltwitter4j/DirectMessage;
    .locals 7
    .param p1, "userId"    # J
    .param p3, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 372
    iget-object v0, p0, Ltwitter4j/TwitterImpl;->factory:Ltwitter4j/internal/json/z_T4JInternalFactory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "direct_messages/new.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ltwitter4j/internal/http/HttpParameter;

    const/4 v3, 0x0

    new-instance v4, Ltwitter4j/internal/http/HttpParameter;

    const-string v5, "user_id"

    invoke-direct {v4, v5, p1, p2}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;J)V

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ltwitter4j/internal/http/HttpParameter;

    const-string v5, "text"

    invoke-direct {v4, v5, p3}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    invoke-direct {p0, v1, v2}, Ltwitter4j/TwitterImpl;->post(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Ltwitter4j/internal/json/z_T4JInternalFactory;->createDirectMessage(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/DirectMessage;

    move-result-object v0

    return-object v0
.end method

.method public sendDirectMessage(Ljava/lang/String;Ljava/lang/String;)Ltwitter4j/DirectMessage;
    .locals 6
    .param p1, "screenName"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 381
    iget-object v0, p0, Ltwitter4j/TwitterImpl;->factory:Ltwitter4j/internal/json/z_T4JInternalFactory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "direct_messages/new.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ltwitter4j/internal/http/HttpParameter;

    const/4 v3, 0x0

    new-instance v4, Ltwitter4j/internal/http/HttpParameter;

    const-string v5, "screen_name"

    invoke-direct {v4, v5, p1}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ltwitter4j/internal/http/HttpParameter;

    const-string v5, "text"

    invoke-direct {v4, v5, p2}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    invoke-direct {p0, v1, v2}, Ltwitter4j/TwitterImpl;->post(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Ltwitter4j/internal/json/z_T4JInternalFactory;->createDirectMessage(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/DirectMessage;

    move-result-object v0

    return-object v0
.end method

.method public showDirectMessage(J)Ltwitter4j/DirectMessage;
    .locals 3
    .param p1, "id"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 354
    iget-object v0, p0, Ltwitter4j/TwitterImpl;->factory:Ltwitter4j/internal/json/z_T4JInternalFactory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "direct_messages/show.json?id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Ltwitter4j/internal/json/z_T4JInternalFactory;->createDirectMessage(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/DirectMessage;

    move-result-object v0

    return-object v0
.end method

.method public showFriendship(JJ)Ltwitter4j/Relationship;
    .locals 7
    .param p1, "sourceId"    # J
    .param p3, "targetId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 555
    iget-object v0, p0, Ltwitter4j/TwitterImpl;->factory:Ltwitter4j/internal/json/z_T4JInternalFactory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "friendships/show.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ltwitter4j/internal/http/HttpParameter;

    const/4 v3, 0x0

    new-instance v4, Ltwitter4j/internal/http/HttpParameter;

    const-string v5, "source_id"

    invoke-direct {v4, v5, p1, p2}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;J)V

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ltwitter4j/internal/http/HttpParameter;

    const-string v5, "target_id"

    invoke-direct {v4, v5, p3, p4}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;J)V

    aput-object v4, v2, v3

    invoke-direct {p0, v1, v2}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Ltwitter4j/internal/json/z_T4JInternalFactory;->createRelationship(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/Relationship;

    move-result-object v0

    return-object v0
.end method

.method public showFriendship(Ljava/lang/String;Ljava/lang/String;)Ltwitter4j/Relationship;
    .locals 4
    .param p1, "sourceScreenName"    # Ljava/lang/String;
    .param p2, "targetScreenName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 564
    iget-object v0, p0, Ltwitter4j/TwitterImpl;->factory:Ltwitter4j/internal/json/z_T4JInternalFactory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "friendships/show.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "source_screen_name"

    const-string v3, "target_screen_name"

    invoke-static {v2, p1, v3, p2}, Ltwitter4j/internal/http/HttpParameter;->getParameterArray(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ltwitter4j/internal/http/HttpParameter;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Ltwitter4j/internal/json/z_T4JInternalFactory;->createRelationship(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/Relationship;

    move-result-object v0

    return-object v0
.end method

.method public showSavedSearch(I)Ltwitter4j/SavedSearch;
    .locals 3
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1616
    iget-object v0, p0, Ltwitter4j/TwitterImpl;->factory:Ltwitter4j/internal/json/z_T4JInternalFactory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "saved_searches/show/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Ltwitter4j/internal/json/z_T4JInternalFactory;->createSavedSearch(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/SavedSearch;

    move-result-object v0

    return-object v0
.end method

.method public showStatus(J)Ltwitter4j/Status;
    .locals 5
    .param p1, "id"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 248
    iget-object v0, p0, Ltwitter4j/TwitterImpl;->factory:Ltwitter4j/internal/json/z_T4JInternalFactory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "statuses/show/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ltwitter4j/internal/http/HttpParameter;

    const/4 v3, 0x0

    iget-object v4, p0, Ltwitter4j/TwitterImpl;->INCLUDE_MY_RETWEET:Ltwitter4j/internal/http/HttpParameter;

    aput-object v4, v2, v3

    invoke-direct {p0, v1, v2}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Ltwitter4j/internal/json/z_T4JInternalFactory;->createStatus(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/Status;

    move-result-object v0

    return-object v0
.end method

.method public showUser(J)Ltwitter4j/User;
    .locals 3
    .param p1, "userId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 852
    iget-object v0, p0, Ltwitter4j/TwitterImpl;->factory:Ltwitter4j/internal/json/z_T4JInternalFactory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "users/show.json?user_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Ltwitter4j/internal/json/z_T4JInternalFactory;->createUser(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/User;

    move-result-object v0

    return-object v0
.end method

.method public showUser(Ljava/lang/String;)Ltwitter4j/User;
    .locals 3
    .param p1, "screenName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 860
    iget-object v0, p0, Ltwitter4j/TwitterImpl;->factory:Ltwitter4j/internal/json/z_T4JInternalFactory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "users/show.json?screen_name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Ltwitter4j/internal/json/z_T4JInternalFactory;->createUser(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/User;

    move-result-object v0

    return-object v0
.end method

.method public showUserList(I)Ltwitter4j/UserList;
    .locals 3
    .param p1, "listId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1570
    iget-object v0, p0, Ltwitter4j/TwitterImpl;->factory:Ltwitter4j/internal/json/z_T4JInternalFactory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "lists/show.json?list_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Ltwitter4j/internal/json/z_T4JInternalFactory;->createAUserList(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/UserList;

    move-result-object v0

    return-object v0
.end method

.method public showUserList(JLjava/lang/String;)Ltwitter4j/UserList;
    .locals 3
    .param p1, "ownerId"    # J
    .param p3, "slug"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1578
    iget-object v0, p0, Ltwitter4j/TwitterImpl;->factory:Ltwitter4j/internal/json/z_T4JInternalFactory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "lists/show.json?owner_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&slug="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Ltwitter4j/internal/json/z_T4JInternalFactory;->createAUserList(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/UserList;

    move-result-object v0

    return-object v0
.end method

.method public showUserList(Ljava/lang/String;Ljava/lang/String;)Ltwitter4j/UserList;
    .locals 3
    .param p1, "ownerScreenName"    # Ljava/lang/String;
    .param p2, "slug"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1588
    iget-object v0, p0, Ltwitter4j/TwitterImpl;->factory:Ltwitter4j/internal/json/z_T4JInternalFactory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "lists/show.json?owner_screen_name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&slug="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Ltwitter4j/internal/json/z_T4JInternalFactory;->createAUserList(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/UserList;

    move-result-object v0

    return-object v0
.end method

.method public showUserListMembership(IJ)Ltwitter4j/User;
    .locals 4
    .param p1, "listId"    # I
    .param p2, "userId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1386
    iget-object v0, p0, Ltwitter4j/TwitterImpl;->factory:Ltwitter4j/internal/json/z_T4JInternalFactory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "lists/members/show.json?list_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&user_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Ltwitter4j/internal/json/z_T4JInternalFactory;->createUser(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/User;

    move-result-object v0

    return-object v0
.end method

.method public showUserListMembership(JLjava/lang/String;J)Ltwitter4j/User;
    .locals 3
    .param p1, "ownerId"    # J
    .param p3, "slug"    # Ljava/lang/String;
    .param p4, "userId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1395
    iget-object v0, p0, Ltwitter4j/TwitterImpl;->factory:Ltwitter4j/internal/json/z_T4JInternalFactory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "lists/members/show.json?owner_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&slug="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&user_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Ltwitter4j/internal/json/z_T4JInternalFactory;->createUser(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/User;

    move-result-object v0

    return-object v0
.end method

.method public showUserListMembership(Ljava/lang/String;Ljava/lang/String;J)Ltwitter4j/User;
    .locals 3
    .param p1, "ownerScreenName"    # Ljava/lang/String;
    .param p2, "slug"    # Ljava/lang/String;
    .param p3, "userId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1405
    iget-object v0, p0, Ltwitter4j/TwitterImpl;->factory:Ltwitter4j/internal/json/z_T4JInternalFactory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "lists/members/show.json?owner_screen_name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&slug="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&user_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Ltwitter4j/internal/json/z_T4JInternalFactory;->createUser(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/User;

    move-result-object v0

    return-object v0
.end method

.method public showUserListSubscription(IJ)Ltwitter4j/User;
    .locals 4
    .param p1, "listId"    # I
    .param p2, "userId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1244
    iget-object v0, p0, Ltwitter4j/TwitterImpl;->factory:Ltwitter4j/internal/json/z_T4JInternalFactory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "lists/subscribers/show.json?list_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&user_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Ltwitter4j/internal/json/z_T4JInternalFactory;->createUser(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/User;

    move-result-object v0

    return-object v0
.end method

.method public showUserListSubscription(JLjava/lang/String;J)Ltwitter4j/User;
    .locals 3
    .param p1, "ownerId"    # J
    .param p3, "slug"    # Ljava/lang/String;
    .param p4, "userId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1253
    iget-object v0, p0, Ltwitter4j/TwitterImpl;->factory:Ltwitter4j/internal/json/z_T4JInternalFactory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "lists/subscribers/show.json?owner_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&slug="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&user_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Ltwitter4j/internal/json/z_T4JInternalFactory;->createUser(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/User;

    move-result-object v0

    return-object v0
.end method

.method public showUserListSubscription(Ljava/lang/String;Ljava/lang/String;J)Ltwitter4j/User;
    .locals 3
    .param p1, "ownerScreenName"    # Ljava/lang/String;
    .param p2, "slug"    # Ljava/lang/String;
    .param p3, "userId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1263
    iget-object v0, p0, Ltwitter4j/TwitterImpl;->factory:Ltwitter4j/internal/json/z_T4JInternalFactory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "lists/subscribers/show.json?owner_screen_name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&slug="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&user_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ltwitter4j/TwitterImpl;->get(Ljava/lang/String;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Ltwitter4j/internal/json/z_T4JInternalFactory;->createUser(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/User;

    move-result-object v0

    return-object v0
.end method

.method public spamReporting()Ltwitter4j/api/SpamReportingResource;
    .locals 0

    .prologue
    .line 1895
    return-object p0
.end method

.method public suggestedUsers()Ltwitter4j/api/SuggestedUsersResources;
    .locals 0

    .prologue
    .line 1865
    return-object p0
.end method

.method public timelines()Ltwitter4j/api/TimelinesResources;
    .locals 0

    .prologue
    .line 1835
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2024
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TwitterImpl{INCLUDE_MY_RETWEET="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->INCLUDE_MY_RETWEET:Ltwitter4j/internal/http/HttpParameter;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public trends()Ltwitter4j/api/TrendsResources;
    .locals 0

    .prologue
    .line 1890
    return-object p0
.end method

.method public tweets()Ltwitter4j/api/TweetsResources;
    .locals 0

    .prologue
    .line 1840
    return-object p0
.end method

.method public updateAccountSettings(Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ltwitter4j/AccountSettings;
    .locals 4
    .param p1, "trend_locationWoeid"    # Ljava/lang/Integer;
    .param p2, "sleep_timeEnabled"    # Ljava/lang/Boolean;
    .param p3, "start_sleepTime"    # Ljava/lang/String;
    .param p4, "end_sleepTime"    # Ljava/lang/String;
    .param p5, "time_zone"    # Ljava/lang/String;
    .param p6, "lang"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 630
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 631
    .local v0, "profile":Ljava/util/List;, "Ljava/util/List<Ltwitter4j/internal/http/HttpParameter;>;"
    if-eqz p1, :cond_0

    .line 632
    new-instance v1, Ltwitter4j/internal/http/HttpParameter;

    const-string v2, "trend_location_woeid"

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {v1, v2, v3}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 634
    :cond_0
    if-eqz p2, :cond_1

    .line 635
    new-instance v1, Ltwitter4j/internal/http/HttpParameter;

    const-string v2, "sleep_time_enabled"

    invoke-virtual {p2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 637
    :cond_1
    if-eqz p3, :cond_2

    .line 638
    new-instance v1, Ltwitter4j/internal/http/HttpParameter;

    const-string v2, "start_sleep_time"

    invoke-direct {v1, v2, p3}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 640
    :cond_2
    if-eqz p4, :cond_3

    .line 641
    new-instance v1, Ltwitter4j/internal/http/HttpParameter;

    const-string v2, "end_sleep_time"

    invoke-direct {v1, v2, p4}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 643
    :cond_3
    if-eqz p5, :cond_4

    .line 644
    new-instance v1, Ltwitter4j/internal/http/HttpParameter;

    const-string v2, "time_zone"

    invoke-direct {v1, v2, p5}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 646
    :cond_4
    if-eqz p6, :cond_5

    .line 647
    new-instance v1, Ltwitter4j/internal/http/HttpParameter;

    const-string v2, "lang"

    invoke-direct {v1, v2, p6}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 649
    :cond_5
    iget-object v2, p0, Ltwitter4j/TwitterImpl;->factory:Ltwitter4j/internal/json/z_T4JInternalFactory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v3}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "account/settings.json"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ltwitter4j/internal/http/HttpParameter;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ltwitter4j/internal/http/HttpParameter;

    invoke-direct {p0, v3, v1}, Ltwitter4j/TwitterImpl;->post(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-interface {v2, v1}, Ltwitter4j/internal/json/z_T4JInternalFactory;->createAccountSettings(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/AccountSettings;

    move-result-object v1

    return-object v1
.end method

.method public updateFriendship(JZZ)Ltwitter4j/Relationship;
    .locals 7
    .param p1, "userId"    # J
    .param p3, "enableDeviceNotification"    # Z
    .param p4, "retweets"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 528
    iget-object v0, p0, Ltwitter4j/TwitterImpl;->factory:Ltwitter4j/internal/json/z_T4JInternalFactory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "friendships/update.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ltwitter4j/internal/http/HttpParameter;

    const/4 v3, 0x0

    new-instance v4, Ltwitter4j/internal/http/HttpParameter;

    const-string v5, "user_id"

    invoke-direct {v4, v5, p1, p2}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;J)V

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ltwitter4j/internal/http/HttpParameter;

    const-string v5, "device"

    invoke-direct {v4, v5, p3}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Z)V

    aput-object v4, v2, v3

    const/4 v3, 0x2

    new-instance v4, Ltwitter4j/internal/http/HttpParameter;

    const-string v5, "retweets"

    invoke-direct {v4, v5, p4}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Z)V

    aput-object v4, v2, v3

    invoke-direct {p0, v1, v2}, Ltwitter4j/TwitterImpl;->post(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Ltwitter4j/internal/json/z_T4JInternalFactory;->createRelationship(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/Relationship;

    move-result-object v0

    return-object v0
.end method

.method public updateFriendship(Ljava/lang/String;ZZ)Ltwitter4j/Relationship;
    .locals 6
    .param p1, "screenName"    # Ljava/lang/String;
    .param p2, "enableDeviceNotification"    # Z
    .param p3, "retweets"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 542
    iget-object v0, p0, Ltwitter4j/TwitterImpl;->factory:Ltwitter4j/internal/json/z_T4JInternalFactory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "friendships/update.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ltwitter4j/internal/http/HttpParameter;

    const/4 v3, 0x0

    new-instance v4, Ltwitter4j/internal/http/HttpParameter;

    const-string v5, "screen_name"

    invoke-direct {v4, v5, p1}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ltwitter4j/internal/http/HttpParameter;

    const-string v5, "device"

    invoke-direct {v4, v5, p2}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Z)V

    aput-object v4, v2, v3

    const/4 v3, 0x2

    new-instance v4, Ltwitter4j/internal/http/HttpParameter;

    const-string v5, "retweets"

    invoke-direct {v4, v5, p2}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Z)V

    aput-object v4, v2, v3

    invoke-direct {p0, v1, v2}, Ltwitter4j/TwitterImpl;->post(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Ltwitter4j/internal/json/z_T4JInternalFactory;->createRelationship(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/Relationship;

    move-result-object v0

    return-object v0
.end method

.method public updateProfile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ltwitter4j/User;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "location"    # Ljava/lang/String;
    .param p4, "description"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 660
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 661
    .local v0, "profile":Ljava/util/List;, "Ljava/util/List<Ltwitter4j/internal/http/HttpParameter;>;"
    const-string v1, "name"

    invoke-direct {p0, v0, v1, p1}, Ltwitter4j/TwitterImpl;->addParameterToList(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    const-string v1, "url"

    invoke-direct {p0, v0, v1, p2}, Ltwitter4j/TwitterImpl;->addParameterToList(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 663
    const-string v1, "location"

    invoke-direct {p0, v0, v1, p3}, Ltwitter4j/TwitterImpl;->addParameterToList(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    const-string v1, "description"

    invoke-direct {p0, v0, v1, p4}, Ltwitter4j/TwitterImpl;->addParameterToList(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    iget-object v2, p0, Ltwitter4j/TwitterImpl;->factory:Ltwitter4j/internal/json/z_T4JInternalFactory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v3}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "account/update_profile.json"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ltwitter4j/internal/http/HttpParameter;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ltwitter4j/internal/http/HttpParameter;

    invoke-direct {p0, v3, v1}, Ltwitter4j/TwitterImpl;->post(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-interface {v2, v1}, Ltwitter4j/internal/json/z_T4JInternalFactory;->createUser(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/User;

    move-result-object v1

    return-object v1
.end method

.method public updateProfileBackgroundImage(Ljava/io/File;Z)Ltwitter4j/User;
    .locals 6
    .param p1, "image"    # Ljava/io/File;
    .param p2, "tile"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 675
    invoke-direct {p0, p1}, Ltwitter4j/TwitterImpl;->checkFileValidity(Ljava/io/File;)V

    .line 676
    iget-object v0, p0, Ltwitter4j/TwitterImpl;->factory:Ltwitter4j/internal/json/z_T4JInternalFactory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "account/update_profile_background_image.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ltwitter4j/internal/http/HttpParameter;

    const/4 v3, 0x0

    new-instance v4, Ltwitter4j/internal/http/HttpParameter;

    const-string v5, "image"

    invoke-direct {v4, v5, p1}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/io/File;)V

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ltwitter4j/internal/http/HttpParameter;

    const-string v5, "tile"

    invoke-direct {v4, v5, p2}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Z)V

    aput-object v4, v2, v3

    invoke-direct {p0, v1, v2}, Ltwitter4j/TwitterImpl;->post(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Ltwitter4j/internal/json/z_T4JInternalFactory;->createUser(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/User;

    move-result-object v0

    return-object v0
.end method

.method public updateProfileBackgroundImage(Ljava/io/InputStream;Z)Ltwitter4j/User;
    .locals 7
    .param p1, "image"    # Ljava/io/InputStream;
    .param p2, "tile"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 686
    iget-object v0, p0, Ltwitter4j/TwitterImpl;->factory:Ltwitter4j/internal/json/z_T4JInternalFactory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "account/update_profile_background_image.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ltwitter4j/internal/http/HttpParameter;

    const/4 v3, 0x0

    new-instance v4, Ltwitter4j/internal/http/HttpParameter;

    const-string v5, "image"

    const-string v6, "image"

    invoke-direct {v4, v5, v6, p1}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ltwitter4j/internal/http/HttpParameter;

    const-string v5, "tile"

    invoke-direct {v4, v5, p2}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Z)V

    aput-object v4, v2, v3

    invoke-direct {p0, v1, v2}, Ltwitter4j/TwitterImpl;->post(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Ltwitter4j/internal/json/z_T4JInternalFactory;->createUser(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/User;

    move-result-object v0

    return-object v0
.end method

.method public updateProfileBanner(Ljava/io/File;)V
    .locals 5
    .param p1, "image"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 919
    invoke-direct {p0, p1}, Ltwitter4j/TwitterImpl;->checkFileValidity(Ljava/io/File;)V

    .line 920
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "account/update_profile_banner.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ltwitter4j/internal/http/HttpParameter;

    const/4 v2, 0x0

    new-instance v3, Ltwitter4j/internal/http/HttpParameter;

    const-string v4, "banner"

    invoke-direct {v3, v4, p1}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/io/File;)V

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Ltwitter4j/TwitterImpl;->post(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;

    .line 923
    return-void
.end method

.method public updateProfileBanner(Ljava/io/InputStream;)V
    .locals 6
    .param p1, "image"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 930
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v1}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "account/update_profile_banner.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ltwitter4j/internal/http/HttpParameter;

    const/4 v2, 0x0

    new-instance v3, Ltwitter4j/internal/http/HttpParameter;

    const-string v4, "banner"

    const-string v5, "banner"

    invoke-direct {v3, v4, v5, p1}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Ltwitter4j/TwitterImpl;->post(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;

    .line 933
    return-void
.end method

.method public updateProfileColors(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ltwitter4j/User;
    .locals 4
    .param p1, "profileBackgroundColor"    # Ljava/lang/String;
    .param p2, "profileTextColor"    # Ljava/lang/String;
    .param p3, "profileLinkColor"    # Ljava/lang/String;
    .param p4, "profileSidebarFillColor"    # Ljava/lang/String;
    .param p5, "profileSidebarBorderColor"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 701
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 702
    .local v0, "colors":Ljava/util/List;, "Ljava/util/List<Ltwitter4j/internal/http/HttpParameter;>;"
    const-string v1, "profile_background_color"

    invoke-direct {p0, v0, v1, p1}, Ltwitter4j/TwitterImpl;->addParameterToList(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    const-string v1, "profile_text_color"

    invoke-direct {p0, v0, v1, p2}, Ltwitter4j/TwitterImpl;->addParameterToList(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    const-string v1, "profile_link_color"

    invoke-direct {p0, v0, v1, p3}, Ltwitter4j/TwitterImpl;->addParameterToList(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    const-string v1, "profile_sidebar_fill_color"

    invoke-direct {p0, v0, v1, p4}, Ltwitter4j/TwitterImpl;->addParameterToList(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 710
    const-string v1, "profile_sidebar_border_color"

    invoke-direct {p0, v0, v1, p5}, Ltwitter4j/TwitterImpl;->addParameterToList(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 712
    iget-object v2, p0, Ltwitter4j/TwitterImpl;->factory:Ltwitter4j/internal/json/z_T4JInternalFactory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v3}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "account/update_profile_colors.json"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ltwitter4j/internal/http/HttpParameter;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ltwitter4j/internal/http/HttpParameter;

    invoke-direct {p0, v3, v1}, Ltwitter4j/TwitterImpl;->post(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-interface {v2, v1}, Ltwitter4j/internal/json/z_T4JInternalFactory;->createUser(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/User;

    move-result-object v1

    return-object v1
.end method

.method public updateProfileImage(Ljava/io/File;)Ltwitter4j/User;
    .locals 6
    .param p1, "image"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 729
    invoke-direct {p0, p1}, Ltwitter4j/TwitterImpl;->checkFileValidity(Ljava/io/File;)V

    .line 730
    iget-object v0, p0, Ltwitter4j/TwitterImpl;->factory:Ltwitter4j/internal/json/z_T4JInternalFactory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "account/update_profile_image.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ltwitter4j/internal/http/HttpParameter;

    const/4 v3, 0x0

    new-instance v4, Ltwitter4j/internal/http/HttpParameter;

    const-string v5, "image"

    invoke-direct {v4, v5, p1}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/io/File;)V

    aput-object v4, v2, v3

    invoke-direct {p0, v1, v2}, Ltwitter4j/TwitterImpl;->post(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Ltwitter4j/internal/json/z_T4JInternalFactory;->createUser(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/User;

    move-result-object v0

    return-object v0
.end method

.method public updateProfileImage(Ljava/io/InputStream;)Ltwitter4j/User;
    .locals 7
    .param p1, "image"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 740
    iget-object v0, p0, Ltwitter4j/TwitterImpl;->factory:Ltwitter4j/internal/json/z_T4JInternalFactory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "account/update_profile_image.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ltwitter4j/internal/http/HttpParameter;

    const/4 v3, 0x0

    new-instance v4, Ltwitter4j/internal/http/HttpParameter;

    const-string v5, "image"

    const-string v6, "image"

    invoke-direct {v4, v5, v6, p1}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    aput-object v4, v2, v3

    invoke-direct {p0, v1, v2}, Ltwitter4j/TwitterImpl;->post(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Ltwitter4j/internal/json/z_T4JInternalFactory;->createUser(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/User;

    move-result-object v0

    return-object v0
.end method

.method public updateStatus(Ljava/lang/String;)Ltwitter4j/Status;
    .locals 6
    .param p1, "status"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 264
    iget-object v0, p0, Ltwitter4j/TwitterImpl;->factory:Ltwitter4j/internal/json/z_T4JInternalFactory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "statuses/update.json"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ltwitter4j/internal/http/HttpParameter;

    const/4 v3, 0x0

    new-instance v4, Ltwitter4j/internal/http/HttpParameter;

    const-string v5, "status"

    invoke-direct {v4, v5, p1}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    invoke-direct {p0, v1, v2}, Ltwitter4j/TwitterImpl;->post(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v1

    invoke-interface {v0, v1}, Ltwitter4j/internal/json/z_T4JInternalFactory;->createStatus(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/Status;

    move-result-object v0

    return-object v0
.end method

.method public updateStatus(Ltwitter4j/StatusUpdate;)Ltwitter4j/Status;
    .locals 3
    .param p1, "status"    # Ltwitter4j/StatusUpdate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 273
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterImpl;->conf:Ltwitter4j/conf/Configuration;

    invoke-interface {v2}, Ltwitter4j/conf/Configuration;->getRestBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ltwitter4j/StatusUpdate;->isWithMedia()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "statuses/update_with_media.json"

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 275
    .local v0, "url":Ljava/lang/String;
    iget-object v1, p0, Ltwitter4j/TwitterImpl;->factory:Ltwitter4j/internal/json/z_T4JInternalFactory;

    invoke-virtual {p1}, Ltwitter4j/StatusUpdate;->asHttpParameterArray()[Ltwitter4j/internal/http/HttpParameter;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Ltwitter4j/TwitterImpl;->post(Ljava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/internal/http/HttpResponse;

    move-result-object v2

    invoke-interface {v1, v2}, Ltwitter4j/internal/json/z_T4JInternalFactory;->createStatus(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/Status;

    move-result-object v1

    return-object v1

    .line 273
    .end local v0    # "url":Ljava/lang/String;
    :cond_0
    const-string v1, "statuses/update.json"

    goto :goto_0
.end method

.method public updateUserList(ILjava/lang/String;ZLjava/lang/String;)Ltwitter4j/UserList;
    .locals 4
    .param p1, "listId"    # I
    .param p2, "newListName"    # Ljava/lang/String;
    .param p3, "isPublicList"    # Z
    .param p4, "newDescription"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1514
    const/4 v0, 0x1

    new-array v0, v0, [Ltwitter4j/internal/http/HttpParameter;

    const/4 v1, 0x0

    new-instance v2, Ltwitter4j/internal/http/HttpParameter;

    const-string v3, "list_id"

    invoke-direct {v2, v3, p1}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    invoke-direct {p0, p2, p3, p4, v0}, Ltwitter4j/TwitterImpl;->updateUserList(Ljava/lang/String;ZLjava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/UserList;

    move-result-object v0

    return-object v0
.end method

.method public updateUserList(JLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Ltwitter4j/UserList;
    .locals 5
    .param p1, "ownerId"    # J
    .param p3, "slug"    # Ljava/lang/String;
    .param p4, "newListName"    # Ljava/lang/String;
    .param p5, "isPublicList"    # Z
    .param p6, "newDescription"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1522
    const/4 v0, 0x2

    new-array v0, v0, [Ltwitter4j/internal/http/HttpParameter;

    const/4 v1, 0x0

    new-instance v2, Ltwitter4j/internal/http/HttpParameter;

    const-string v3, "owner_id"

    invoke-direct {v2, v3, p1, p2}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;J)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Ltwitter4j/internal/http/HttpParameter;

    const-string v3, "slug"

    invoke-direct {v2, v3, p3}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    invoke-direct {p0, p4, p5, p6, v0}, Ltwitter4j/TwitterImpl;->updateUserList(Ljava/lang/String;ZLjava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/UserList;

    move-result-object v0

    return-object v0
.end method

.method public updateUserList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Ltwitter4j/UserList;
    .locals 4
    .param p1, "ownerScreenName"    # Ljava/lang/String;
    .param p2, "slug"    # Ljava/lang/String;
    .param p3, "newListName"    # Ljava/lang/String;
    .param p4, "isPublicList"    # Z
    .param p5, "newDescription"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1533
    const/4 v0, 0x2

    new-array v0, v0, [Ltwitter4j/internal/http/HttpParameter;

    const/4 v1, 0x0

    new-instance v2, Ltwitter4j/internal/http/HttpParameter;

    const-string v3, "owner_screen_name"

    invoke-direct {v2, v3, p1}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Ltwitter4j/internal/http/HttpParameter;

    const-string v3, "slug"

    invoke-direct {v2, v3, p2}, Ltwitter4j/internal/http/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    invoke-direct {p0, p3, p4, p5, v0}, Ltwitter4j/TwitterImpl;->updateUserList(Ljava/lang/String;ZLjava/lang/String;[Ltwitter4j/internal/http/HttpParameter;)Ltwitter4j/UserList;

    move-result-object v0

    return-object v0
.end method

.method public users()Ltwitter4j/api/UsersResources;
    .locals 0

    .prologue
    .line 1860
    return-object p0
.end method

.method public verifyCredentials()Ltwitter4j/User;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 619
    invoke-super {p0}, Ltwitter4j/TwitterBaseImpl;->fillInIDAndScreenName()Ltwitter4j/User;

    move-result-object v0

    return-object v0
.end method
