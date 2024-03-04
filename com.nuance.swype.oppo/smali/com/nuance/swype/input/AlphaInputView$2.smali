.class Lcom/nuance/swype/input/AlphaInputView$2;
.super Ljava/lang/Object;
.source "AlphaInputView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/AlphaInputView;->create(Lcom/nuance/swype/input/IME;Lcom/nuance/input/swypecorelib/XT9CoreInput;Lcom/nuance/swype/input/SpeechWrapper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/AlphaInputView;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/AlphaInputView;)V
    .locals 0

    .prologue
    .line 254
    iput-object p1, p0, Lcom/nuance/swype/input/AlphaInputView$2;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 256
    invoke-static {}, Lcom/nuance/swype/input/AlphaInputView;->access$200()Lcom/nuance/dlm/ACAlphaInput;

    move-result-object v0

    if-nez v0, :cond_0

    .line 257
    new-instance v0, Lcom/nuance/dlm/ACAlphaInput;

    iget-object v1, p0, Lcom/nuance/swype/input/AlphaInputView$2;->this$0:Lcom/nuance/swype/input/AlphaInputView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/AlphaInputView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/connect/Connect;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/Connect;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/connect/Connect;->getDLMConnector()Lcom/nuance/swypeconnect/ac/ACDLMConnector;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nuance/dlm/ACAlphaInput;-><init>(Lcom/nuance/swypeconnect/ac/ACDLMConnector;)V

    invoke-static {v0}, Lcom/nuance/swype/input/AlphaInputView;->access$202(Lcom/nuance/dlm/ACAlphaInput;)Lcom/nuance/dlm/ACAlphaInput;

    .line 260
    :cond_0
    return-void
.end method
