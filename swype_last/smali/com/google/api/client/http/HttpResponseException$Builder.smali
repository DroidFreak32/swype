.class public Lcom/google/api/client/http/HttpResponseException$Builder;
.super Ljava/lang/Object;
.source "HttpResponseException.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/client/http/HttpResponseException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field content:Ljava/lang/String;

.field headers:Lcom/google/api/client/http/HttpHeaders;

.field message:Ljava/lang/String;

.field statusCode:I

.field statusMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/google/api/client/http/HttpHeaders;)V
    .registers 4
    .param p1, "statusCode"    # I
    .param p2, "statusMessage"    # Ljava/lang/String;
    .param p3, "headers"    # Lcom/google/api/client/http/HttpHeaders;

    .prologue
    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    invoke-virtual {p0, p1}, Lcom/google/api/client/http/HttpResponseException$Builder;->setStatusCode(I)Lcom/google/api/client/http/HttpResponseException$Builder;

    .line 164
    invoke-virtual {p0, p2}, Lcom/google/api/client/http/HttpResponseException$Builder;->setStatusMessage(Ljava/lang/String;)Lcom/google/api/client/http/HttpResponseException$Builder;

    .line 165
    invoke-virtual {p0, p3}, Lcom/google/api/client/http/HttpResponseException$Builder;->setHeaders(Lcom/google/api/client/http/HttpHeaders;)Lcom/google/api/client/http/HttpResponseException$Builder;

    .line 166
    return-void
.end method

.method public constructor <init>(Lcom/google/api/client/http/HttpResponse;)V
    .registers 6
    .param p1, "response"    # Lcom/google/api/client/http/HttpResponse;

    .prologue
    .line 172
    invoke-virtual {p1}, Lcom/google/api/client/http/HttpResponse;->getStatusCode()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/api/client/http/HttpResponse;->getStatusMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/api/client/http/HttpResponse;->getHeaders()Lcom/google/api/client/http/HttpHeaders;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/google/api/client/http/HttpResponseException$Builder;-><init>(ILjava/lang/String;Lcom/google/api/client/http/HttpHeaders;)V

    .line 175
    :try_start_f
    invoke-virtual {p1}, Lcom/google/api/client/http/HttpResponse;->parseAsString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/api/client/http/HttpResponseException$Builder;->content:Ljava/lang/String;

    .line 176
    iget-object v1, p0, Lcom/google/api/client/http/HttpResponseException$Builder;->content:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_20

    .line 177
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/api/client/http/HttpResponseException$Builder;->content:Ljava/lang/String;
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_20} :catch_3a

    .line 184
    :cond_20
    :goto_20
    invoke-static {p1}, Lcom/google/api/client/http/HttpResponseException;->computeMessageBuffer(Lcom/google/api/client/http/HttpResponse;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 185
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/google/api/client/http/HttpResponseException$Builder;->content:Ljava/lang/String;

    if-eqz v1, :cond_33

    .line 186
    sget-object v1, Lcom/google/api/client/util/StringUtils;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/api/client/http/HttpResponseException$Builder;->content:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    :cond_33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/api/client/http/HttpResponseException$Builder;->message:Ljava/lang/String;

    .line 189
    return-void

    .line 181
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    :catch_3a
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_20
.end method


# virtual methods
.method public build()Lcom/google/api/client/http/HttpResponseException;
    .registers 2

    .prologue
    .line 284
    new-instance v0, Lcom/google/api/client/http/HttpResponseException;

    invoke-direct {v0, p0}, Lcom/google/api/client/http/HttpResponseException;-><init>(Lcom/google/api/client/http/HttpResponseException$Builder;)V

    return-object v0
.end method

.method public final getContent()Ljava/lang/String;
    .registers 2

    .prologue
    .line 266
    iget-object v0, p0, Lcom/google/api/client/http/HttpResponseException$Builder;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getHeaders()Lcom/google/api/client/http/HttpHeaders;
    .registers 2

    .prologue
    .line 248
    iget-object v0, p0, Lcom/google/api/client/http/HttpResponseException$Builder;->headers:Lcom/google/api/client/http/HttpHeaders;

    return-object v0
.end method

.method public final getMessage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/google/api/client/http/HttpResponseException$Builder;->message:Ljava/lang/String;

    return-object v0
.end method

.method public final getStatusCode()I
    .registers 2

    .prologue
    .line 211
    iget v0, p0, Lcom/google/api/client/http/HttpResponseException$Builder;->statusCode:I

    return v0
.end method

.method public final getStatusMessage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 230
    iget-object v0, p0, Lcom/google/api/client/http/HttpResponseException$Builder;->statusMessage:Ljava/lang/String;

    return-object v0
.end method

.method public setContent(Ljava/lang/String;)Lcom/google/api/client/http/HttpResponseException$Builder;
    .registers 2
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 278
    iput-object p1, p0, Lcom/google/api/client/http/HttpResponseException$Builder;->content:Ljava/lang/String;

    .line 279
    return-object p0
.end method

.method public setHeaders(Lcom/google/api/client/http/HttpHeaders;)Lcom/google/api/client/http/HttpResponseException$Builder;
    .registers 3
    .param p1, "headers"    # Lcom/google/api/client/http/HttpHeaders;

    .prologue
    .line 260
    .line 1127
    invoke-static {p1}, Lcom/google/api/client/repackaged/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 260
    check-cast v0, Lcom/google/api/client/http/HttpHeaders;

    iput-object v0, p0, Lcom/google/api/client/http/HttpResponseException$Builder;->headers:Lcom/google/api/client/http/HttpHeaders;

    .line 261
    return-object p0
.end method

.method public setMessage(Ljava/lang/String;)Lcom/google/api/client/http/HttpResponseException$Builder;
    .registers 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 205
    iput-object p1, p0, Lcom/google/api/client/http/HttpResponseException$Builder;->message:Ljava/lang/String;

    .line 206
    return-object p0
.end method

.method public setStatusCode(I)Lcom/google/api/client/http/HttpResponseException$Builder;
    .registers 3
    .param p1, "statusCode"    # I

    .prologue
    .line 223
    if-ltz p1, :cond_9

    const/4 v0, 0x1

    .line 1037
    :goto_3
    invoke-static {v0}, Lcom/google/api/client/repackaged/com/google/common/base/Preconditions;->checkArgument(Z)V

    .line 224
    iput p1, p0, Lcom/google/api/client/http/HttpResponseException$Builder;->statusCode:I

    .line 225
    return-object p0

    .line 223
    :cond_9
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public setStatusMessage(Ljava/lang/String;)Lcom/google/api/client/http/HttpResponseException$Builder;
    .registers 2
    .param p1, "statusMessage"    # Ljava/lang/String;

    .prologue
    .line 242
    iput-object p1, p0, Lcom/google/api/client/http/HttpResponseException$Builder;->statusMessage:Ljava/lang/String;

    .line 243
    return-object p0
.end method
