.class Lcom/nuance/nmdp/speechkit/SpeechKitInternal$7;
.super Ljava/lang/Object;
.source "SpeechKitInternal.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->cancelCurrent()V
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
    .line 965
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/SpeechKitInternal$7;->this$0:Lcom/nuance/nmdp/speechkit/SpeechKitInternal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 968
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/SpeechKitInternal$7;->this$0:Lcom/nuance/nmdp/speechkit/SpeechKitInternal;

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->access$000(Lcom/nuance/nmdp/speechkit/SpeechKitInternal;)Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/transaction/TransactionRunner;->cancelCurrent()V

    .line 969
    return-void
.end method
