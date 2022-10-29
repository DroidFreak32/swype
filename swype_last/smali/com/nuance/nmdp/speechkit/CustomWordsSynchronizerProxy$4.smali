.class Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy$4;
.super Ljava/lang/Object;
.source "CustomWordsSynchronizerProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy;->clearAllCustomWords()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy;


# direct methods
.method constructor <init>(Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy;)V
    .registers 2

    .prologue
    .line 67
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy$4;->this$0:Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy$4;->this$0:Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy;

    # getter for: Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy;->_synchronizer:Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;
    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy;->access$000(Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy;)Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;->clearAllCustomWords()V

    .line 71
    return-void
.end method
