.class Lcom/nuance/nmdp/speechkit/RecognizerProxyBase$5;
.super Ljava/lang/Object;
.source "RecognizerProxyBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/nmdp/speechkit/RecognizerProxyBase;->stopRecording()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/nmdp/speechkit/RecognizerProxyBase;


# direct methods
.method constructor <init>(Lcom/nuance/nmdp/speechkit/RecognizerProxyBase;)V
    .registers 2

    .prologue
    .line 135
    .local p0, "this":Lcom/nuance/nmdp/speechkit/RecognizerProxyBase$5;, "Lcom/nuance/nmdp/speechkit/RecognizerProxyBase.5;"
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/RecognizerProxyBase$5;->this$0:Lcom/nuance/nmdp/speechkit/RecognizerProxyBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 138
    .local p0, "this":Lcom/nuance/nmdp/speechkit/RecognizerProxyBase$5;, "Lcom/nuance/nmdp/speechkit/RecognizerProxyBase.5;"
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/RecognizerProxyBase$5;->this$0:Lcom/nuance/nmdp/speechkit/RecognizerProxyBase;

    # getter for: Lcom/nuance/nmdp/speechkit/RecognizerProxyBase;->_recognizer:Lcom/nuance/nmdp/speechkit/RecognizerBase;
    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/RecognizerProxyBase;->access$000(Lcom/nuance/nmdp/speechkit/RecognizerProxyBase;)Lcom/nuance/nmdp/speechkit/RecognizerBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/RecognizerBase;->stopRecording()V

    .line 139
    return-void
.end method
