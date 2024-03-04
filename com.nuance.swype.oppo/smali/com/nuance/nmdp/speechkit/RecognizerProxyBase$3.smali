.class Lcom/nuance/nmdp/speechkit/RecognizerProxyBase$3;
.super Ljava/lang/Object;
.source "RecognizerProxyBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/nmdp/speechkit/RecognizerProxyBase;->setPrompt(ILcom/nuance/nmdp/speechkit/Prompt;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/nmdp/speechkit/RecognizerProxyBase;

.field final synthetic val$p:Lcom/nuance/nmdp/speechkit/Prompt;

.field final synthetic val$promptType:I


# direct methods
.method constructor <init>(Lcom/nuance/nmdp/speechkit/RecognizerProxyBase;ILcom/nuance/nmdp/speechkit/Prompt;)V
    .locals 0

    .prologue
    .line 104
    .local p0, "this":Lcom/nuance/nmdp/speechkit/RecognizerProxyBase$3;, "Lcom/nuance/nmdp/speechkit/RecognizerProxyBase.3;"
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/RecognizerProxyBase$3;->this$0:Lcom/nuance/nmdp/speechkit/RecognizerProxyBase;

    iput p2, p0, Lcom/nuance/nmdp/speechkit/RecognizerProxyBase$3;->val$promptType:I

    iput-object p3, p0, Lcom/nuance/nmdp/speechkit/RecognizerProxyBase$3;->val$p:Lcom/nuance/nmdp/speechkit/Prompt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 107
    .local p0, "this":Lcom/nuance/nmdp/speechkit/RecognizerProxyBase$3;, "Lcom/nuance/nmdp/speechkit/RecognizerProxyBase.3;"
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/RecognizerProxyBase$3;->this$0:Lcom/nuance/nmdp/speechkit/RecognizerProxyBase;

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/RecognizerProxyBase;->access$000(Lcom/nuance/nmdp/speechkit/RecognizerProxyBase;)Lcom/nuance/nmdp/speechkit/RecognizerBase;

    move-result-object v0

    iget v1, p0, Lcom/nuance/nmdp/speechkit/RecognizerProxyBase$3;->val$promptType:I

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/RecognizerProxyBase$3;->val$p:Lcom/nuance/nmdp/speechkit/Prompt;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/nmdp/speechkit/RecognizerBase;->setPrompt(ILcom/nuance/nmdp/speechkit/Prompt;)V

    .line 108
    return-void
.end method
