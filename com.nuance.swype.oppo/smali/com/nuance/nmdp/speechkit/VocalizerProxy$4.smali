.class Lcom/nuance/nmdp/speechkit/VocalizerProxy$4;
.super Ljava/lang/Object;
.source "VocalizerProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/nmdp/speechkit/VocalizerProxy;->speakMarkupString(Ljava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/nmdp/speechkit/VocalizerProxy;

.field final synthetic val$context:Ljava/lang/Object;

.field final synthetic val$text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/nuance/nmdp/speechkit/VocalizerProxy;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/VocalizerProxy$4;->this$0:Lcom/nuance/nmdp/speechkit/VocalizerProxy;

    iput-object p2, p0, Lcom/nuance/nmdp/speechkit/VocalizerProxy$4;->val$text:Ljava/lang/String;

    iput-object p3, p0, Lcom/nuance/nmdp/speechkit/VocalizerProxy$4;->val$context:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 86
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/VocalizerProxy$4;->this$0:Lcom/nuance/nmdp/speechkit/VocalizerProxy;

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/VocalizerProxy;->access$000(Lcom/nuance/nmdp/speechkit/VocalizerProxy;)Lcom/nuance/nmdp/speechkit/VocalizerImpl;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/VocalizerProxy$4;->val$text:Ljava/lang/String;

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/VocalizerProxy$4;->val$context:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/nmdp/speechkit/VocalizerImpl;->speakMarkupString(Ljava/lang/String;Ljava/lang/Object;)V

    .line 87
    return-void
.end method
