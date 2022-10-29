.class Lcom/nuance/speech/SpeechPopupView$5;
.super Ljava/lang/Object;
.source "SpeechPopupView.java"

# interfaces
.implements Landroid/view/View$OnHoverListener;


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
    .line 175
    iput-object p1, p0, Lcom/nuance/speech/SpeechPopupView$5;->this$0:Lcom/nuance/speech/SpeechPopupView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 178
    iget-object v0, p0, Lcom/nuance/speech/SpeechPopupView$5;->this$0:Lcom/nuance/speech/SpeechPopupView;

    invoke-virtual {v0, p2}, Lcom/nuance/speech/SpeechPopupView;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
