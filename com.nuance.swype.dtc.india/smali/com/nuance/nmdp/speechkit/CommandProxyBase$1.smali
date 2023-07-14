.class Lcom/nuance/nmdp/speechkit/CommandProxyBase$1;
.super Ljava/lang/Object;
.source "CommandProxyBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/nmdp/speechkit/CommandProxyBase;-><init>(Lcom/nuance/nmdp/speechkit/SpeechKitInternal;Ljava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/nmdp/speechkit/CommandProxyBase;


# direct methods
.method constructor <init>(Lcom/nuance/nmdp/speechkit/CommandProxyBase;)V
    .locals 0

    .prologue
    .line 28
    .local p0, "this":Lcom/nuance/nmdp/speechkit/CommandProxyBase$1;, "Lcom/nuance/nmdp/speechkit/CommandProxyBase.1;"
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/CommandProxyBase$1;->this$0:Lcom/nuance/nmdp/speechkit/CommandProxyBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 30
    .local p0, "this":Lcom/nuance/nmdp/speechkit/CommandProxyBase$1;, "Lcom/nuance/nmdp/speechkit/CommandProxyBase.1;"
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/CommandProxyBase$1;->this$0:Lcom/nuance/nmdp/speechkit/CommandProxyBase;

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/CommandProxyBase$1;->this$0:Lcom/nuance/nmdp/speechkit/CommandProxyBase;

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/CommandProxyBase$1;->this$0:Lcom/nuance/nmdp/speechkit/CommandProxyBase;

    invoke-static {v2}, Lcom/nuance/nmdp/speechkit/CommandProxyBase;->access$100(Lcom/nuance/nmdp/speechkit/CommandProxyBase;)Lcom/nuance/nmdp/speechkit/SpeechKitInternal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->getRunner()Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/nmdp/speechkit/CommandProxyBase$1;->this$0:Lcom/nuance/nmdp/speechkit/CommandProxyBase;

    invoke-static {v3}, Lcom/nuance/nmdp/speechkit/CommandProxyBase;->access$200(Lcom/nuance/nmdp/speechkit/CommandProxyBase;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/nuance/nmdp/speechkit/CommandProxyBase$1;->this$0:Lcom/nuance/nmdp/speechkit/CommandProxyBase;

    invoke-static {v4}, Lcom/nuance/nmdp/speechkit/CommandProxyBase;->access$300(Lcom/nuance/nmdp/speechkit/CommandProxyBase;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/nuance/nmdp/speechkit/CommandProxyBase;->createCommand(Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;Ljava/lang/String;Ljava/util/List;)Lcom/nuance/nmdp/speechkit/CommandBase;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/nmdp/speechkit/CommandProxyBase;->access$002(Lcom/nuance/nmdp/speechkit/CommandProxyBase;Lcom/nuance/nmdp/speechkit/CommandBase;)Lcom/nuance/nmdp/speechkit/CommandBase;

    .line 31
    return-void
.end method
