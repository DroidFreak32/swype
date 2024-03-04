.class Lcom/nuance/nmdp/speechkit/SpeechKitInternal$2;
.super Ljava/lang/Object;
.source "SpeechKitInternal.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->dispose()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/nmdp/speechkit/SpeechKitInternal;


# direct methods
.method constructor <init>(Lcom/nuance/nmdp/speechkit/SpeechKitInternal;)V
    .locals 0

    .prologue
    .line 265
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/SpeechKitInternal$2;->this$0:Lcom/nuance/nmdp/speechkit/SpeechKitInternal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 268
    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/SpeechKitInternal$2;->this$0:Lcom/nuance/nmdp/speechkit/SpeechKitInternal;

    invoke-static {v2}, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->access$000(Lcom/nuance/nmdp/speechkit/SpeechKitInternal;)Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->dispose()V

    .line 270
    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/SpeechKitInternal$2;->this$0:Lcom/nuance/nmdp/speechkit/SpeechKitInternal;

    invoke-static {v2}, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->access$200(Lcom/nuance/nmdp/speechkit/SpeechKitInternal;)Lcom/nuance/nmdp/speechkit/util/List;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/nmdp/speechkit/util/List;->size()I

    move-result v1

    .line 271
    .local v1, "promptCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 273
    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/SpeechKitInternal$2;->this$0:Lcom/nuance/nmdp/speechkit/SpeechKitInternal;

    invoke-static {v2}, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->access$200(Lcom/nuance/nmdp/speechkit/SpeechKitInternal;)Lcom/nuance/nmdp/speechkit/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/nuance/nmdp/speechkit/util/List;->removeAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/nmdp/speechkit/Prompt;

    .line 274
    invoke-virtual {v2}, Lcom/nuance/nmdp/speechkit/Prompt;->getPrompt()Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;

    move-result-object v2

    invoke-interface {v2}, Lcom/nuance/nmdp/speechkit/util/audio/IPrompt;->dispose()V

    .line 271
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 276
    :cond_0
    return-void
.end method
