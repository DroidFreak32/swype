.class Lcom/nuance/nmdp/speechkit/VocalizerProxy$2;
.super Ljava/lang/Object;
.source "VocalizerProxy.java"

# interfaces
.implements Lcom/nuance/nmdp/speechkit/Vocalizer$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/nmdp/speechkit/VocalizerProxy;->createVocalizerListener()Lcom/nuance/nmdp/speechkit/Vocalizer$Listener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/nmdp/speechkit/VocalizerProxy;


# direct methods
.method constructor <init>(Lcom/nuance/nmdp/speechkit/VocalizerProxy;)V
    .registers 2

    .prologue
    .line 35
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/VocalizerProxy$2;->this$0:Lcom/nuance/nmdp/speechkit/VocalizerProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSpeakingBegin(Lcom/nuance/nmdp/speechkit/Vocalizer;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 6
    .param p1, "vocalizer"    # Lcom/nuance/nmdp/speechkit/Vocalizer;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "context"    # Ljava/lang/Object;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/VocalizerProxy$2;->this$0:Lcom/nuance/nmdp/speechkit/VocalizerProxy;

    new-instance v1, Lcom/nuance/nmdp/speechkit/VocalizerProxy$2$1;

    invoke-direct {v1, p0, p2, p3}, Lcom/nuance/nmdp/speechkit/VocalizerProxy$2$1;-><init>(Lcom/nuance/nmdp/speechkit/VocalizerProxy$2;Ljava/lang/String;Ljava/lang/Object;)V

    # invokes: Lcom/nuance/nmdp/speechkit/VocalizerProxy;->callback(Ljava/lang/Runnable;)V
    invoke-static {v0, v1}, Lcom/nuance/nmdp/speechkit/VocalizerProxy;->access$400(Lcom/nuance/nmdp/speechkit/VocalizerProxy;Ljava/lang/Runnable;)V

    .line 46
    return-void
.end method

.method public onSpeakingDone(Lcom/nuance/nmdp/speechkit/Vocalizer;Ljava/lang/String;Lcom/nuance/nmdp/speechkit/SpeechError;Ljava/lang/Object;)V
    .registers 7
    .param p1, "vocalizer"    # Lcom/nuance/nmdp/speechkit/Vocalizer;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "error"    # Lcom/nuance/nmdp/speechkit/SpeechError;
    .param p4, "context"    # Ljava/lang/Object;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/VocalizerProxy$2;->this$0:Lcom/nuance/nmdp/speechkit/VocalizerProxy;

    new-instance v1, Lcom/nuance/nmdp/speechkit/VocalizerProxy$2$2;

    invoke-direct {v1, p0, p2, p3, p4}, Lcom/nuance/nmdp/speechkit/VocalizerProxy$2$2;-><init>(Lcom/nuance/nmdp/speechkit/VocalizerProxy$2;Ljava/lang/String;Lcom/nuance/nmdp/speechkit/SpeechError;Ljava/lang/Object;)V

    # invokes: Lcom/nuance/nmdp/speechkit/VocalizerProxy;->callback(Ljava/lang/Runnable;)V
    invoke-static {v0, v1}, Lcom/nuance/nmdp/speechkit/VocalizerProxy;->access$500(Lcom/nuance/nmdp/speechkit/VocalizerProxy;Ljava/lang/Runnable;)V

    .line 58
    return-void
.end method
