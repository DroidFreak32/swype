.class Lcom/nuance/nmdp/speechkit/RecognizerProxyBase$8;
.super Ljava/lang/Object;
.source "RecognizerProxyBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/nmdp/speechkit/RecognizerProxyBase;->setStartOfSpeechTimeout(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/nmdp/speechkit/RecognizerProxyBase;

.field final synthetic val$timeout:I


# direct methods
.method constructor <init>(Lcom/nuance/nmdp/speechkit/RecognizerProxyBase;I)V
    .registers 3

    .prologue
    .line 180
    .local p0, "this":Lcom/nuance/nmdp/speechkit/RecognizerProxyBase$8;, "Lcom/nuance/nmdp/speechkit/RecognizerProxyBase.8;"
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/RecognizerProxyBase$8;->this$0:Lcom/nuance/nmdp/speechkit/RecognizerProxyBase;

    iput p2, p0, Lcom/nuance/nmdp/speechkit/RecognizerProxyBase$8;->val$timeout:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 182
    .local p0, "this":Lcom/nuance/nmdp/speechkit/RecognizerProxyBase$8;, "Lcom/nuance/nmdp/speechkit/RecognizerProxyBase.8;"
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/RecognizerProxyBase$8;->this$0:Lcom/nuance/nmdp/speechkit/RecognizerProxyBase;

    # getter for: Lcom/nuance/nmdp/speechkit/RecognizerProxyBase;->_recognizer:Lcom/nuance/nmdp/speechkit/RecognizerBase;
    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/RecognizerProxyBase;->access$000(Lcom/nuance/nmdp/speechkit/RecognizerProxyBase;)Lcom/nuance/nmdp/speechkit/RecognizerBase;

    move-result-object v0

    iget v1, p0, Lcom/nuance/nmdp/speechkit/RecognizerProxyBase$8;->val$timeout:I

    invoke-virtual {v0, v1}, Lcom/nuance/nmdp/speechkit/RecognizerBase;->setStartOfSpeechTimeout(I)V

    .line 183
    return-void
.end method
