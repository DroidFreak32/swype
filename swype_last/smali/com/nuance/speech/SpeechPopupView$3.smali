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
    .registers 2
    .param p1, "this$0"    # Lcom/nuance/speech/SpeechPopupView;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/nuance/speech/SpeechPopupView$3;->this$0:Lcom/nuance/speech/SpeechPopupView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/nuance/speech/SpeechPopupView$3;->this$0:Lcom/nuance/speech/SpeechPopupView;

    iget-object v0, v0, Lcom/nuance/speech/SpeechPopupView;->mPopupViewState:Lcom/nuance/speech/SpeechPopupView$PopupViewState;

    sget-object v1, Lcom/nuance/speech/SpeechPopupView$PopupViewState;->PopupView_Listening:Lcom/nuance/speech/SpeechPopupView$PopupViewState;

    if-ne v0, v1, :cond_e

    .line 134
    iget-object v0, p0, Lcom/nuance/speech/SpeechPopupView$3;->this$0:Lcom/nuance/speech/SpeechPopupView;

    invoke-virtual {v0}, Lcom/nuance/speech/SpeechPopupView;->onTapToPauseButtonClicked()V

    .line 142
    :cond_d
    :goto_d
    return-void

    .line 135
    :cond_e
    iget-object v0, p0, Lcom/nuance/speech/SpeechPopupView$3;->this$0:Lcom/nuance/speech/SpeechPopupView;

    iget-object v0, v0, Lcom/nuance/speech/SpeechPopupView;->mPopupViewState:Lcom/nuance/speech/SpeechPopupView$PopupViewState;

    sget-object v1, Lcom/nuance/speech/SpeechPopupView$PopupViewState;->PopupView_Paused:Lcom/nuance/speech/SpeechPopupView$PopupViewState;

    if-ne v0, v1, :cond_1c

    .line 136
    iget-object v0, p0, Lcom/nuance/speech/SpeechPopupView$3;->this$0:Lcom/nuance/speech/SpeechPopupView;

    invoke-virtual {v0}, Lcom/nuance/speech/SpeechPopupView;->onTapToSpeakButtonClicked()V

    goto :goto_d

    .line 137
    :cond_1c
    iget-object v0, p0, Lcom/nuance/speech/SpeechPopupView$3;->this$0:Lcom/nuance/speech/SpeechPopupView;

    iget-object v0, v0, Lcom/nuance/speech/SpeechPopupView;->mPopupViewState:Lcom/nuance/speech/SpeechPopupView$PopupViewState;

    sget-object v1, Lcom/nuance/speech/SpeechPopupView$PopupViewState;->PopupView_Processing:Lcom/nuance/speech/SpeechPopupView$PopupViewState;

    if-ne v0, v1, :cond_d

    .line 138
    iget-object v0, p0, Lcom/nuance/speech/SpeechPopupView$3;->this$0:Lcom/nuance/speech/SpeechPopupView;

    invoke-virtual {v0}, Lcom/nuance/speech/SpeechPopupView;->onTapToSpeakButtonClicked()V

    goto :goto_d
.end method
