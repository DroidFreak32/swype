.class public Lcom/google/api/client/http/HttpBackOffIOExceptionHandler;
.super Ljava/lang/Object;
.source "HttpBackOffIOExceptionHandler.java"

# interfaces
.implements Lcom/google/api/client/http/HttpIOExceptionHandler;


# instance fields
.field private final backOff:Lcom/google/api/client/util/BackOff;

.field private sleeper:Lcom/google/api/client/util/Sleeper;


# direct methods
.method public constructor <init>(Lcom/google/api/client/util/BackOff;)V
    .registers 3
    .param p1, "backOff"    # Lcom/google/api/client/util/BackOff;

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    sget-object v0, Lcom/google/api/client/util/Sleeper;->DEFAULT:Lcom/google/api/client/util/Sleeper;

    iput-object v0, p0, Lcom/google/api/client/http/HttpBackOffIOExceptionHandler;->sleeper:Lcom/google/api/client/util/Sleeper;

    .line 1127
    invoke-static {p1}, Lcom/google/api/client/repackaged/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 70
    check-cast v0, Lcom/google/api/client/util/BackOff;

    iput-object v0, p0, Lcom/google/api/client/http/HttpBackOffIOExceptionHandler;->backOff:Lcom/google/api/client/util/BackOff;

    .line 71
    return-void
.end method


# virtual methods
.method public final getBackOff()Lcom/google/api/client/util/BackOff;
    .registers 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/api/client/http/HttpBackOffIOExceptionHandler;->backOff:Lcom/google/api/client/util/BackOff;

    return-object v0
.end method

.method public final getSleeper()Lcom/google/api/client/util/Sleeper;
    .registers 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/api/client/http/HttpBackOffIOExceptionHandler;->sleeper:Lcom/google/api/client/util/Sleeper;

    return-object v0
.end method

.method public handleIOException(Lcom/google/api/client/http/HttpRequest;Z)Z
    .registers 6
    .param p1, "request"    # Lcom/google/api/client/http/HttpRequest;
    .param p2, "supportsRetry"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 109
    if-nez p2, :cond_4

    .line 115
    :goto_3
    return v0

    .line 113
    :cond_4
    :try_start_4
    iget-object v1, p0, Lcom/google/api/client/http/HttpBackOffIOExceptionHandler;->sleeper:Lcom/google/api/client/util/Sleeper;

    iget-object v2, p0, Lcom/google/api/client/http/HttpBackOffIOExceptionHandler;->backOff:Lcom/google/api/client/util/BackOff;

    invoke-static {v1, v2}, Lcom/google/api/client/util/BackOffUtils;->next(Lcom/google/api/client/util/Sleeper;Lcom/google/api/client/util/BackOff;)Z
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_b} :catch_d

    move-result v0

    goto :goto_3

    .line 115
    :catch_d
    move-exception v1

    goto :goto_3
.end method

.method public setSleeper(Lcom/google/api/client/util/Sleeper;)Lcom/google/api/client/http/HttpBackOffIOExceptionHandler;
    .registers 3
    .param p1, "sleeper"    # Lcom/google/api/client/util/Sleeper;

    .prologue
    .line 96
    .line 2127
    invoke-static {p1}, Lcom/google/api/client/repackaged/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 96
    check-cast v0, Lcom/google/api/client/util/Sleeper;

    iput-object v0, p0, Lcom/google/api/client/http/HttpBackOffIOExceptionHandler;->sleeper:Lcom/google/api/client/util/Sleeper;

    .line 97
    return-object p0
.end method
