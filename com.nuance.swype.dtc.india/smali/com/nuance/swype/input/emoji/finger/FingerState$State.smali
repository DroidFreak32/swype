.class abstract Lcom/nuance/swype/input/emoji/finger/FingerState$State;
.super Ljava/lang/Object;
.source "FingerState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/emoji/finger/FingerState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "State"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/emoji/finger/FingerState;


# direct methods
.method private constructor <init>(Lcom/nuance/swype/input/emoji/finger/FingerState;)V
    .locals 0

    .prologue
    .line 184
    iput-object p1, p0, Lcom/nuance/swype/input/emoji/finger/FingerState$State;->this$0:Lcom/nuance/swype/input/emoji/finger/FingerState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nuance/swype/input/emoji/finger/FingerState;Lcom/nuance/swype/input/emoji/finger/FingerState$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/nuance/swype/input/emoji/finger/FingerState;
    .param p2, "x1"    # Lcom/nuance/swype/input/emoji/finger/FingerState$1;

    .prologue
    .line 184
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/emoji/finger/FingerState$State;-><init>(Lcom/nuance/swype/input/emoji/finger/FingerState;)V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 267
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getPressState()Lcom/nuance/swype/input/emoji/finger/FingerInfo$PressState;
    .locals 1

    .prologue
    .line 193
    sget-object v0, Lcom/nuance/swype/input/emoji/finger/FingerInfo$PressState;->UNPRESSED:Lcom/nuance/swype/input/emoji/finger/FingerInfo$PressState;

    return-object v0
.end method

.method public isActive()Z
    .locals 1

    .prologue
    .line 274
    const/4 v0, 0x1

    return v0
.end method

.method public isDoublePressPending()Z
    .locals 1

    .prologue
    .line 205
    const/4 v0, 0x0

    return v0
.end method

.method protected isDown()Z
    .locals 1

    .prologue
    .line 198
    const/4 v0, 0x0

    return v0
.end method

.method public onCancel()V
    .locals 3

    .prologue
    .line 234
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/finger/FingerState$State;->this$0:Lcom/nuance/swype/input/emoji/finger/FingerState;

    invoke-static {v0}, Lcom/nuance/swype/input/emoji/finger/FingerState;->access$000(Lcom/nuance/swype/input/emoji/finger/FingerState;)Lcom/nuance/swype/input/emoji/finger/FingerStateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/finger/FingerState$State;->this$0:Lcom/nuance/swype/input/emoji/finger/FingerState;

    invoke-static {v0}, Lcom/nuance/swype/input/emoji/finger/FingerState;->access$000(Lcom/nuance/swype/input/emoji/finger/FingerState;)Lcom/nuance/swype/input/emoji/finger/FingerStateListener;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/input/emoji/finger/FingerState$State;->this$0:Lcom/nuance/swype/input/emoji/finger/FingerState;

    invoke-static {v1}, Lcom/nuance/swype/input/emoji/finger/FingerState;->access$100(Lcom/nuance/swype/input/emoji/finger/FingerState;)Lcom/nuance/swype/input/emoji/finger/Fingerable;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/swype/input/emoji/finger/FingerState$State;->this$0:Lcom/nuance/swype/input/emoji/finger/FingerState;

    invoke-interface {v0, v1, v2}, Lcom/nuance/swype/input/emoji/finger/FingerStateListener;->onFingerCancel(Lcom/nuance/swype/input/emoji/finger/Fingerable;Lcom/nuance/swype/input/emoji/finger/FingerInfo;)V

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/finger/FingerState$State;->this$0:Lcom/nuance/swype/input/emoji/finger/FingerState;

    iget-object v1, p0, Lcom/nuance/swype/input/emoji/finger/FingerState$State;->this$0:Lcom/nuance/swype/input/emoji/finger/FingerState;

    invoke-static {v1}, Lcom/nuance/swype/input/emoji/finger/FingerState;->access$200(Lcom/nuance/swype/input/emoji/finger/FingerState;)Lcom/nuance/swype/input/emoji/finger/FingerState$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/emoji/finger/FingerState;->changeState(Lcom/nuance/swype/input/emoji/finger/FingerState$State;)V

    .line 238
    return-void
.end method

.method public onCapture()V
    .locals 1

    .prologue
    .line 216
    const-string/jumbo v0, "onCapture(): unhandled"

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/emoji/finger/FingerState$State;->slog(Ljava/lang/Object;)V

    .line 217
    return-void
.end method

