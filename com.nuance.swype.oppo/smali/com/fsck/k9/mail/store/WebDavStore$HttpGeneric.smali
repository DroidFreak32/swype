.class public Lcom/fsck/k9/mail/store/WebDavStore$HttpGeneric;
.super Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;
.source "WebDavStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/mail/store/WebDavStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HttpGeneric"
.end annotation


# instance fields
.field public METHOD_NAME:Ljava/lang/String;

.field final synthetic this$0:Lcom/fsck/k9/mail/store/WebDavStore;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/mail/store/WebDavStore;)V
    .locals 1

    .prologue
    .line 2478
    iput-object p1, p0, Lcom/fsck/k9/mail/store/WebDavStore$HttpGeneric;->this$0:Lcom/fsck/k9/mail/store/WebDavStore;

    .line 2479
    invoke-direct {p0}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;-><init>()V

    .line 2475
    const-string v0, "POST"

    iput-object v0, p0, Lcom/fsck/k9/mail/store/WebDavStore$HttpGeneric;->METHOD_NAME:Ljava/lang/String;

    .line 2480
    return-void
.end method

.method public constructor <init>(Lcom/fsck/k9/mail/store/WebDavStore;Ljava/lang/String;)V
    .locals 10
    .param p2, "uri"    # Ljava/lang/String;

    .prologue
    .line 2493
    iput-object p1, p0, Lcom/fsck/k9/mail/store/WebDavStore$HttpGeneric;->this$0:Lcom/fsck/k9/mail/store/WebDavStore;

    .line 2494
    invoke-direct {p0}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;-><init>()V

    .line 2475
    const-string v7, "POST"

    iput-object v7, p0, Lcom/fsck/k9/mail/store/WebDavStore$HttpGeneric;->METHOD_NAME:Ljava/lang/String;

    .line 2496
    sget-boolean v7, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v7, :cond_0

    .line 2498
    const-string v7, "k9"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Starting uri = \'"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2501
    :cond_0
    const-string v7, "/"

    invoke-virtual {p2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 2502
    .local v6, "urlParts":[Ljava/lang/String;
    array-length v3, v6

    .line 2503
    .local v3, "length":I
    add-int/lit8 v7, v3, -0x1

    aget-object v0, v6, v7

    .line 2504
    .local v0, "end":Ljava/lang/String;
    const-string v5, ""

    .line 2511
    .local v5, "url":Ljava/lang/String;
    const/4 v7, 0x3

    if-le v3, v7, :cond_1

    .line 2513
    :try_start_0
    const-string v7, "UTF-8"

    invoke-static {v0, v7}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2514
    const-string v7, "UTF-8"

    invoke-static {v0, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2515
    const-string v7, "\\+"

    const-string v8, "%20"

    invoke-virtual {v0, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 2529
    :cond_1
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    add-int/lit8 v7, v3, -0x1

    if-ge v1, v7, :cond_3

    .line 2531
    if-eqz v1, :cond_2

    .line 2533
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v6, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2529
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2518
    .end local v1    # "i":I
    :catch_0
    move-exception v4

    .line 2520
    .local v4, "uee":Ljava/io/UnsupportedEncodingException;
    const-string v7, "k9"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "UnsupportedEncodingException caught in HttpGeneric(String uri): "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\nTrace: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p1, v4}, Lcom/fsck/k9/mail/store/WebDavStore;->access$1200(Lcom/fsck/k9/mail/store/WebDavStore;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2523
    .end local v4    # "uee":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v2

    .line 2525
    .local v2, "iae":Ljava/lang/IllegalArgumentException;
    const-string v7, "k9"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "IllegalArgumentException caught in HttpGeneric(String uri): "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\nTrace: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p1, v2}, Lcom/fsck/k9/mail/store/WebDavStore;->access$1200(Lcom/fsck/k9/mail/store/WebDavStore;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2537
    .end local v2    # "iae":Ljava/lang/IllegalArgumentException;
    .restart local v1    # "i":I
    :cond_2
    aget-object v5, v6, v1

    goto :goto_2

    .line 2540
    :cond_3
    sget-boolean v7, Lcom/fsck/k9/K9;->DEBUG:Z

    if-eqz v7, :cond_4

    sget-boolean v7, Lcom/fsck/k9/K9;->DEBUG_PROTOCOL_WEBDAV:Z

    if-eqz v7, :cond_4

    .line 2542
    const-string v7, "k9"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "url = \'"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\' length = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", end = \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\' length = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2545
    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2547
    const-string v7, "k9"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "url = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2548
    invoke-static {v5}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/fsck/k9/mail/store/WebDavStore$HttpGeneric;->setURI(Ljava/net/URI;)V

    .line 2549
    return-void
.end method

.method public constructor <init>(Lcom/fsck/k9/mail/store/WebDavStore;Ljava/net/URI;)V
    .locals 1
    .param p2, "uri"    # Ljava/net/URI;

    .prologue
    .line 2483
    iput-object p1, p0, Lcom/fsck/k9/mail/store/WebDavStore$HttpGeneric;->this$0:Lcom/fsck/k9/mail/store/WebDavStore;

    .line 2484
    invoke-direct {p0}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;-><init>()V

    .line 2475
    const-string v0, "POST"

    iput-object v0, p0, Lcom/fsck/k9/mail/store/WebDavStore$HttpGeneric;->METHOD_NAME:Ljava/lang/String;

    .line 2485
    invoke-virtual {p0, p2}, Lcom/fsck/k9/mail/store/WebDavStore$HttpGeneric;->setURI(Ljava/net/URI;)V

    .line 2486
    return-void
.end method


# virtual methods
.method public getMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2554
    iget-object v0, p0, Lcom/fsck/k9/mail/store/WebDavStore$HttpGeneric;->METHOD_NAME:Ljava/lang/String;

    return-object v0
.end method

.method public setMethod(Ljava/lang/String;)V
    .locals 0
    .param p1, "method"    # Ljava/lang/String;

    .prologue
    .line 2559
    if-eqz p1, :cond_0

    .line 2561
    iput-object p1, p0, Lcom/fsck/k9/mail/store/WebDavStore$HttpGeneric;->METHOD_NAME:Ljava/lang/String;

    .line 2563
    :cond_0
    return-void
.end method
