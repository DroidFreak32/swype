.class Lcom/nuance/swype/input/SpeechWrapper$3;
.super Ljava/lang/Object;
.source "SpeechWrapper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/SpeechWrapper;->showNoSpeechDetectionAlertDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/SpeechWrapper;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/SpeechWrapper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/nuance/swype/input/SpeechWrapper;

    .prologue
    .line 487
    iput-object p1, p0, Lcom/nuance/swype/input/SpeechWrapper$3;->this$0:Lcom/nuance/swype/input/SpeechWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 489
    iget-object v1, p0, Lcom/nuance/swype/input/SpeechWrapper$3;->this$0:Lcom/nuance/swype/input/SpeechWrapper;

    invoke-static {v1}, Lcom/nuance/swype/input/SpeechWrapper;->access$000(Lcom/nuance/swype/input/SpeechWrapper;)Lcom/nuance/swype/input/InputView;

    move-result-object v0

    .line 490
    .local v0, "hostView":Lcom/nuance/swype/input/InputView;
    if-eqz v0, :cond_0

    .line 491
    iget-object v1, v0, Lcom/nuance/swype/input/InputView;->mIme:Lcom/nuance/swype/input/IME;

    invoke-virtual {v1}, Lcom/nuance/swype/input/IME;->hideDictationLanguageMenu()V

    .line 493
    :cond_0
    iget-object v1, p0, Lcom/nuance/swype/input/SpeechWrapper$3;->this$0:Lcom/nuance/swype/input/SpeechWrapper;

    invoke-virtual {v1}, Lcom/nuance/swype/input/SpeechWrapper;->postRetrySpeechMsg()V

    .line 494
    return-void
.end method
