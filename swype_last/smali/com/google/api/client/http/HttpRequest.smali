.class public final Lcom/google/api/client/http/HttpRequest;
.super Ljava/lang/Object;
.source "HttpRequest.java"


# static fields
.field public static final DEFAULT_NUMBER_OF_RETRIES:I = 0xa

.field public static final USER_AGENT_SUFFIX:Ljava/lang/String; = "Google-HTTP-Java-Client/1.22.0 (gzip)"

.field public static final VERSION:Ljava/lang/String; = "1.22.0"


# instance fields
.field private backOffPolicy:Lcom/google/api/client/http/BackOffPolicy;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private connectTimeout:I

.field private content:Lcom/google/api/client/http/HttpContent;

.field private contentLoggingLimit:I

.field private curlLoggingEnabled:Z

.field private encoding:Lcom/google/api/client/http/HttpEncoding;

.field private executeInterceptor:Lcom/google/api/client/http/HttpExecuteInterceptor;

.field private followRedirects:Z

.field private headers:Lcom/google/api/client/http/HttpHeaders;

.field private ioExceptionHandler:Lcom/google/api/client/http/HttpIOExceptionHandler;

.field private loggingEnabled:Z

.field private numRetries:I

.field private objectParser:Lcom/google/api/client/util/ObjectParser;

.field private readTimeout:I

.field private requestMethod:Ljava/lang/String;

.field private responseHeaders:Lcom/google/api/client/http/HttpHeaders;

.field private responseInterceptor:Lcom/google/api/client/http/HttpResponseInterceptor;

.field private retryOnExecuteIOException:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private sleeper:Lcom/google/api/client/util/Sleeper;

.field private suppressUserAgentSuffix:Z

.field private throwExceptionOnExecuteError:Z

.field private final transport:Lcom/google/api/client/http/HttpTransport;

.field private unsuccessfulResponseHandler:Lcom/google/api/client/http/HttpUnsuccessfulResponseHandler;

.field private url:Lcom/google/api/client/http/GenericUrl;


# direct methods
.method constructor <init>(Lcom/google/api/client/http/HttpTransport;Ljava/lang/String;)V
    .registers 6
    .param p1, "transport"    # Lcom/google/api/client/http/HttpTransport;
    .param p2, "requestMethod"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x4e20

    const/4 v1, 0x1

    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Lcom/google/api/client/http/HttpHeaders;

    invoke-direct {v0}, Lcom/google/api/client/http/HttpHeaders;-><init>()V

    iput-object v0, p0, Lcom/google/api/client/http/HttpRequest;->headers:Lcom/google/api/client/http/HttpHeaders;

    .line 102
    new-instance v0, Lcom/google/api/client/http/HttpHeaders;

    invoke-direct {v0}, Lcom/google/api/client/http/HttpHeaders;-><init>()V

    iput-object v0, p0, Lcom/google/api/client/http/HttpRequest;->responseHeaders:Lcom/google/api/client/http/HttpHeaders;

    .line 110
    const/16 v0, 0xa

    iput v0, p0, Lcom/google/api/client/http/HttpRequest;->numRetries:I

    .line 132
    const/16 v0, 0x4000

    iput v0, p0, Lcom/google/api/client/http/HttpRequest;->contentLoggingLimit:I

    .line 135
    iput-boolean v1, p0, Lcom/google/api/client/http/HttpRequest;->loggingEnabled:Z

    .line 138
    iput-boolean v1, p0, Lcom/google/api/client/http/HttpRequest;->curlLoggingEnabled:Z

    .line 153
    iput v2, p0, Lcom/google/api/client/http/HttpRequest;->connectTimeout:I

    .line 159
    iput v2, p0, Lcom/google/api/client/http/HttpRequest;->readTimeout:I

    .line 185
    iput-boolean v1, p0, Lcom/google/api/client/http/HttpRequest;->followRedirects:Z

    .line 191
    iput-boolean v1, p0, Lcom/google/api/client/http/HttpRequest;->throwExceptionOnExecuteError:Z

    .line 197
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/api/client/http/HttpRequest;->retryOnExecuteIOException:Z

    .line 211
    sget-object v0, Lcom/google/api/client/util/Sleeper;->DEFAULT:Lcom/google/api/client/util/Sleeper;

    iput-object v0, p0, Lcom/google/api/client/http/HttpRequest;->sleeper:Lcom/google/api/client/util/Sleeper;

    .line 218
    iput-object p1, p0, Lcom/google/api/client/http/HttpRequest;->transport:Lcom/google/api/client/http/HttpTransport;

    .line 219
    invoke-virtual {p0, p2}, Lcom/google/api/client/http/HttpRequest;->setRequestMethod(Ljava/lang/String;)Lcom/google/api/client/http/HttpRequest;

    .line 220
    return-void
.end method


