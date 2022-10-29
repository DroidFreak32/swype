.class Lcom/nuance/speech/SpeechPopupView$4;
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
    .line 153
    iput-object p1, p0, Lcom/nuance/speech/SpeechPopupView$4;->this$0:Lcom/nuance/speech/SpeechPopupView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 155
    iget-object v0, p0, Lcom/nuance/speech/SpeechPopupView$4;->this$0:Lcom/nuance/speech/SpeechPopupView;

    invoke-virtual {v0}, Lcom/nuance/speech/SpeechPopupView;->showDictationLanguages()V

    .line 156
    iget-object v0, p0, Lcom/nuance/speech/SpeechPopupView$4;->this$0:Lcom/nuance/speech/SpeechPopupView;

    invoke-virtual {v0}, Lcom/nuance/speech/SpeechPopupView;->onTapToPauseButtonClicked()V

    .line 157
    return-void
.end method
