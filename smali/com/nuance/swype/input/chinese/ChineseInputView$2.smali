.class Lcom/nuance/swype/input/chinese/ChineseInputView$2;
.super Ljava/lang/Object;
.source "ChineseInputView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/chinese/ChineseInputView;->create(Lcom/nuance/swype/input/IME;Lcom/nuance/input/swypecorelib/XT9CoreInput;Lcom/nuance/input/swypecorelib/T9Write;Lcom/nuance/swype/input/SpeechWrapper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/chinese/ChineseInputView;)V
    .locals 0

    .prologue
    .line 303
    iput-object p1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$2;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 305
    invoke-static {}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$400()Lcom/nuance/dlm/ACChineseInput;

    move-result-object v0

    if-nez v0, :cond_0

    .line 306
    new-instance v0, Lcom/nuance/dlm/ACChineseInput;

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$2;->this$0:Lcom/nuance/swype/input/chinese/ChineseInputView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/connect/Connect;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/Connect;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/connect/Connect;->getDLMConnector()Lcom/nuance/swypeconnect/ac/ACDLMConnector;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nuance/dlm/ACChineseInput;-><init>(Lcom/nuance/swypeconnect/ac/ACDLMConnector;)V

    invoke-static {v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->access$402(Lcom/nuance/dlm/ACChineseInput;)Lcom/nuance/dlm/ACChineseInput;

    .line 309
    :cond_0
    return-void
.end method