# virtual methods
.method public final execute()Lcom/google/api/client/http/HttpResponse;
    .registers 36
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 845
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/api/client/http/HttpRequest;->numRetries:I

    move/from16 v32, v0

    if-ltz v32, :cond_319

    const/16 v32, 0x1

    .line 7037
    :goto_a
    invoke-static/range {v32 .. v32}, Lcom/google/api/client/repackaged/com/google/common/base/Preconditions;->checkArgument(Z)V

    .line 846
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/api/client/http/HttpRequest;->numRetries:I

    move/from16 v27, v0

    .line 847
    .local v27, "retriesRemaining":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/api/client/http/HttpRequest;->backOffPolicy:Lcom/google/api/client/http/BackOffPolicy;

    move-object/from16 v32, v0

    if-eqz v32, :cond_24

    .line 849
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/api/client/http/HttpRequest;->backOffPolicy:Lcom/google/api/client/http/BackOffPolicy;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Lcom/google/api/client/http/BackOffPolicy;->reset()V

    .line 851
    :cond_24
    const/16 v25, 0x0

    .line 854
    .local v25, "response":Lcom/google/api/client/http/HttpResponse;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/api/client/http/HttpRequest;->requestMethod:Ljava/lang/String;

    move-object/from16 v32, v0

    .line 7127
    invoke-static/range {v32 .. v32}, Lcom/google/api/client/repackaged/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 855
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/api/client/http/HttpRequest;->url:Lcom/google/api/client/http/GenericUrl;

    move-object/from16 v32, v0

    .line 8127
    invoke-static/range {v32 .. v32}, Lcom/google/api/client/repackaged/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 859
    :cond_38
    if-eqz v25, :cond_3d

    .line 860
    invoke-virtual/range {v25 .. v25}, Lcom/google/api/client/http/HttpResponse;->ignore()V

    .line 863
    :cond_3d
    const/16 v25, 0x0

    .line 864
    const/16 v16, 0x0

    .line 867
    .local v16, "executeException":Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/api/client/http/HttpRequest;->executeInterceptor:Lcom/google/api/client/http/HttpExecuteInterceptor;

    move-object/from16 v32, v0

    if-eqz v32, :cond_56

    .line 868
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/api/client/http/HttpRequest;->executeInterceptor:Lcom/google/api/client/http/HttpExecuteInterceptor;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Lcom/google/api/client/http/HttpExecuteInterceptor;->intercept(Lcom/google/api/client/http/HttpRequest;)V

    .line 871
    :cond_56
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/api/client/http/HttpRequest;->url:Lcom/google/api/client/http/GenericUrl;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/google/api/client/http/GenericUrl;->build()Ljava/lang/String;

    move-result-object v31

    .line 872
    .local v31, "urlString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/api/client/http/HttpRequest;->transport:Lcom/google/api/client/http/HttpTransport;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/api/client/http/HttpRequest;->requestMethod:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/google/api/client/http/HttpTransport;->buildRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/client/http/LowLevelHttpRequest;

    move-result-object v22

    .line 873
    .local v22, "lowLevelHttpRequest":Lcom/google/api/client/http/LowLevelHttpRequest;
    sget-object v20, Lcom/google/api/client/http/HttpTransport;->LOGGER:Ljava/util/logging/Logger;

    .line 874
    .local v20, "logger":Ljava/util/logging/Logger;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/api/client/http/HttpRequest;->loggingEnabled:Z

    move/from16 v32, v0

    if-eqz v32, :cond_31d

    sget-object v32, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    move-object/from16 v0, v20

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v32

    if-eqz v32, :cond_31d

    const/16 v19, 0x1

    .line 875
    .local v19, "loggable":Z
    :goto_8e
    const/16 v18, 0x0

    .line 876
    .local v18, "logbuf":Ljava/lang/StringBuilder;
    const/4 v13, 0x0

    .line 878
    .local v13, "curlbuf":Ljava/lang/StringBuilder;
    if-eqz v19, :cond_fc

    .line 879
    new-instance v18, Ljava/lang/StringBuilder;

    .end local v18    # "logbuf":Ljava/lang/StringBuilder;
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    .line 880
    .restart local v18    # "logbuf":Ljava/lang/StringBuilder;
    const-string/jumbo v32, "-------------- REQUEST  --------------"

    move-object/from16 v0, v18

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    sget-object v33, Lcom/google/api/client/util/StringUtils;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 881
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/api/client/http/HttpRequest;->requestMethod:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const/16 v33, 0x20

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    sget-object v33, Lcom/google/api/client/util/StringUtils;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 885
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/api/client/http/HttpRequest;->curlLoggingEnabled:Z

    move/from16 v32, v0

    if-eqz v32, :cond_fc

    .line 886
    new-instance v13, Ljava/lang/StringBuilder;

    .end local v13    # "curlbuf":Ljava/lang/StringBuilder;
    const-string/jumbo v32, "curl -v --compressed"

    move-object/from16 v0, v32

    invoke-direct {v13, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 887
    .restart local v13    # "curlbuf":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/api/client/http/HttpRequest;->requestMethod:Ljava/lang/String;

    move-object/from16 v32, v0

    const-string/jumbo v33, "GET"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-nez v32, :cond_fc

    .line 888
    const-string/jumbo v32, " -X "

    move-object/from16 v0, v32

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/api/client/http/HttpRequest;->requestMethod:Ljava/lang/String;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 893
    :cond_fc
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/api/client/http/HttpRequest;->headers:Lcom/google/api/client/http/HttpHeaders;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/google/api/client/http/HttpHeaders;->getUserAgent()Ljava/lang/String;

    move-result-object v24

    .line 894
    .local v24, "originalUserAgent":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/api/client/http/HttpRequest;->suppressUserAgentSuffix:Z

    move/from16 v32, v0

    if-nez v32, :cond_11c

    .line 895
    if-nez v24, :cond_321

    .line 896
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/api/client/http/HttpRequest;->headers:Lcom/google/api/client/http/HttpHeaders;

    move-object/from16 v32, v0

    const-string/jumbo v33, "Google-HTTP-Java-Client/1.22.0 (gzip)"

    invoke-virtual/range {v32 .. v33}, Lcom/google/api/client/http/HttpHeaders;->setUserAgent(Ljava/lang/String;)Lcom/google/api/client/http/HttpHeaders;

    .line 902
    :cond_11c
    :goto_11c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/api/client/http/HttpRequest;->headers:Lcom/google/api/client/http/HttpHeaders;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    move-object/from16 v3, v22

    invoke-static {v0, v1, v13, v2, v3}, Lcom/google/api/client/http/HttpHeaders;->serializeHeaders(Lcom/google/api/client/http/HttpHeaders;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Ljava/util/logging/Logger;Lcom/google/api/client/http/LowLevelHttpRequest;)V

    .line 903
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/api/client/http/HttpRequest;->suppressUserAgentSuffix:Z

    move/from16 v32, v0

    if-nez v32, :cond_142

    .line 905
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/api/client/http/HttpRequest;->headers:Lcom/google/api/client/http/HttpHeaders;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/google/api/client/http/HttpHeaders;->setUserAgent(Ljava/lang/String;)Lcom/google/api/client/http/HttpHeaders;

    .line 909
    :cond_142
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/api/client/http/HttpRequest;->content:Lcom/google/api/client/http/HttpContent;

    move-object/from16 v29, v0

    .line 910
    .local v29, "streamingContent":Lcom/google/api/client/util/StreamingContent;
    if-eqz v29, :cond_156

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/api/client/http/HttpRequest;->content:Lcom/google/api/client/http/HttpContent;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Lcom/google/api/client/http/HttpContent;->retrySupported()Z

    move-result v32

    if-eqz v32, :cond_344

    :cond_156
    const/4 v9, 0x1

    .line 911
    .local v9, "contentRetrySupported":Z
    :goto_157
    if-eqz v29, :cond_260

    .line 914
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/api/client/http/HttpRequest;->content:Lcom/google/api/client/http/HttpContent;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Lcom/google/api/client/http/HttpContent;->getType()Ljava/lang/String;

    move-result-object v12

    .line 916
    .local v12, "contentType":Ljava/lang/String;
    if-eqz v19, :cond_180

    .line 917
    new-instance v30, Lcom/google/api/client/util/LoggingStreamingContent;

    sget-object v32, Lcom/google/api/client/http/HttpTransport;->LOGGER:Ljava/util/logging/Logger;

    sget-object v33, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/api/client/http/HttpRequest;->contentLoggingLimit:I

    move/from16 v34, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    move/from16 v4, v34

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/api/client/util/LoggingStreamingContent;-><init>(Lcom/google/api/client/util/StreamingContent;Ljava/util/logging/Logger;Ljava/util/logging/Level;I)V

    .end local v29    # "streamingContent":Lcom/google/api/client/util/StreamingContent;
    .local v30, "streamingContent":Lcom/google/api/client/util/StreamingContent;
    move-object/from16 v29, v30

    .line 921
    .end local v30    # "streamingContent":Lcom/google/api/client/util/StreamingContent;
    .restart local v29    # "streamingContent":Lcom/google/api/client/util/StreamingContent;
    :cond_180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/api/client/http/HttpRequest;->encoding:Lcom/google/api/client/http/HttpEncoding;

    move-object/from16 v32, v0

    if-nez v32, :cond_347

    .line 922
    const/4 v8, 0x0

    .line 923
    .local v8, "contentEncoding":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/api/client/http/HttpRequest;->content:Lcom/google/api/client/http/HttpContent;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Lcom/google/api/client/http/HttpContent;->getLength()J

    move-result-wide v10

    .line 930
    .local v10, "contentLength":J
    :goto_193
    if-eqz v19, :cond_240

    .line 931
    if-eqz v12, :cond_1d8

    .line 932
    new-instance v32, Ljava/lang/StringBuilder;

    const-string/jumbo v33, "Content-Type: "

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v32

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 933
    .local v17, "header":Ljava/lang/String;
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    sget-object v33, Lcom/google/api/client/util/StringUtils;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 934
    if-eqz v13, :cond_1d8

    .line 935
    new-instance v32, Ljava/lang/StringBuilder;

    const-string/jumbo v33, " -H \'"

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v32

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string/jumbo v33, "\'"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 938
    .end local v17    # "header":Ljava/lang/String;
    :cond_1d8
    if-eqz v8, :cond_21b

    .line 939
    new-instance v32, Ljava/lang/StringBuilder;

    const-string/jumbo v33, "Content-Encoding: "

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v32

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 940
    .restart local v17    # "header":Ljava/lang/String;
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    sget-object v33, Lcom/google/api/client/util/StringUtils;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 941
    if-eqz v13, :cond_21b

    .line 942
    new-instance v32, Ljava/lang/StringBuilder;

    const-string/jumbo v33, " -H \'"

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v32

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string/jumbo v33, "\'"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 945
    .end local v17    # "header":Ljava/lang/String;
    :cond_21b
    const-wide/16 v32, 0x0

    cmp-long v32, v10, v32

    if-ltz v32, :cond_240

    .line 946
    new-instance v32, Ljava/lang/StringBuilder;

    const-string/jumbo v33, "Content-Length: "

    invoke-direct/range {v32 .. v33}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v32

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 947
    .restart local v17    # "header":Ljava/lang/String;
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    sget-object v33, Lcom/google/api/client/util/StringUtils;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 951
    .end local v17    # "header":Ljava/lang/String;
    :cond_240
    if-eqz v13, :cond_24a

    .line 952
    const-string/jumbo v32, " -d \'@-\'"

    move-object/from16 v0, v32

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 955
    :cond_24a
    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Lcom/google/api/client/http/LowLevelHttpRequest;->setContentType(Ljava/lang/String;)V

    .line 956
    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Lcom/google/api/client/http/LowLevelHttpRequest;->setContentEncoding(Ljava/lang/String;)V

    .line 957
    move-object/from16 v0, v22

    invoke-virtual {v0, v10, v11}, Lcom/google/api/client/http/LowLevelHttpRequest;->setContentLength(J)V

    .line 958
    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/google/api/client/http/LowLevelHttpRequest;->setStreamingContent(Lcom/google/api/client/util/StreamingContent;)V

    .line 961
    .end local v8    # "contentEncoding":Ljava/lang/String;
    .end local v10    # "contentLength":J
    .end local v12    # "contentType":Ljava/lang/String;
    :cond_260
    if-eqz v19, :cond_2a3

    .line 962
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v20

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 963
    if-eqz v13, :cond_2a3

    .line 964
    const-string/jumbo v32, " -- \'"

    move-object/from16 v0, v32

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 965
    const-string/jumbo v32, "\'"

    const-string/jumbo v33, "\'\"\'\"\'"

    invoke-virtual/range {v31 .. v33}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 966
    const-string/jumbo v32, "\'"

    move-object/from16 v0, v32

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 967
    if-eqz v29, :cond_298

    .line 968
    const-string/jumbo v32, " << $$$"

    move-object/from16 v0, v32

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 970
    :cond_298
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v20

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    .line 976
    :cond_2a3
    if-eqz v9, :cond_372

    if-lez v27, :cond_372

    const/16 v28, 0x1

    .line 979
    .local v28, "retryRequest":Z
    :goto_2a9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/api/client/http/HttpRequest;->connectTimeout:I

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/api/client/http/HttpRequest;->readTimeout:I

    move/from16 v33, v0

    move-object/from16 v0, v22

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/google/api/client/http/LowLevelHttpRequest;->setTimeout(II)V

    .line 981
    :try_start_2be
    invoke-virtual/range {v22 .. v22}, Lcom/google/api/client/http/LowLevelHttpRequest;->execute()Lcom/google/api/client/http/LowLevelHttpResponse;
    :try_end_2c1
    .catch Ljava/io/IOException; {:try_start_2be .. :try_end_2c1} :catch_381

    move-result-object v23

    .line 985
    .local v23, "lowLevelHttpResponse":Lcom/google/api/client/http/LowLevelHttpResponse;
    :try_start_2c2
    new-instance v26, Lcom/google/api/client/http/HttpResponse;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/google/api/client/http/HttpResponse;-><init>(Lcom/google/api/client/http/HttpRequest;Lcom/google/api/client/http/LowLevelHttpResponse;)V
    :try_end_2cd
    .catchall {:try_start_2c2 .. :try_end_2cd} :catchall_376

    .end local v25    # "response":Lcom/google/api/client/http/HttpResponse;
    .local v26, "response":Lcom/google/api/client/http/HttpResponse;
    move-object/from16 v25, v26

    .line 1009
    .end local v23    # "lowLevelHttpResponse":Lcom/google/api/client/http/LowLevelHttpResponse;
    .end local v26    # "response":Lcom/google/api/client/http/HttpResponse;
    .restart local v25    # "response":Lcom/google/api/client/http/HttpResponse;
    :goto_2cf
    if-eqz v25, :cond_3ef

    :try_start_2d1
    invoke-virtual/range {v25 .. v25}, Lcom/google/api/client/http/HttpResponse;->isSuccessStatusCode()Z

    move-result v32

    if-nez v32, :cond_3ef

    .line 1010
    const/4 v15, 0x0

    .line 1011
    .local v15, "errorHandled":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/api/client/http/HttpRequest;->unsuccessfulResponseHandler:Lcom/google/api/client/http/HttpUnsuccessfulResponseHandler;

    move-object/from16 v32, v0

    if-eqz v32, :cond_2f2

    .line 1015
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/api/client/http/HttpRequest;->unsuccessfulResponseHandler:Lcom/google/api/client/http/HttpUnsuccessfulResponseHandler;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    move-object/from16 v2, v25

    move/from16 v3, v28

    invoke-interface {v0, v1, v2, v3}, Lcom/google/api/client/http/HttpUnsuccessfulResponseHandler;->handleResponse(Lcom/google/api/client/http/HttpRequest;Lcom/google/api/client/http/HttpResponse;Z)Z

    move-result v15

    .line 1017
    :cond_2f2
    if-nez v15, :cond_309

    .line 1018
    invoke-virtual/range {v25 .. v25}, Lcom/google/api/client/http/HttpResponse;->getStatusCode()I

    move-result v32

    invoke-virtual/range {v25 .. v25}, Lcom/google/api/client/http/HttpResponse;->getHeaders()Lcom/google/api/client/http/HttpHeaders;

    move-result-object v33

    move-object/from16 v0, p0

    move/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/google/api/client/http/HttpRequest;->handleRedirect(ILcom/google/api/client/http/HttpHeaders;)Z

    move-result v32

    if-eqz v32, :cond_3b7

    .line 1020
    const/4 v15, 0x1

    .line 1038
    :cond_309
    :goto_309
    and-int v28, v28, v15

    .line 1040
    if-eqz v28, :cond_310

    .line 1041
    invoke-virtual/range {v25 .. v25}, Lcom/google/api/client/http/HttpResponse;->ignore()V
    :try_end_310
    .catchall {:try_start_2d1 .. :try_end_310} :catchall_3fa

    .line 1049
    .end local v15    # "errorHandled":Z
    :cond_310
    :goto_310
    add-int/lit8 v27, v27, -0x1

    .line 1053
    if-eqz v25, :cond_314

    .line 1057
    :cond_314
    if-nez v28, :cond_38

    .line 1059
    if-nez v25, :cond_401

    .line 1061
    throw v16

    .line 845
    .end local v9    # "contentRetrySupported":Z
    .end local v13    # "curlbuf":Ljava/lang/StringBuilder;
    .end local v16    # "executeException":Ljava/io/IOException;
    .end local v18    # "logbuf":Ljava/lang/StringBuilder;
    .end local v19    # "loggable":Z
    .end local v20    # "logger":Ljava/util/logging/Logger;
    .end local v22    # "lowLevelHttpRequest":Lcom/google/api/client/http/LowLevelHttpRequest;
    .end local v24    # "originalUserAgent":Ljava/lang/String;
    .end local v25    # "response":Lcom/google/api/client/http/HttpResponse;
    .end local v27    # "retriesRemaining":I
    .end local v28    # "retryRequest":Z
    .end local v29    # "streamingContent":Lcom/google/api/client/util/StreamingContent;
    .end local v31    # "urlString":Ljava/lang/String;
    :cond_319
    const/16 v32, 0x0

    goto/16 :goto_a

    .line 874
    .restart local v16    # "executeException":Ljava/io/IOException;
    .restart local v20    # "logger":Ljava/util/logging/Logger;
    .restart local v22    # "lowLevelHttpRequest":Lcom/google/api/client/http/LowLevelHttpRequest;
    .restart local v25    # "response":Lcom/google/api/client/http/HttpResponse;
    .restart local v27    # "retriesRemaining":I
    .restart local v31    # "urlString":Ljava/lang/String;
    :cond_31d
    const/16 v19, 0x0

    goto/16 :goto_8e

    .line 898
    .restart local v13    # "curlbuf":Ljava/lang/StringBuilder;
    .restart local v18    # "logbuf":Ljava/lang/StringBuilder;
    .restart local v19    # "loggable":Z
    .restart local v24    # "originalUserAgent":Ljava/lang/String;
    :cond_321
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/api/client/http/HttpRequest;->headers:Lcom/google/api/client/http/HttpHeaders;

    move-object/from16 v32, v0

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string/jumbo v34, " Google-HTTP-Java-Client/1.22.0 (gzip)"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Lcom/google/api/client/http/HttpHeaders;->setUserAgent(Ljava/lang/String;)Lcom/google/api/client/http/HttpHeaders;

    goto/16 :goto_11c

    .line 910
    .restart local v29    # "streamingContent":Lcom/google/api/client/util/StreamingContent;
    :cond_344
    const/4 v9, 0x0

    goto/16 :goto_157

    .line 925
    .restart local v9    # "contentRetrySupported":Z
    .restart local v12    # "contentType":Ljava/lang/String;
    :cond_347
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/api/client/http/HttpRequest;->encoding:Lcom/google/api/client/http/HttpEncoding;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Lcom/google/api/client/http/HttpEncoding;->getName()Ljava/lang/String;

    move-result-object v8

    .line 926
    .restart local v8    # "contentEncoding":Ljava/lang/String;
    new-instance v30, Lcom/google/api/client/http/HttpEncodingStreamingContent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/api/client/http/HttpRequest;->encoding:Lcom/google/api/client/http/HttpEncoding;

    move-object/from16 v32, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    move-object/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lcom/google/api/client/http/HttpEncodingStreamingContent;-><init>(Lcom/google/api/client/util/StreamingContent;Lcom/google/api/client/http/HttpEncoding;)V

    .line 927
    .end local v29    # "streamingContent":Lcom/google/api/client/util/StreamingContent;
    .restart local v30    # "streamingContent":Lcom/google/api/client/util/StreamingContent;
    if-eqz v9, :cond_36c

    invoke-static/range {v30 .. v30}, Lcom/google/api/client/util/IOUtils;->computeLength(Lcom/google/api/client/util/StreamingContent;)J

    move-result-wide v10

    move-object/from16 v29, v30

    .end local v30    # "streamingContent":Lcom/google/api/client/util/StreamingContent;
    .restart local v29    # "streamingContent":Lcom/google/api/client/util/StreamingContent;
    goto/16 :goto_193

    .end local v29    # "streamingContent":Lcom/google/api/client/util/StreamingContent;
    .restart local v30    # "streamingContent":Lcom/google/api/client/util/StreamingContent;
    :cond_36c
    const-wide/16 v10, -0x1

    move-object/from16 v29, v30

    .end local v30    # "streamingContent":Lcom/google/api/client/util/StreamingContent;
    .restart local v29    # "streamingContent":Lcom/google/api/client/util/StreamingContent;
    goto/16 :goto_193

    .line 976
    .end local v8    # "contentEncoding":Ljava/lang/String;
    .end local v12    # "contentType":Ljava/lang/String;
    :cond_372
    const/16 v28, 0x0

    goto/16 :goto_2a9

    .line 988
    .restart local v23    # "lowLevelHttpResponse":Lcom/google/api/client/http/LowLevelHttpResponse;
    .restart local v28    # "retryRequest":Z
    :catchall_376
    move-exception v32

    .line 989
    :try_start_377
    invoke-virtual/range {v23 .. v23}, Lcom/google/api/client/http/LowLevelHttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v21

    .line 990
    .local v21, "lowLevelContent":Ljava/io/InputStream;
    if-eqz v21, :cond_380

    .line 991
    invoke-virtual/range {v21 .. v21}, Ljava/io/InputStream;->close()V

    .line 993
    :cond_380
    throw v32
    :try_end_381
    .catch Ljava/io/IOException; {:try_start_377 .. :try_end_381} :catch_381

    .line 995
    .end local v21    # "lowLevelContent":Ljava/io/InputStream;
    .end local v23    # "lowLevelHttpResponse":Lcom/google/api/client/http/LowLevelHttpResponse;
    :catch_381
    move-exception v14

    .line 996
    .local v14, "e":Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/api/client/http/HttpRequest;->retryOnExecuteIOException:Z

    move/from16 v32, v0

    if-nez v32, :cond_3a5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/api/client/http/HttpRequest;->ioExceptionHandler:Lcom/google/api/client/http/HttpIOExceptionHandler;

    move-object/from16 v32, v0

    if-eqz v32, :cond_3a4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/api/client/http/HttpRequest;->ioExceptionHandler:Lcom/google/api/client/http/HttpIOExceptionHandler;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    move/from16 v2, v28

    invoke-interface {v0, v1, v2}, Lcom/google/api/client/http/HttpIOExceptionHandler;->handleIOException(Lcom/google/api/client/http/HttpRequest;Z)Z

    move-result v32

    if-nez v32, :cond_3a5

    .line 998
    :cond_3a4
    throw v14

    .line 1001
    :cond_3a5
    move-object/from16 v16, v14

    .line 1002
    sget-object v32, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string/jumbo v33, "exception thrown while executing request"

    move-object/from16 v0, v20

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2, v14}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2cf

    .line 1021
    .end local v14    # "e":Ljava/io/IOException;
    .restart local v15    # "errorHandled":Z
    :cond_3b7
    if-eqz v28, :cond_309

    :try_start_3b9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/api/client/http/HttpRequest;->backOffPolicy:Lcom/google/api/client/http/BackOffPolicy;

    move-object/from16 v32, v0

    if-eqz v32, :cond_309

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/api/client/http/HttpRequest;->backOffPolicy:Lcom/google/api/client/http/BackOffPolicy;

    move-object/from16 v32, v0

    invoke-virtual/range {v25 .. v25}, Lcom/google/api/client/http/HttpResponse;->getStatusCode()I

    move-result v33

    invoke-interface/range {v32 .. v33}, Lcom/google/api/client/http/BackOffPolicy;->isBackOffRequired(I)Z

    move-result v32

    if-eqz v32, :cond_309

    .line 1025
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/api/client/http/HttpRequest;->backOffPolicy:Lcom/google/api/client/http/BackOffPolicy;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Lcom/google/api/client/http/BackOffPolicy;->getNextBackOffMillis()J
    :try_end_3da
    .catchall {:try_start_3b9 .. :try_end_3da} :catchall_3fa

    move-result-wide v6

    .line 1026
    .local v6, "backOffTime":J
    const-wide/16 v32, -0x1

    cmp-long v32, v6, v32

    if-eqz v32, :cond_309

    .line 1028
    :try_start_3e1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/api/client/http/HttpRequest;->sleeper:Lcom/google/api/client/util/Sleeper;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-interface {v0, v6, v7}, Lcom/google/api/client/util/Sleeper;->sleep(J)V
    :try_end_3ec
    .catch Ljava/lang/InterruptedException; {:try_start_3e1 .. :try_end_3ec} :catch_434
    .catchall {:try_start_3e1 .. :try_end_3ec} :catchall_3fa

    .line 1032
    :goto_3ec
    const/4 v15, 0x1

    goto/16 :goto_309

    .line 1045
    .end local v6    # "backOffTime":J
    .end local v15    # "errorHandled":Z
    :cond_3ef
    if-nez v25, :cond_3f7

    const/16 v32, 0x1

    :goto_3f3
    and-int v28, v28, v32

    goto/16 :goto_310

    :cond_3f7
    const/16 v32, 0x0

    goto :goto_3f3

    .line 1053
    :catchall_3fa
    move-exception v32

    if-eqz v25, :cond_400

    .line 1054
    invoke-virtual/range {v25 .. v25}, Lcom/google/api/client/http/HttpResponse;->disconnect()V

    :cond_400
    throw v32

    .line 1064
    :cond_401
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/api/client/http/HttpRequest;->responseInterceptor:Lcom/google/api/client/http/HttpResponseInterceptor;

    move-object/from16 v32, v0

    if-eqz v32, :cond_416

    .line 1065
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/api/client/http/HttpRequest;->responseInterceptor:Lcom/google/api/client/http/HttpResponseInterceptor;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lcom/google/api/client/http/HttpResponseInterceptor;->interceptResponse(Lcom/google/api/client/http/HttpResponse;)V

    .line 1068
    :cond_416
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/api/client/http/HttpRequest;->throwExceptionOnExecuteError:Z

    move/from16 v32, v0

    if-eqz v32, :cond_433

    invoke-virtual/range {v25 .. v25}, Lcom/google/api/client/http/HttpResponse;->isSuccessStatusCode()Z

    move-result v32

    if-nez v32, :cond_433

    .line 1070
    :try_start_424
    new-instance v32, Lcom/google/api/client/http/HttpResponseException;

    move-object/from16 v0, v32

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/google/api/client/http/HttpResponseException;-><init>(Lcom/google/api/client/http/HttpResponse;)V

    throw v32
    :try_end_42e
    .catchall {:try_start_424 .. :try_end_42e} :catchall_42e

    .line 1072
    :catchall_42e
    move-exception v32

    invoke-virtual/range {v25 .. v25}, Lcom/google/api/client/http/HttpResponse;->disconnect()V

    throw v32

    .line 1075
    :cond_433
    return-object v25

    .restart local v6    # "backOffTime":J
    .restart local v15    # "errorHandled":Z
    :catch_434
    move-exception v32

    goto :goto_3ec
