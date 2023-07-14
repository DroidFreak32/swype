.class Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy$2;
.super Ljava/lang/Object;
.source "CustomWordsSynchronizerProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy;->addCustomWordsSet(Ljava/util/Set;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy;

.field final synthetic val$clearAllCustomWords:Z

.field final synthetic val$words:Ljava/util/Set;


# direct methods
.method constructor <init>(Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy;Ljava/util/Set;Z)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy$2;->this$0:Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy;

    iput-object p2, p0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy$2;->val$words:Ljava/util/Set;

    iput-boolean p3, p0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy$2;->val$clearAllCustomWords:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 42
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy$2;->this$0:Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy;

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy;->access$000(Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy;)Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy$2;->val$words:Ljava/util/Set;

    iget-boolean v2, p0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerProxy$2;->val$clearAllCustomWords:Z

    invoke-virtual {v0, v1, v2}, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;->addCustomWordsSet(Ljava/util/Set;Z)V

    .line 43
    return-void
.end method
