.class public Lcom/google/api/client/googleapis/services/CommonGoogleClientRequestInitializer;
.super Ljava/lang/Object;
.source "CommonGoogleClientRequestInitializer.java"

# interfaces
.implements Lcom/google/api/client/googleapis/services/GoogleClientRequestInitializer;


# instance fields
.field private final key:Ljava/lang/String;

.field private final userIp:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/api/client/googleapis/services/CommonGoogleClientRequestInitializer;-><init>(Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 98
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/api/client/googleapis/services/CommonGoogleClientRequestInitializer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "userIp"    # Ljava/lang/String;

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput-object p1, p0, Lcom/google/api/client/googleapis/services/CommonGoogleClientRequestInitializer;->key:Ljava/lang/String;

    .line 107
    iput-object p2, p0, Lcom/google/api/client/googleapis/services/CommonGoogleClientRequestInitializer;->userIp:Ljava/lang/String;

    .line 108
    return-void
.end method


# virtual methods
.method public final getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/google/api/client/googleapis/services/CommonGoogleClientRequestInitializer;->key:Ljava/lang/String;

    return-object v0
.end method

.method public final getUserIp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/google/api/client/googleapis/services/CommonGoogleClientRequestInitializer;->userIp:Ljava/lang/String;

    return-object v0
.end method

.method public initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V
    .locals 2
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
    .line 116
    .local p1, "request":Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;, "Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest<*>;"
    iget-object v0, p0, Lcom/google/api/client/googleapis/services/CommonGoogleClientRequestInitializer;->key:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 117
    const-string/jumbo v0, "key"

    iget-object v1, p0, Lcom/google/api/client/googleapis/services/CommonGoogleClientRequestInitializer;->key:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/google/api/client/googleapis/services/CommonGoogleClientRequestInitializer;->userIp:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 120
    const-string/jumbo v0, "userIp"

    iget-object v1, p0, Lcom/google/api/client/googleapis/services/CommonGoogleClientRequestInitializer;->userIp:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    :cond_1
    return-void
.end method
