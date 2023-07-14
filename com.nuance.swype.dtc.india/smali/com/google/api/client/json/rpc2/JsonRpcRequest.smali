.class public Lcom/google/api/client/json/rpc2/JsonRpcRequest;
.super Lcom/google/api/client/util/GenericData;
.source "JsonRpcRequest.java"


# instance fields
.field private id:Ljava/lang/Object;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private final jsonrpc:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private method:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private params:Ljava/lang/Object;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/google/api/client/util/GenericData;-><init>()V

    .line 36
    const-string/jumbo v0, "2.0"

    iput-object v0, p0, Lcom/google/api/client/json/rpc2/JsonRpcRequest;->jsonrpc:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public clone()Lcom/google/api/client/json/rpc2/JsonRpcRequest;
    .locals 1

    .prologue
    .line 131
    invoke-super {p0}, Lcom/google/api/client/util/GenericData;->clone()Lcom/google/api/client/util/GenericData;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/json/rpc2/JsonRpcRequest;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/google/api/client/json/rpc2/JsonRpcRequest;->clone()Lcom/google/api/client/json/rpc2/JsonRpcRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/google/api/client/json/rpc2/JsonRpcRequest;->clone()Lcom/google/api/client/json/rpc2/JsonRpcRequest;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/api/client/json/rpc2/JsonRpcRequest;->id:Ljava/lang/Object;

    return-object v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/api/client/json/rpc2/JsonRpcRequest;->method:Ljava/lang/String;

    return-object v0
.end method

.method public getParameters()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/google/api/client/json/rpc2/JsonRpcRequest;->params:Ljava/lang/Object;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    const-string/jumbo v0, "2.0"

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/rpc2/JsonRpcRequest;
    .locals 1
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 126
    invoke-super {p0, p1, p2}, Lcom/google/api/client/util/GenericData;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/json/rpc2/JsonRpcRequest;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 32
    invoke-virtual {p0, p1, p2}, Lcom/google/api/client/json/rpc2/JsonRpcRequest;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/rpc2/JsonRpcRequest;

    move-result-object v0

    return-object v0
.end method

.method public setId(Ljava/lang/Object;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/google/api/client/json/rpc2/JsonRpcRequest;->id:Ljava/lang/Object;

    .line 84
    return-void
.end method

.method public setMethod(Ljava/lang/String;)V
    .locals 0
    .param p1, "method"    # Ljava/lang/String;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/google/api/client/json/rpc2/JsonRpcRequest;->method:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public setParameters(Ljava/lang/Object;)V
    .locals 0
    .param p1, "parameters"    # Ljava/lang/Object;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/google/api/client/json/rpc2/JsonRpcRequest;->params:Ljava/lang/Object;

    .line 122
    return-void
.end method
