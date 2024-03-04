.class Lcom/nuance/nmdp/speechkit/GenericResultImpl$1;
.super Ljava/lang/Object;
.source "GenericResultImpl.java"

# interfaces
.implements Lcom/nuance/nmdp/speechkit/util/parsers/IPdxParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/nmdp/speechkit/GenericResultImpl;->getParser()Lcom/nuance/nmdp/speechkit/util/parsers/IPdxParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/nuance/nmdp/speechkit/util/parsers/IPdxParser",
        "<",
        "Lcom/nuance/nmdp/speechkit/GenericResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/nmdp/speechkit/GenericResultImpl;


# direct methods
.method constructor <init>(Lcom/nuance/nmdp/speechkit/GenericResultImpl;)V
    .locals 0

    .prologue
    .line 19
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/GenericResultImpl$1;->this$0:Lcom/nuance/nmdp/speechkit/GenericResultImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public expectMore()Z
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    return v0
.end method

.method public getParsed()Lcom/nuance/nmdp/speechkit/GenericResult;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/GenericResultImpl$1;->this$0:Lcom/nuance/nmdp/speechkit/GenericResultImpl;

    return-object v0
.end method

.method public bridge synthetic getParsed()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/nuance/nmdp/speechkit/GenericResultImpl$1;->getParsed()Lcom/nuance/nmdp/speechkit/GenericResult;

    move-result-object v0

    return-object v0
.end method

.method public parse(Lcom/nuance/nmsp/client/sdk/components/resource/nmas/QueryResult;)Z
    .locals 2
    .param p1, "result"    # Lcom/nuance/nmsp/client/sdk/components/resource/nmas/QueryResult;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/GenericResultImpl$1;->this$0:Lcom/nuance/nmdp/speechkit/GenericResultImpl;

    const-string v1, "status"

    invoke-interface {p1, v1}, Lcom/nuance/nmsp/client/sdk/components/resource/nmas/QueryResult;->getUTF8String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/nmdp/speechkit/GenericResultImpl;->access$002(Lcom/nuance/nmdp/speechkit/GenericResultImpl;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/GenericResultImpl$1;->this$0:Lcom/nuance/nmdp/speechkit/GenericResultImpl;

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/GenericResultImpl;->access$000(Lcom/nuance/nmdp/speechkit/GenericResultImpl;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 25
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic parse(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 19
    check-cast p1, Lcom/nuance/nmsp/client/sdk/components/resource/nmas/QueryResult;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/nuance/nmdp/speechkit/GenericResultImpl$1;->parse(Lcom/nuance/nmsp/client/sdk/components/resource/nmas/QueryResult;)Z

    move-result v0

    return v0
.end method
