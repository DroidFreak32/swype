.class Lcom/google/api/client/googleapis/media/MediaUploadErrorHandler;
.super Ljava/lang/Object;
.source "MediaUploadErrorHandler.java"

# interfaces
.implements Lcom/google/api/client/http/HttpIOExceptionHandler;
.implements Lcom/google/api/client/http/HttpUnsuccessfulResponseHandler;


# static fields
.field static final LOGGER:Ljava/util/logging/Logger;


# instance fields
.field private final originalIOExceptionHandler:Lcom/google/api/client/http/HttpIOExceptionHandler;

.field private final originalUnsuccessfulHandler:Lcom/google/api/client/http/HttpUnsuccessfulResponseHandler;

.field private final uploader:Lcom/google/api/client/googleapis/media/MediaHttpUploader;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 37
    const-class v0, Lcom/google/api/client/googleapis/media/MediaUploadErrorHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/api/client/googleapis/media/MediaUploadErrorHandler;->LOGGER:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/google/api/client/googleapis/media/MediaHttpUploader;Lcom/google/api/client/http/HttpRequest;)V
    .registers 4
    .param p1, "uploader"    # Lcom/google/api/client/googleapis/media/MediaHttpUploader;
    .param p2, "request"    # Lcom/google/api/client/http/HttpRequest;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1127
    invoke-static {p1}, Lcom/google/api/client/repackaged/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 52
    check-cast v0, Lcom/google/api/client/googleapis/media/MediaHttpUploader;

    iput-object v0, p0, Lcom/google/api/client/googleapis/media/MediaUploadErrorHandler;->uploader:Lcom/google/api/client/googleapis/media/MediaHttpUploader;

    .line 53
    invoke-virtual {p2}, Lcom/google/api/client/http/HttpRequest;->getIOExceptionHandler()Lcom/google/api/client/http/HttpIOExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/googleapis/media/MediaUploadErrorHandler;->originalIOExceptionHandler:Lcom/google/api/client/http/HttpIOExceptionHandler;

    .line 54
    invoke-virtual {p2}, Lcom/google/api/client/http/HttpRequest;->getUnsuccessfulResponseHandler()Lcom/google/api/client/http/HttpUnsuccessfulResponseHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/googleapis/media/MediaUploadErrorHandler;->originalUnsuccessfulHandler:Lcom/google/api/client/http/HttpUnsuccessfulResponseHandler;

    .line 56
    invoke-virtual {p2, p0}, Lcom/google/api/client/http/HttpRequest;->setIOExceptionHandler(Lcom/google/api/client/http/HttpIOExceptionHandler;)Lcom/google/api/client/http/HttpRequest;

    .line 57
    invoke-virtual {p2, p0}, Lcom/google/api/client/http/HttpRequest;->setUnsuccessfulResponseHandler(Lcom/google/api/client/http/HttpUnsuccessfulResponseHandler;)Lcom/google/api/client/http/HttpRequest;

    .line 58
    return-void
.end method


# virtual methods
.method public handleIOException(Lcom/google/api/client/http/HttpRequest;Z)Z
    .registers 8
    .param p1, "request"    # Lcom/google/api/client/http/HttpRequest;
    .param p2, "supportsRetry"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 61
    iget-object v2, p0, Lcom/google/api/client/googleapis/media/MediaUploadErrorHandler;->originalIOExceptionHandler:Lcom/google/api/client/http/HttpIOExceptionHandler;

    if-eqz v2, :cond_15

    iget-object v2, p0, Lcom/google/api/client/googleapis/media/MediaUploadErrorHandler;->originalIOExceptionHandler:Lcom/google/api/client/http/HttpIOExceptionHandler;

    invoke-interface {v2, p1, p2}, Lcom/google/api/client/http/HttpIOExceptionHandler;->handleIOException(Lcom/google/api/client/http/HttpRequest;Z)Z

    move-result v2

    if-eqz v2, :cond_15

    const/4 v1, 0x1

    .line 66
    .local v1, "handled":Z
    :goto_d
    if-eqz v1, :cond_14

    .line 68
    :try_start_f
    iget-object v2, p0, Lcom/google/api/client/googleapis/media/MediaUploadErrorHandler;->uploader:Lcom/google/api/client/googleapis/media/MediaHttpUploader;

    invoke-virtual {v2}, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->serverErrorCallback()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_14} :catch_17

    .line 73
    :cond_14
    :goto_14
    return v1

    .line 61
    .end local v1    # "handled":Z
    :cond_15
    const/4 v1, 0x0

    goto :goto_d

    .line 69
    .restart local v1    # "handled":Z
    :catch_17
    move-exception v0

    .line 70
    .local v0, "e":Ljava/io/IOException;
    sget-object v2, Lcom/google/api/client/googleapis/media/MediaUploadErrorHandler;->LOGGER:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string/jumbo v4, "exception thrown while calling server callback"

    invoke-virtual {v2, v3, v4, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_14
.end method

.method public handleResponse(Lcom/google/api/client/http/HttpRequest;Lcom/google/api/client/http/HttpResponse;Z)Z
    .registers 9
    .param p1, "request"    # Lcom/google/api/client/http/HttpRequest;
    .param p2, "response"    # Lcom/google/api/client/http/HttpResponse;
    .param p3, "supportsRetry"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 78
    iget-object v2, p0, Lcom/google/api/client/googleapis/media/MediaUploadErrorHandler;->originalUnsuccessfulHandler:Lcom/google/api/client/http/HttpUnsuccessfulResponseHandler;

    if-eqz v2, :cond_20

    iget-object v2, p0, Lcom/google/api/client/googleapis/media/MediaUploadErrorHandler;->originalUnsuccessfulHandler:Lcom/google/api/client/http/HttpUnsuccessfulResponseHandler;

    invoke-interface {v2, p1, p2, p3}, Lcom/google/api/client/http/HttpUnsuccessfulResponseHandler;->handleResponse(Lcom/google/api/client/http/HttpRequest;Lcom/google/api/client/http/HttpResponse;Z)Z

    move-result v2

    if-eqz v2, :cond_20

    const/4 v1, 0x1

    .line 83
    .local v1, "handled":Z
    :goto_d
    if-eqz v1, :cond_1f

    if-eqz p3, :cond_1f

    invoke-virtual {p2}, Lcom/google/api/client/http/HttpResponse;->getStatusCode()I

    move-result v2

    div-int/lit8 v2, v2, 0x64

    const/4 v3, 0x5

    if-ne v2, v3, :cond_1f

    .line 85
    :try_start_1a
    iget-object v2, p0, Lcom/google/api/client/googleapis/media/MediaUploadErrorHandler;->uploader:Lcom/google/api/client/googleapis/media/MediaHttpUploader;

    invoke-virtual {v2}, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->serverErrorCallback()V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1f} :catch_22

    .line 90
    :cond_1f
    :goto_1f
    return v1

    .line 78
    .end local v1    # "handled":Z
    :cond_20
    const/4 v1, 0x0

    goto :goto_d

    .line 86
    .restart local v1    # "handled":Z
    :catch_22
    move-exception v0

    .line 87
    .local v0, "e":Ljava/io/IOException;
    sget-object v2, Lcom/google/api/client/googleapis/media/MediaUploadErrorHandler;->LOGGER:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string/jumbo v4, "exception thrown while calling server callback"

    invoke-virtual {v2, v3, v4, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1f
.end method
