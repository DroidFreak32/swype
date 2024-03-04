.class Lcom/nuance/swype/input/korean/KoreanInputView$2;
.super Ljava/lang/Object;
.source "KoreanInputView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/korean/KoreanInputView;->create(Lcom/nuance/swype/input/IME;Lcom/nuance/input/swypecorelib/XT9CoreInput;Lcom/nuance/swype/input/SpeechWrapper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/korean/KoreanInputView;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/korean/KoreanInputView;)V
    .locals 0

    .prologue
    .line 223
    iput-object p1, p0, Lcom/nuance/swype/input/korean/KoreanInputView$2;->this$0:Lcom/nuance/swype/input/korean/KoreanInputView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 226
    invoke-static {}, Lcom/nuance/swype/input/korean/KoreanInputView;->access$600()Lcom/nuance/dlm/ACKoreanInput;

    move-result-object v0

    if-nez v0, :cond_0

    .line 227
    new-instance v0, Lcom/nuance/dlm/ACKoreanInput;

    iget-object v1, p0, Lcom/nuance/swype/input/korean/KoreanInputView$2;->this$0:Lcom/nuance/swype/input/korean/KoreanInputView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/korean/KoreanInputView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/connect/Connect;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/Connect;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/connect/Connect;->getDLMConnector()Lcom/nuance/swypeconnect/ac/ACDLMConnector;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nuance/dlm/ACKoreanInput;-><init>(Lcom/nuance/swypeconnect/ac/ACDLMConnector;)V

    invoke-static {v0}, Lcom/nuance/swype/input/korean/KoreanInputView;->access$602(Lcom/nuance/dlm/ACKoreanInput;)Lcom/nuance/dlm/ACKoreanInput;

    .line 230
    :cond_0
    return-void
.end method
