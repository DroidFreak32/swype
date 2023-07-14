.class Lcom/nuance/swype/input/emoji/finger/FingerState$4;
.super Lcom/nuance/swype/input/emoji/finger/FingerState$PressedState;
.source "FingerState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/emoji/finger/FingerState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/emoji/finger/FingerState;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/emoji/finger/FingerState;)V
    .locals 1
    .param p1, "this$0"    # Lcom/nuance/swype/input/emoji/finger/FingerState;

    .prologue
    .line 597
    iput-object p1, p0, Lcom/nuance/swype/input/emoji/finger/FingerState$4;->this$0:Lcom/nuance/swype/input/emoji/finger/FingerState;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/nuance/swype/input/emoji/finger/FingerState$PressedState;-><init>(Lcom/nuance/swype/input/emoji/finger/FingerState;Lcom/nuance/swype/input/emoji/finger/FingerState$1;)V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 601
    const-string/jumbo v0, "[long-hold]"

    return-object v0
.end method

.method protected getPressState()Lcom/nuance/swype/input/emoji/finger/FingerInfo$PressState;
    .locals 1

    .prologue
    .line 606
    sget-object v0, Lcom/nuance/swype/input/emoji/finger/FingerInfo$PressState;->LONG:Lcom/nuance/swype/input/emoji/finger/FingerInfo$PressState;

    return-object v0
.end method

.method public onUp(Lcom/nuance/swype/input/emoji/finger/Fingerable;Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "itemUnderFinger"    # Lcom/nuance/swype/input/emoji/finger/Fingerable;
    .param p2, "me"    # Landroid/view/MotionEvent;

    .prologue
    .line 611
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/finger/FingerState$4;->this$0:Lcom/nuance/swype/input/emoji/finger/FingerState;

    invoke-static {v0}, Lcom/nuance/swype/input/emoji/finger/FingerState;->access$000(Lcom/nuance/swype/input/emoji/finger/FingerState;)Lcom/nuance/swype/input/emoji/finger/FingerStateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 612
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/finger/FingerState$4;->this$0:Lcom/nuance/swype/input/emoji/finger/FingerState;

    invoke-static {v0}, Lcom/nuance/swype/input/emoji/finger/FingerState;->access$000(Lcom/nuance/swype/input/emoji/finger/FingerState;)Lcom/nuance/swype/input/emoji/finger/FingerStateListener;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/input/emoji/finger/FingerState$4;->this$0:Lcom/nuance/swype/input/emoji/finger/FingerState;

    invoke-static {v1}, Lcom/nuance/swype/input/emoji/finger/FingerState;->access$100(Lcom/nuance/swype/input/emoji/finger/FingerState;)Lcom/nuance/swype/input/emoji/finger/Fingerable;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/swype/input/emoji/finger/FingerState$4;->this$0:Lcom/nuance/swype/input/emoji/finger/FingerState;

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/nuance/swype/input/emoji/finger/FingerStateListener;->onFingerRelease(Lcom/nuance/swype/input/emoji/finger/Fingerable;Lcom/nuance/swype/input/emoji/finger/FingerInfo;Z)V

    .line 614
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/finger/FingerState$4;->this$0:Lcom/nuance/swype/input/emoji/finger/FingerState;

    iget-object v1, p0, Lcom/nuance/swype/input/emoji/finger/FingerState$4;->this$0:Lcom/nuance/swype/input/emoji/finger/FingerState;

    invoke-static {v1}, Lcom/nuance/swype/input/emoji/finger/FingerState;->access$200(Lcom/nuance/swype/input/emoji/finger/FingerState;)Lcom/nuance/swype/input/emoji/finger/FingerState$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/emoji/finger/FingerState;->changeState(Lcom/nuance/swype/input/emoji/finger/FingerState$State;)V

    .line 615
    return-void
.end method