.end method

.method public final executeAsync()Ljava/util/concurrent/Future;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/google/api/client/http/HttpResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1108
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/api/client/http/HttpRequest;->executeAsync(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public final executeAsync(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Future;
    .registers 4
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/google/api/client/http/HttpResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1088
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lcom/google/api/client/http/HttpRequest$1;

    invoke-direct {v1, p0}, Lcom/google/api/client/http/HttpRequest$1;-><init>(Lcom/google/api/client/http/HttpRequest;)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 1094
    .local v0, "future":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Lcom/google/api/client/http/HttpResponse;>;"
    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1095
    return-object v0
.end method

.method public final getBackOffPolicy()Lcom/google/api/client/http/BackOffPolicy;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 320
    iget-object v0, p0, Lcom/google/api/client/http/HttpRequest;->backOffPolicy:Lcom/google/api/client/http/BackOffPolicy;

    return-object v0
.end method

.method public final getConnectTimeout()I
    .registers 2

    .prologue
    .line 451
    iget v0, p0, Lcom/google/api/client/http/HttpRequest;->connectTimeout:I

    return v0
.end method

.method public final getContent()Lcom/google/api/client/http/HttpContent;
    .registers 2

    .prologue
    .line 276
    iget-object v0, p0, Lcom/google/api/client/http/HttpRequest;->content:Lcom/google/api/client/http/HttpContent;

    return-object v0
.end method

.method public final getContentLoggingLimit()I
    .registers 2

    .prologue
    .line 362
    iget v0, p0, Lcom/google/api/client/http/HttpRequest;->contentLoggingLimit:I

    return v0
.end method

.method public final getEncoding()Lcom/google/api/client/http/HttpEncoding;
    .registers 2

    .prologue
    .line 295
    iget-object v0, p0, Lcom/google/api/client/http/HttpRequest;->encoding:Lcom/google/api/client/http/HttpEncoding;

    return-object v0
.end method

.method public final getFollowRedirects()Z
    .registers 2

    .prologue
    .line 700
    iget-boolean v0, p0, Lcom/google/api/client/http/HttpRequest;->followRedirects:Z

    return v0
.end method

.method public final getHeaders()Lcom/google/api/client/http/HttpHeaders;
    .registers 2

    .prologue
    .line 502
    iget-object v0, p0, Lcom/google/api/client/http/HttpRequest;->headers:Lcom/google/api/client/http/HttpHeaders;

    return-object v0
.end method

.method public final getIOExceptionHandler()Lcom/google/api/client/http/HttpIOExceptionHandler;
    .registers 2

    .prologue
    .line 605
    iget-object v0, p0, Lcom/google/api/client/http/HttpRequest;->ioExceptionHandler:Lcom/google/api/client/http/HttpIOExceptionHandler;

    return-object v0
.end method

.method public final getInterceptor()Lcom/google/api/client/http/HttpExecuteInterceptor;
    .registers 2

    .prologue
    .line 563
    iget-object v0, p0, Lcom/google/api/client/http/HttpRequest;->executeInterceptor:Lcom/google/api/client/http/HttpExecuteInterceptor;

    return-object v0
.end method

.method public final getNumberOfRetries()I
    .registers 2

    .prologue
    .line 649
    iget v0, p0, Lcom/google/api/client/http/HttpRequest;->numRetries:I

    return v0
.end method

.method public final getParser()Lcom/google/api/client/util/ObjectParser;
    .registers 2

    .prologue
    .line 691
    iget-object v0, p0, Lcom/google/api/client/http/HttpRequest;->objectParser:Lcom/google/api/client/util/ObjectParser;

    return-object v0
.end method

.method public final getReadTimeout()I
    .registers 2

    .prologue
    .line 481
    iget v0, p0, Lcom/google/api/client/http/HttpRequest;->readTimeout:I

    return v0
.end method

.method public final getRequestMethod()Ljava/lang/String;
    .registers 2

    .prologue
    .line 237
    iget-object v0, p0, Lcom/google/api/client/http/HttpRequest;->requestMethod:Ljava/lang/String;

    return-object v0
.end method

.method public final getResponseHeaders()Lcom/google/api/client/http/HttpHeaders;
    .registers 2

    .prologue
    .line 525
    iget-object v0, p0, Lcom/google/api/client/http/HttpRequest;->responseHeaders:Lcom/google/api/client/http/HttpHeaders;

    return-object v0
.end method

.method public final getResponseInterceptor()Lcom/google/api/client/http/HttpResponseInterceptor;
    .registers 2

    .prologue
    .line 626
    iget-object v0, p0, Lcom/google/api/client/http/HttpRequest;->responseInterceptor:Lcom/google/api/client/http/HttpResponseInterceptor;

    return-object v0
.end method

.method public final getRetryOnExecuteIOException()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 754
    iget-boolean v0, p0, Lcom/google/api/client/http/HttpRequest;->retryOnExecuteIOException:Z

    return v0
.end method

.method public final getSleeper()Lcom/google/api/client/util/Sleeper;
    .registers 2

    .prologue
    .line 1160
    iget-object v0, p0, Lcom/google/api/client/http/HttpRequest;->sleeper:Lcom/google/api/client/util/Sleeper;

    return-object v0
.end method

.method public final getSuppressUserAgentSuffix()Z
    .registers 2

    .prologue
    .line 783
    iget-boolean v0, p0, Lcom/google/api/client/http/HttpRequest;->suppressUserAgentSuffix:Z

    return v0
.end method

.method public final getThrowExceptionOnExecuteError()Z
    .registers 2

    .prologue
    .line 724
    iget-boolean v0, p0, Lcom/google/api/client/http/HttpRequest;->throwExceptionOnExecuteError:Z

    return v0
.end method

.method public final getTransport()Lcom/google/api/client/http/HttpTransport;
    .registers 2

    .prologue
    .line 228
    iget-object v0, p0, Lcom/google/api/client/http/HttpRequest;->transport:Lcom/google/api/client/http/HttpTransport;

    return-object v0
.end method

.method public final getUnsuccessfulResponseHandler()Lcom/google/api/client/http/HttpUnsuccessfulResponseHandler;
    .registers 2

    .prologue
    .line 583
    iget-object v0, p0, Lcom/google/api/client/http/HttpRequest;->unsuccessfulResponseHandler:Lcom/google/api/client/http/HttpUnsuccessfulResponseHandler;

    return-object v0
.end method

.method public final getUrl()Lcom/google/api/client/http/GenericUrl;
    .registers 2

    .prologue
    .line 257
    iget-object v0, p0, Lcom/google/api/client/http/HttpRequest;->url:Lcom/google/api/client/http/GenericUrl;

    return-object v0
.end method

.method public final handleRedirect(ILcom/google/api/client/http/HttpHeaders;)Z
    .registers 7
    .param p1, "statusCode"    # I
    .param p2, "responseHeaders"    # Lcom/google/api/client/http/HttpHeaders;

    .prologue
    const/4 v3, 0x0

    .line 1131
    invoke-virtual {p2}, Lcom/google/api/client/http/HttpHeaders;->getLocation()Ljava/lang/String;

    move-result-object v0

    .line 1132
    .local v0, "redirectLocation":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/api/client/http/HttpRequest;->getFollowRedirects()Z

    move-result v1

    if-eqz v1, :cond_4e

    invoke-static {p1}, Lcom/google/api/client/http/HttpStatusCodes;->isRedirect(I)Z

    move-result v1

    if-eqz v1, :cond_4e

    if-eqz v0, :cond_4e

    .line 1135
    new-instance v1, Lcom/google/api/client/http/GenericUrl;

    iget-object v2, p0, Lcom/google/api/client/http/HttpRequest;->url:Lcom/google/api/client/http/GenericUrl;

    invoke-virtual {v2, v0}, Lcom/google/api/client/http/GenericUrl;->toURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/api/client/http/GenericUrl;-><init>(Ljava/net/URL;)V

    invoke-virtual {p0, v1}, Lcom/google/api/client/http/HttpRequest;->setUrl(Lcom/google/api/client/http/GenericUrl;)Lcom/google/api/client/http/HttpRequest;

    .line 1137
    const/16 v1, 0x12f

    if-ne p1, v1, :cond_2e

    .line 1138
    const-string/jumbo v1, "GET"

    invoke-virtual {p0, v1}, Lcom/google/api/client/http/HttpRequest;->setRequestMethod(Ljava/lang/String;)Lcom/google/api/client/http/HttpRequest;

    .line 1140
    invoke-virtual {p0, v3}, Lcom/google/api/client/http/HttpRequest;->setContent(Lcom/google/api/client/http/HttpContent;)Lcom/google/api/client/http/HttpRequest;

    .line 1143
    :cond_2e
    iget-object v1, p0, Lcom/google/api/client/http/HttpRequest;->headers:Lcom/google/api/client/http/HttpHeaders;

    invoke-virtual {v1, v3}, Lcom/google/api/client/http/HttpHeaders;->setAuthorization(Ljava/lang/String;)Lcom/google/api/client/http/HttpHeaders;

    .line 1144
    iget-object v1, p0, Lcom/google/api/client/http/HttpRequest;->headers:Lcom/google/api/client/http/HttpHeaders;

    invoke-virtual {v1, v3}, Lcom/google/api/client/http/HttpHeaders;->setIfMatch(Ljava/lang/String;)Lcom/google/api/client/http/HttpHeaders;

    .line 1145
    iget-object v1, p0, Lcom/google/api/client/http/HttpRequest;->headers:Lcom/google/api/client/http/HttpHeaders;

    invoke-virtual {v1, v3}, Lcom/google/api/client/http/HttpHeaders;->setIfNoneMatch(Ljava/lang/String;)Lcom/google/api/client/http/HttpHeaders;

    .line 1146
    iget-object v1, p0, Lcom/google/api/client/http/HttpRequest;->headers:Lcom/google/api/client/http/HttpHeaders;

    invoke-virtual {v1, v3}, Lcom/google/api/client/http/HttpHeaders;->setIfModifiedSince(Ljava/lang/String;)Lcom/google/api/client/http/HttpHeaders;

    .line 1147
    iget-object v1, p0, Lcom/google/api/client/http/HttpRequest;->headers:Lcom/google/api/client/http/HttpHeaders;

    invoke-virtual {v1, v3}, Lcom/google/api/client/http/HttpHeaders;->setIfUnmodifiedSince(Ljava/lang/String;)Lcom/google/api/client/http/HttpHeaders;

    .line 1148
    iget-object v1, p0, Lcom/google/api/client/http/HttpRequest;->headers:Lcom/google/api/client/http/HttpHeaders;

    invoke-virtual {v1, v3}, Lcom/google/api/client/http/HttpHeaders;->setIfRange(Ljava/lang/String;)Lcom/google/api/client/http/HttpHeaders;

    .line 1149
    const/4 v1, 0x1

    .line 1151
    :goto_4d
    return v1

    :cond_4e
    const/4 v1, 0x0

    goto :goto_4d
.end method

.method public final isCurlLoggingEnabled()Z
    .registers 2

    .prologue
    .line 427
    iget-boolean v0, p0, Lcom/google/api/client/http/HttpRequest;->curlLoggingEnabled:Z

    return v0
.end method

.method public final isLoggingEnabled()Z
    .registers 2

    .prologue
    .line 404
    iget-boolean v0, p0, Lcom/google/api/client/http/HttpRequest;->loggingEnabled:Z

    return v0
.end method

.method public final setBackOffPolicy(Lcom/google/api/client/http/BackOffPolicy;)Lcom/google/api/client/http/HttpRequest;
    .registers 2
    .param p1, "backOffPolicy"    # Lcom/google/api/client/http/BackOffPolicy;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 335
    iput-object p1, p0, Lcom/google/api/client/http/HttpRequest;->backOffPolicy:Lcom/google/api/client/http/BackOffPolicy;

    .line 336
    return-object p0
.end method

.method public final setConnectTimeout(I)Lcom/google/api/client/http/HttpRequest;
    .registers 3
    .param p1, "connectTimeout"    # I

    .prologue
    .line 465
    if-ltz p1, :cond_9

    const/4 v0, 0x1

    .line 3037
    :goto_3
    invoke-static {v0}, Lcom/google/api/client/repackaged/com/google/common/base/Preconditions;->checkArgument(Z)V

    .line 466
    iput p1, p0, Lcom/google/api/client/http/HttpRequest;->connectTimeout:I

    .line 467
    return-object p0

    .line 465
    :cond_9
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public final setContent(Lcom/google/api/client/http/HttpContent;)Lcom/google/api/client/http/HttpRequest;
    .registers 2
    .param p1, "content"    # Lcom/google/api/client/http/HttpContent;

    .prologue
    .line 285
    iput-object p1, p0, Lcom/google/api/client/http/HttpRequest;->content:Lcom/google/api/client/http/HttpContent;

    .line 286
    return-object p0
.end method

.method public final setContentLoggingLimit(I)Lcom/google/api/client/http/HttpRequest;
    .registers 4
    .param p1, "contentLoggingLimit"    # I

    .prologue
    .line 388
    if-ltz p1, :cond_c

    const/4 v0, 0x1

    :goto_3
    const-string/jumbo v1, "The content logging limit must be non-negative."

    invoke-static {v0, v1}, Lcom/google/api/client/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 390
    iput p1, p0, Lcom/google/api/client/http/HttpRequest;->contentLoggingLimit:I

    .line 391
    return-object p0

    .line 388
    :cond_c
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public final setCurlLoggingEnabled(Z)Lcom/google/api/client/http/HttpRequest;
    .registers 2
    .param p1, "curlLoggingEnabled"    # Z

    .prologue
    .line 440
    iput-boolean p1, p0, Lcom/google/api/client/http/HttpRequest;->curlLoggingEnabled:Z

    .line 441
    return-object p0
.end method

.method public final setEncoding(Lcom/google/api/client/http/HttpEncoding;)Lcom/google/api/client/http/HttpRequest;
    .registers 2
    .param p1, "encoding"    # Lcom/google/api/client/http/HttpEncoding;

    .prologue
    .line 304
    iput-object p1, p0, Lcom/google/api/client/http/HttpRequest;->encoding:Lcom/google/api/client/http/HttpEncoding;

    .line 305
    return-object p0
.end method

.method public final setFollowRedirects(Z)Lcom/google/api/client/http/HttpRequest;
    .registers 2
    .param p1, "followRedirects"    # Z

    .prologue
    .line 713
    iput-boolean p1, p0, Lcom/google/api/client/http/HttpRequest;->followRedirects:Z

    .line 714
    return-object p0
.end method

.method public final setHeaders(Lcom/google/api/client/http/HttpHeaders;)Lcom/google/api/client/http/HttpRequest;
    .registers 3
    .param p1, "headers"    # Lcom/google/api/client/http/HttpHeaders;

    .prologue
    .line 515
    .line 4127
    invoke-static {p1}, Lcom/google/api/client/repackaged/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 515
    check-cast v0, Lcom/google/api/client/http/HttpHeaders;

    iput-object v0, p0, Lcom/google/api/client/http/HttpRequest;->headers:Lcom/google/api/client/http/HttpHeaders;

    .line 516
    return-object p0
.end method

.method public final setIOExceptionHandler(Lcom/google/api/client/http/HttpIOExceptionHandler;)Lcom/google/api/client/http/HttpRequest;
    .registers 2
    .param p1, "ioExceptionHandler"    # Lcom/google/api/client/http/HttpIOExceptionHandler;

    .prologue
    .line 616
    iput-object p1, p0, Lcom/google/api/client/http/HttpRequest;->ioExceptionHandler:Lcom/google/api/client/http/HttpIOExceptionHandler;

    .line 617
    return-object p0
.end method

.method public final setInterceptor(Lcom/google/api/client/http/HttpExecuteInterceptor;)Lcom/google/api/client/http/HttpRequest;
    .registers 2
    .param p1, "interceptor"    # Lcom/google/api/client/http/HttpExecuteInterceptor;

    .prologue
    .line 573
    iput-object p1, p0, Lcom/google/api/client/http/HttpRequest;->executeInterceptor:Lcom/google/api/client/http/HttpExecuteInterceptor;

    .line 574
    return-object p0
.end method

.method public final setLoggingEnabled(Z)Lcom/google/api/client/http/HttpRequest;
    .registers 2
    .param p1, "loggingEnabled"    # Z

    .prologue
    .line 417
    iput-boolean p1, p0, Lcom/google/api/client/http/HttpRequest;->loggingEnabled:Z

    .line 418
    return-object p0
.end method

.method public final setNumberOfRetries(I)Lcom/google/api/client/http/HttpRequest;
    .registers 3
    .param p1, "numRetries"    # I

    .prologue
    .line 665
    if-ltz p1, :cond_9

    const/4 v0, 0x1

    .line 6037
    :goto_3
    invoke-static {v0}, Lcom/google/api/client/repackaged/com/google/common/base/Preconditions;->checkArgument(Z)V

    .line 666
    iput p1, p0, Lcom/google/api/client/http/HttpRequest;->numRetries:I

    .line 667
    return-object p0

    .line 665
    :cond_9
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public final setParser(Lcom/google/api/client/util/ObjectParser;)Lcom/google/api/client/http/HttpRequest;
    .registers 2
    .param p1, "parser"    # Lcom/google/api/client/util/ObjectParser;

    .prologue
    .line 681
    iput-object p1, p0, Lcom/google/api/client/http/HttpRequest;->objectParser:Lcom/google/api/client/util/ObjectParser;

    .line 682
    return-object p0
.end method

.method public final setReadTimeout(I)Lcom/google/api/client/http/HttpRequest;
    .registers 3
    .param p1, "readTimeout"    # I

    .prologue
    .line 491
    if-ltz p1, :cond_9

    const/4 v0, 0x1

    .line 4037
    :goto_3
    invoke-static {v0}, Lcom/google/api/client/repackaged/com/google/common/base/Preconditions;->checkArgument(Z)V

    .line 492
    iput p1, p0, Lcom/google/api/client/http/HttpRequest;->readTimeout:I

    .line 493
    return-object p0

    .line 491
    :cond_9
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public final setRequestMethod(Ljava/lang/String;)Lcom/google/api/client/http/HttpRequest;
    .registers 3
    .param p1, "requestMethod"    # Ljava/lang/String;

    .prologue
    .line 246
    if-eqz p1, :cond_8

    invoke-static {p1}, Lcom/google/api/client/http/HttpMediaType;->matchesToken(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    :cond_8
    const/4 v0, 0x1

    .line 2037
    :goto_9
    invoke-static {v0}, Lcom/google/api/client/repackaged/com/google/common/base/Preconditions;->checkArgument(Z)V

    .line 247
    iput-object p1, p0, Lcom/google/api/client/http/HttpRequest;->requestMethod:Ljava/lang/String;

    .line 248
    return-object p0

    .line 246
    :cond_f
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public final setResponseHeaders(Lcom/google/api/client/http/HttpHeaders;)Lcom/google/api/client/http/HttpRequest;
    .registers 3
    .param p1, "responseHeaders"    # Lcom/google/api/client/http/HttpHeaders;

    .prologue
    .line 552
    .line 5127
    invoke-static {p1}, Lcom/google/api/client/repackaged/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 552
    check-cast v0, Lcom/google/api/client/http/HttpHeaders;

    iput-object v0, p0, Lcom/google/api/client/http/HttpRequest;->responseHeaders:Lcom/google/api/client/http/HttpHeaders;

    .line 553
    return-object p0
.end method

.method public final setResponseInterceptor(Lcom/google/api/client/http/HttpResponseInterceptor;)Lcom/google/api/client/http/HttpRequest;
    .registers 2
    .param p1, "responseInterceptor"    # Lcom/google/api/client/http/HttpResponseInterceptor;

    .prologue
    .line 635
    iput-object p1, p0, Lcom/google/api/client/http/HttpRequest;->responseInterceptor:Lcom/google/api/client/http/HttpResponseInterceptor;

    .line 636
    return-object p0
.end method

.method public final setRetryOnExecuteIOException(Z)Lcom/google/api/client/http/HttpRequest;
    .registers 2
    .param p1, "retryOnExecuteIOException"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 773
    iput-boolean p1, p0, Lcom/google/api/client/http/HttpRequest;->retryOnExecuteIOException:Z

    .line 774
    return-object p0
.end method

.method public final setSleeper(Lcom/google/api/client/util/Sleeper;)Lcom/google/api/client/http/HttpRequest;
    .registers 3
    .param p1, "sleeper"    # Lcom/google/api/client/util/Sleeper;

    .prologue
    .line 1169
    .line 9127
    invoke-static {p1}, Lcom/google/api/client/repackaged/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1169
    check-cast v0, Lcom/google/api/client/util/Sleeper;

    iput-object v0, p0, Lcom/google/api/client/http/HttpRequest;->sleeper:Lcom/google/api/client/util/Sleeper;

    .line 1170
    return-object p0
.end method

.method public final setSuppressUserAgentSuffix(Z)Lcom/google/api/client/http/HttpRequest;
    .registers 2
    .param p1, "suppressUserAgentSuffix"    # Z

    .prologue
    .line 796
    iput-boolean p1, p0, Lcom/google/api/client/http/HttpRequest;->suppressUserAgentSuffix:Z

    .line 797
    return-object p0
.end method

.method public final setThrowExceptionOnExecuteError(Z)Lcom/google/api/client/http/HttpRequest;
    .registers 2
    .param p1, "throwExceptionOnExecuteError"    # Z

    .prologue
    .line 738
    iput-boolean p1, p0, Lcom/google/api/client/http/HttpRequest;->throwExceptionOnExecuteError:Z

    .line 739
    return-object p0
.end method

.method public final setUnsuccessfulResponseHandler(Lcom/google/api/client/http/HttpUnsuccessfulResponseHandler;)Lcom/google/api/client/http/HttpRequest;
    .registers 2
    .param p1, "unsuccessfulResponseHandler"    # Lcom/google/api/client/http/HttpUnsuccessfulResponseHandler;

    .prologue
    .line 593
    iput-object p1, p0, Lcom/google/api/client/http/HttpRequest;->unsuccessfulResponseHandler:Lcom/google/api/client/http/HttpUnsuccessfulResponseHandler;

    .line 594
    return-object p0
.end method

.method public final setUrl(Lcom/google/api/client/http/GenericUrl;)Lcom/google/api/client/http/HttpRequest;
    .registers 3
    .param p1, "url"    # Lcom/google/api/client/http/GenericUrl;

    .prologue
    .line 266
    .line 2127
    invoke-static {p1}, Lcom/google/api/client/repackaged/com/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 266
    check-cast v0, Lcom/google/api/client/http/GenericUrl;

    iput-object v0, p0, Lcom/google/api/client/http/HttpRequest;->url:Lcom/google/api/client/http/GenericUrl;

    .line 267
    return-object p0
.end method
