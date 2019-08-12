.class Lcom/nuance/nmdp/speechkit/CommandProxyBase$3;
.super Ljava/lang/Object;
.source "CommandProxyBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/nmdp/speechkit/CommandProxyBase;->cancel()V
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
    .line 77
    .local p0, "this":Lcom/nuance/nmdp/speechkit/CommandProxyBase$3;, "Lcom/nuance/nmdp/speechkit/CommandProxyBase.3;"
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/CommandProxyBase$3;->this$0:Lcom/nuance/nmdp/speechkit/CommandProxyBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 80
    .local p0, "this":Lcom/nuance/nmdp/speechkit/CommandProxyBase$3;, "Lcom/nuance/nmdp/speechkit/CommandProxyBase.3;"
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/CommandProxyBase$3;->this$0:Lcom/nuance/nmdp/speechkit/CommandProxyBase;

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/CommandProxyBase;->access$000(Lcom/nuance/nmdp/speechkit/CommandProxyBase;)Lcom/nuance/nmdp/speechkit/CommandBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/CommandBase;->cancel()V

    .line 81
    return-void
.end method
