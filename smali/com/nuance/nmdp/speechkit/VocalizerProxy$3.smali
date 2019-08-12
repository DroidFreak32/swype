.class Lcom/nuance/nmdp/speechkit/VocalizerProxy$3;
.super Ljava/lang/Object;
.source "VocalizerProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/nmdp/speechkit/VocalizerProxy;->cancel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/nmdp/speechkit/VocalizerProxy;


# direct methods
.method constructor <init>(Lcom/nuance/nmdp/speechkit/VocalizerProxy;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/VocalizerProxy$3;->this$0:Lcom/nuance/nmdp/speechkit/VocalizerProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/VocalizerProxy$3;->this$0:Lcom/nuance/nmdp/speechkit/VocalizerProxy;

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/VocalizerProxy;->access$000(Lcom/nuance/nmdp/speechkit/VocalizerProxy;)Lcom/nuance/nmdp/speechkit/VocalizerImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/VocalizerImpl;->cancel()V

    .line 72
    return-void
.end method
