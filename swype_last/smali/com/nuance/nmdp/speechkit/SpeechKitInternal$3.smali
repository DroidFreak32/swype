.class Lcom/nuance/nmdp/speechkit/SpeechKitInternal$3;
.super Ljava/lang/Object;
.source "SpeechKitInternal.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/nmdp/speechkit/SpeechKitInternal;->release()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/nmdp/speechkit/SpeechKitInternal;


# direct methods
.method constructor <init>(Lcom/nuance/nmdp/speechkit/SpeechKitInternal;)V
    .registers 2

    .prologue
    .line 299
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/SpeechKitInternal$3;->this$0:Lcom/nuance/nmdp/speechkit/SpeechKitInternal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 1

    .prologue
    .line 302
    invoke-static {}, Lcom/nuance/nmdp/speechkit/util/JobRunner;->shutdown()V

    .line 303
    return-void
.end method
