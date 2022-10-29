.class public Lcom/google/api/client/googleapis/services/json/CommonGoogleJsonClientRequestInitializer;
.super Lcom/google/api/client/googleapis/services/CommonGoogleClientRequestInitializer;
.source "CommonGoogleJsonClientRequestInitializer.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/google/api/client/googleapis/services/CommonGoogleClientRequestInitializer;-><init>()V

    .line 88
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/google/api/client/googleapis/services/CommonGoogleClientRequestInitializer;-><init>(Ljava/lang/String;)V

    .line 95
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "userIp"    # Ljava/lang/String;

    .prologue
    .line 102
    invoke-direct {p0, p1, p2}, Lcom/google/api/client/googleapis/services/CommonGoogleClientRequestInitializer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    return-void
.end method


# virtual methods
.method public final initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest",
            "<*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 107
    .local p1, "request":Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;, "Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest<*>;"
    invoke-super {p0, p1}, Lcom/google/api/client/googleapis/services/CommonGoogleClientRequestInitializer;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    .line 108
    check-cast p1, Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest;

    .end local p1    # "request":Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;, "Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest<*>;"
    invoke-virtual {p0, p1}, Lcom/google/api/client/googleapis/services/json/CommonGoogleJsonClientRequestInitializer;->initializeJsonRequest(Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest;)V

    .line 109
    return-void
.end method

.method public initializeJsonRequest(Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest",
            "<*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 123
    .local p1, "request":Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest;, "Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest<*>;"
    return-void
.end method
