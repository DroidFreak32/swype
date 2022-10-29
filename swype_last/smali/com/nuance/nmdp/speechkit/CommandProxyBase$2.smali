.class Lcom/nuance/nmdp/speechkit/CommandProxyBase$2;
.super Ljava/lang/Object;
.source "CommandProxyBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/nmdp/speechkit/CommandProxyBase;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/nmdp/speechkit/CommandProxyBase;


# direct methods
.method constructor <init>(Lcom/nuance/nmdp/speechkit/CommandProxyBase;)V
    .registers 2

    .prologue
    .line 63
    .local p0, "this":Lcom/nuance/nmdp/speechkit/CommandProxyBase$2;, "Lcom/nuance/nmdp/speechkit/CommandProxyBase.2;"
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/CommandProxyBase$2;->this$0:Lcom/nuance/nmdp/speechkit/CommandProxyBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 66
    .local p0, "this":Lcom/nuance/nmdp/speechkit/CommandProxyBase$2;, "Lcom/nuance/nmdp/speechkit/CommandProxyBase.2;"
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/CommandProxyBase$2;->this$0:Lcom/nuance/nmdp/speechkit/CommandProxyBase;

    # getter for: Lcom/nuance/nmdp/speechkit/CommandProxyBase;->_command:Lcom/nuance/nmdp/speechkit/CommandBase;
    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/CommandProxyBase;->access$000(Lcom/nuance/nmdp/speechkit/CommandProxyBase;)Lcom/nuance/nmdp/speechkit/CommandBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/CommandBase;->start()V

    .line 67
    return-void
.end method
