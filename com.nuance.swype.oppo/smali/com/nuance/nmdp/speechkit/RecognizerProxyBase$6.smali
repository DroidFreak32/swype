.class Lcom/nuance/nmdp/speechkit/RecognizerProxyBase$6;
.super Ljava/lang/Object;
.source "RecognizerProxyBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/nmdp/speechkit/RecognizerProxyBase;->cancel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/nmdp/speechkit/RecognizerProxyBase;


# direct methods
.method constructor <init>(Lcom/nuance/nmdp/speechkit/RecognizerProxyBase;)V
    .locals 0

    .prologue
    .line 149
    .local p0, "this":Lcom/nuance/nmdp/speechkit/RecognizerProxyBase$6;, "Lcom/nuance/nmdp/speechkit/RecognizerProxyBase.6;"
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/RecognizerProxyBase$6;->this$0:Lcom/nuance/nmdp/speechkit/RecognizerProxyBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 152
    .local p0, "this":Lcom/nuance/nmdp/speechkit/RecognizerProxyBase$6;, "Lcom/nuance/nmdp/speechkit/RecognizerProxyBase.6;"
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/RecognizerProxyBase$6;->this$0:Lcom/nuance/nmdp/speechkit/RecognizerProxyBase;

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/RecognizerProxyBase;->access$000(Lcom/nuance/nmdp/speechkit/RecognizerProxyBase;)Lcom/nuance/nmdp/speechkit/RecognizerBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/RecognizerBase;->cancel()V

    .line 153
    return-void
.end method
