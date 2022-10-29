.class public Lcom/google/api/client/http/HttpResponseException;
.super Ljava/io/IOException;
.source "HttpResponseException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/http/HttpResponseException$Builder;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x1a083fdabb32a37bL


# instance fields
.field private final content:Ljava/lang/String;

.field private final transient headers:Lcom/google/api/client/http/HttpHeaders;

.field private final statusCode:I

.field private final statusMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/api/client/http/HttpResponse;)V
    .registers 3
    .param p1, "response"    # Lcom/google/api/client/http/HttpResponse;

    .prologue
    .line 68
    new-instance v0, Lcom/google/api/client/http/HttpResponseException$Builder;

    invoke-direct {v0, p1}, Lcom/google/api/client/http/HttpResponseException$Builder;-><init>(Lcom/google/api/client/http/HttpResponse;)V

    invoke-direct {p0, v0}, Lcom/google/api/client/http/HttpResponseException;-><init>(Lcom/google/api/client/http/HttpResponseException$Builder;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Lcom/google/api/client/http/HttpResponseException$Builder;)V
    .registers 3
    .param p1, "builder"    # Lcom/google/api/client/http/HttpResponseException$Builder;

    .prologue
    .line 77
    iget-object v0, p1, Lcom/google/api/client/http/HttpResponseException$Builder;->message:Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 78
    iget v0, p1, Lcom/google/api/client/http/HttpResponseException$Builder;->statusCode:I

    iput v0, p0, Lcom/google/api/client/http/HttpResponseException;->statusCode:I

    .line 79
    iget-object v0, p1, Lcom/google/api/client/http/HttpResponseException$Builder;->statusMessage:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/api/client/http/HttpResponseException;->statusMessage:Ljava/lang/String;

    .line 80
    iget-object v0, p1, Lcom/google/api/client/http/HttpResponseException$Builder;->headers:Lcom/google/api/client/http/HttpHeaders;

    iput-object v0, p0, Lcom/google/api/client/http/HttpResponseException;->headers:Lcom/google/api/client/http/HttpHeaders;

    .line 81
    iget-object v0, p1, Lcom/google/api/client/http/HttpResponseException$Builder;->content:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/api/client/http/HttpResponseException;->content:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public static computeMessageBuffer(Lcom/google/api/client/http/HttpResponse;)Ljava/lang/StringBuilder;
    .registers 5
    .param p0, "response"    # Lcom/google/api/client/http/HttpResponse;

    .prologue
    .line 294
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 295
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/google/api/client/http/HttpResponse;->getStatusCode()I

    move-result v1

    .line 296
    .local v1, "statusCode":I
    if-eqz v1, :cond_e

    .line 297
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 299
    :cond_e
    invoke-virtual {p0}, Lcom/google/api/client/http/HttpResponse;->getStatusMessage()Ljava/lang/String;

    move-result-object v2

    .line 300
    .local v2, "statusMessage":Ljava/lang/String;
    if-eqz v2, :cond_1e

    .line 301
    if-eqz v1, :cond_1b

    .line 302
    const/16 v3, 0x20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 304
    :cond_1b
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    :cond_1e
    return-object v0
.end method


# virtual methods
.method public final getContent()Ljava/lang/String;
    .registers 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/google/api/client/http/HttpResponseException;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getHeaders()Lcom/google/api/client/http/HttpHeaders;
    .registers 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/google/api/client/http/HttpResponseException;->headers:Lcom/google/api/client/http/HttpHeaders;

    return-object v0
.end method

.method public final getStatusCode()I
    .registers 2

    .prologue
    .line 100
    iget v0, p0, Lcom/google/api/client/http/HttpResponseException;->statusCode:I

    return v0
.end method

.method public final getStatusMessage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/google/api/client/http/HttpResponseException;->statusMessage:Ljava/lang/String;

    return-object v0
.end method

.method public final isSuccessStatusCode()Z
    .registers 2

    .prologue
    .line 91
    iget v0, p0, Lcom/google/api/client/http/HttpResponseException;->statusCode:I

    invoke-static {v0}, Lcom/google/api/client/http/HttpStatusCodes;->isSuccess(I)Z

    move-result v0

    return v0
.end method
