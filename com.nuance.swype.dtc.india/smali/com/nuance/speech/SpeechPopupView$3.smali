.class Lcom/nuance/speech/SpeechPopupView$3;
.super Ljava/lang/Object;
.source "SpeechPopupView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/speech/SpeechPopupView;->createViews(IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/speech/SpeechPopupView;


# direct methods
.method constructor <init>(Lcom/nuance/speech/SpeechPopupView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/nuance/speech/SpeechPopupView;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/nuance/speech/SpeechPopupView$3;->this$0:Lcom/nuance/speech/SpeechPopupView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/nuance/speech/SpeechPopupView$3;->this$0:Lcom/nuance/speech/SpeechPopupView;

    iget-object v0, v0, Lcom/nuance/speech/SpeechPopupView;->mPopupViewState:Lcom/nuance/speech/SpeechPopupView$PopupViewState;

    sget-object v1, Lcom/nuance/speech/SpeechPopupView$PopupViewState;->PopupView_Listening:Lcom/nuance/speech/SpeechPopupView$PopupViewState;

    if-ne v0, v1, :cond_1

    .line 134
    iget-object v0, p0, Lcom/nuance/speech/SpeechPopupView$3;->this$0:Lcom/nuance/speech/SpeechPopupView;

    invoke-virtual {v0}, Lcom/nuance/speech/SpeechPopupView;->onTapToPauseButtonClicked()V

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 135
    :cond_1
    iget-object v0, p0, Lcom/nuance/speech/SpeechPopupView$3;->this$0:Lcom/nuance/speech/SpeechPopupView;

    iget-object v0, v0, Lcom/nuance/speech/SpeechPopupView;->mPopupViewState:Lcom/nuance/speech/SpeechPopupView$PopupViewState;

    sget-object v1, Lcom/nuance/speech/SpeechPopupView$PopupViewState;->PopupView_Paused:Lcom/nuance/speech/SpeechPopupView$PopupViewState;

    if-ne v0, v1, :cond_2

    .line 136
    iget-object v0, p0, Lcom/nuance/speech/SpeechPopupView$3;->this$0:Lcom/nuance/speech/SpeechPopupView;

    invoke-virtual {v0}, Lcom/nuance/speech/SpeechPopupView;->onTapToSpeakButtonClicked()V

    goto :goto_0

    .line 137
    :cond_2
    iget-object v0, p0, Lcom/nuance/speech/SpeechPopupView$3;->this$0:Lcom/nuance/speech/SpeechPopupView;

    iget-object v0, v0, Lcom/nuance/speech/SpeechPopupView;->mPopupViewState:Lcom/nuance/speech/SpeechPopupView$PopupViewState;

    sget-object v1, Lcom/nuance/speech/SpeechPopupView$PopupViewState;->PopupView_Processing:Lcom/nuance/speech/SpeechPopupView$PopupViewState;

    if-ne v0, v1, :cond_0

    .line 138
    iget-object v0, p0, Lcom/nuance/speech/SpeechPopupView$3;->this$0:Lcom/nuance/speech/SpeechPopupView;

    invoke-virtual {v0}, Lcom/nuance/speech/SpeechPopupView;->onTapToSpeakButtonClicked()V

    goto :goto_0
.end method
