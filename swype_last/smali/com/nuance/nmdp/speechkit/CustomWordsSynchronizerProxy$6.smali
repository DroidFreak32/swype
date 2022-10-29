.class Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy$6;
.super Ljava/lang/Object;
.source "CustomWordsSynchronizerProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy;->setLanguage(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy;

.field final synthetic val$language:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 95
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy$6;->this$0:Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy;

    iput-object p2, p0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy$6;->val$language:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 98
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy$6;->this$0:Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy;

    # getter for: Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy;->_synchronizer:Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;
    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy;->access$000(Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy;)Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy$6;->val$language:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;->setLanguage(Ljava/lang/String;)V

    .line 99
    return-void
.end method