.method public onDown(Lcom/nuance/swype/input/emoji/finger/Fingerable;Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "itemUnderFinger"    # Lcom/nuance/swype/input/emoji/finger/Fingerable;
    .param p2, "me"    # Landroid/view/MotionEvent;

    .prologue
    .line 212
    const-string/jumbo v0, "onDown(): unhandled"

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/emoji/finger/FingerState$State;->slog(Ljava/lang/Object;)V

    .line 213
    return-void
.end method

.method public onEnter(Lcom/nuance/swype/input/emoji/finger/FingerState$State;)V
    .locals 0
    .param p1, "last"    # Lcom/nuance/swype/input/emoji/finger/FingerState$State;

    .prologue
    .line 187
    return-void
.end method

.method public onEscape()V
    .locals 4

    .prologue
    .line 245
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/finger/FingerState$State;->this$0:Lcom/nuance/swype/input/emoji/finger/FingerState;

    invoke-static {v0}, Lcom/nuance/swype/input/emoji/finger/FingerState;->access$100(Lcom/nuance/swype/input/emoji/finger/FingerState;)Lcom/nuance/swype/input/emoji/finger/Fingerable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/emoji/finger/FingerState$State;->this$0:Lcom/nuance/swype/input/emoji/finger/FingerState;

    invoke-static {v0}, Lcom/nuance/swype/input/emoji/finger/FingerState;->access$000(Lcom/nuance/swype/input/emoji/finger/FingerState;)Lcom/nuance/swype/input/emoji/finger/FingerStateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/finger/FingerState$State;->this$0:Lcom/nuance/swype/input/emoji/finger/FingerState;

    invoke-static {v0}, Lcom/nuance/swype/input/emoji/finger/FingerState;->access$000(Lcom/nuance/swype/input/emoji/finger/FingerState;)Lcom/nuance/swype/input/emoji/finger/FingerStateListener;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/input/emoji/finger/FingerState$State;->this$0:Lcom/nuance/swype/input/emoji/finger/FingerState;

    invoke-static {v1}, Lcom/nuance/swype/input/emoji/finger/FingerState;->access$100(Lcom/nuance/swype/input/emoji/finger/FingerState;)Lcom/nuance/swype/input/emoji/finger/Fingerable;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/swype/input/emoji/finger/FingerState$State;->this$0:Lcom/nuance/swype/input/emoji/finger/FingerState;

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/nuance/swype/input/emoji/finger/FingerStateListener;->onFingerRelease(Lcom/nuance/swype/input/emoji/finger/Fingerable;Lcom/nuance/swype/input/emoji/finger/FingerInfo;Z)V

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/finger/FingerState$State;->this$0:Lcom/nuance/swype/input/emoji/finger/FingerState;

    iget-object v1, p0, Lcom/nuance/swype/input/emoji/finger/FingerState$State;->this$0:Lcom/nuance/swype/input/emoji/finger/FingerState;

    invoke-static {v1}, Lcom/nuance/swype/input/emoji/finger/FingerState;->access$300(Lcom/nuance/swype/input/emoji/finger/FingerState;)Lcom/nuance/swype/input/emoji/finger/FingerState$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/emoji/finger/FingerState;->changeState(Lcom/nuance/swype/input/emoji/finger/FingerState$State;)V

    .line 250
    return-void
.end method

.method public onExit(Lcom/nuance/swype/input/emoji/finger/FingerState$State;)V
    .locals 0
    .param p1, "last"    # Lcom/nuance/swype/input/emoji/finger/FingerState$State;

    .prologue
    .line 190
    return-void
.end method

.method public onMove(Lcom/nuance/swype/input/emoji/finger/Fingerable;FFZ)V
    .locals 1
    .param p1, "itemUnderFinger"    # Lcom/nuance/swype/input/emoji/finger/Fingerable;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "isHistorical"    # Z

    .prologue
    .line 220
    const-string/jumbo v0, "onMove(): unhandled"

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/emoji/finger/FingerState$State;->slog(Ljava/lang/Object;)V

    .line 221
    return-void
.end method

.method public onTimeout()V
    .locals 1

    .prologue
    .line 256
    const-string/jumbo v0, "onTimeout(): unhandled"

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/emoji/finger/FingerState$State;->slog(Ljava/lang/Object;)V

    .line 257
    return-void
.end method

.method public onUp(Lcom/nuance/swype/input/emoji/finger/Fingerable;Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "item"    # Lcom/nuance/swype/input/emoji/finger/Fingerable;
    .param p2, "me"    # Landroid/view/MotionEvent;

    .prologue
    .line 227
    const-string/jumbo v0, "onUp(): unhandled"

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/emoji/finger/FingerState$State;->slog(Ljava/lang/Object;)V

    .line 228
    return-void
.end method

.method protected slog(Ljava/lang/Object;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/Object;

    .prologue
    .line 264
    return-void
.end method
