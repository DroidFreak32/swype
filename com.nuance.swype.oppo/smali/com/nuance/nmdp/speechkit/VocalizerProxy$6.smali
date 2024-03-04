.class Lcom/nuance/nmdp/speechkit/VocalizerProxy$6;
.super Ljava/lang/Object;
.source "VocalizerProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/nmdp/speechkit/VocalizerProxy;->setLanguage(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/nmdp/speechkit/VocalizerProxy;

.field final synthetic val$language:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/nuance/nmdp/speechkit/VocalizerProxy;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/VocalizerProxy$6;->this$0:Lcom/nuance/nmdp/speechkit/VocalizerProxy;

    iput-object p2, p0, Lcom/nuance/nmdp/speechkit/VocalizerProxy$6;->val$language:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/VocalizerProxy$6;->this$0:Lcom/nuance/nmdp/speechkit/VocalizerProxy;

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/VocalizerProxy;->access$000(Lcom/nuance/nmdp/speechkit/VocalizerProxy;)Lcom/nuance/nmdp/speechkit/VocalizerImpl;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/VocalizerProxy$6;->val$language:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nuance/nmdp/speechkit/VocalizerImpl;->setLanguage(Ljava/lang/String;)V

    .line 115
    return-void
.end method
