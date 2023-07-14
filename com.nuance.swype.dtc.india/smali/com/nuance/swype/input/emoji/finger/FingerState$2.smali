.class Lcom/nuance/swype/input/emoji/finger/FingerState$2;
.super Lcom/nuance/swype/input/emoji/finger/FingerState$State;
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
    .line 285
    iput-object p1, p0, Lcom/nuance/swype/input/emoji/finger/FingerState$2;->this$0:Lcom/nuance/swype/input/emoji/finger/FingerState;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/nuance/swype/input/emoji/finger/FingerState$State;-><init>(Lcom/nuance/swype/input/emoji/finger/FingerState;Lcom/nuance/swype/input/emoji/finger/FingerState$1;)V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 289
    const-string/jumbo v0, "[idle]"

    return-object v0
.end method

.method protected getPressState()Lcom/nuance/swype/input/emoji/finger/FingerInfo$PressState;
    .locals 1

    .prologue
    .line 294
    sget-object v0, Lcom/nuance/swype/input/emoji/finger/FingerInfo$PressState;->UNPRESSED:Lcom/nuance/swype/input/emoji/finger/FingerInfo$PressState;

    return-object v0
.end method

.method public isActive()Z
    .locals 1

    .prologue
    .line 354
    const/4 v0, 0x0

    return v0
.end method

.method public onCancel()V
    .locals 0

    .prologue
    .line 312
    return-void
.end method

.method public onDown(Lcom/nuance/swype/input/emoji/finger/Fingerable;Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "objectUnderCursor"    # Lcom/nuance/swype/input/emoji/finger/Fingerable;
    .param p2, "me"    # Landroid/view/MotionEvent;

    .prologue
    .line 321
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    shr-int/lit8 v0, v1, 0x8

    .line 322
    .local v0, "pointerIndex":I
    iget-object v1, p0, Lcom/nuance/swype/input/emoji/finger/FingerState$2;->this$0:Lcom/nuance/swype/input/emoji/finger/FingerState;

    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-static {v1, v2}, Lcom/nuance/swype/input/emoji/finger/FingerState;->access$802(Lcom/nuance/swype/input/emoji/finger/FingerState;F)F

    .line 323
    iget-object v1, p0, Lcom/nuance/swype/input/emoji/finger/FingerState$2;->this$0:Lcom/nuance/swype/input/emoji/finger/FingerState;

    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    invoke-static {v1, v2}, Lcom/nuance/swype/input/emoji/finger/FingerState;->access$902(Lcom/nuance/swype/input/emoji/finger/FingerState;F)F

    .line 324
    iget-object v1, p0, Lcom/nuance/swype/input/emoji/finger/FingerState$2;->this$0:Lcom/nuance/swype/input/emoji/finger/FingerState;

    iget-object v2, p0, Lcom/nuance/swype/input/emoji/finger/FingerState$2;->this$0:Lcom/nuance/swype/input/emoji/finger/FingerState;

    invoke-static {v2}, Lcom/nuance/swype/input/emoji/finger/FingerState;->access$800(Lcom/nuance/swype/input/emoji/finger/FingerState;)F

    move-result v2

    invoke-static {v1, v2}, Lcom/nuance/swype/input/emoji/finger/FingerState;->access$1002(Lcom/nuance/swype/input/emoji/finger/FingerState;F)F

    .line 325
    iget-object v1, p0, Lcom/nuance/swype/input/emoji/finger/FingerState$2;->this$0:Lcom/nuance/swype/input/emoji/finger/FingerState;

    iget-object v2, p0, Lcom/nuance/swype/input/emoji/finger/FingerState$2;->this$0:Lcom/nuance/swype/input/emoji/finger/FingerState;

    invoke-static {v2}, Lcom/nuance/swype/input/emoji/finger/FingerState;->access$900(Lcom/nuance/swype/input/emoji/finger/FingerState;)F

    move-result v2

    invoke-static {v1, v2}, Lcom/nuance/swype/input/emoji/finger/FingerState;->access$1102(Lcom/nuance/swype/input/emoji/finger/FingerState;F)F

    .line 326
    iget-object v1, p0, Lcom/nuance/swype/input/emoji/finger/FingerState$2;->this$0:Lcom/nuance/swype/input/emoji/finger/FingerState;

    iget-object v2, p0, Lcom/nuance/swype/input/emoji/finger/FingerState$2;->this$0:Lcom/nuance/swype/input/emoji/finger/FingerState;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/nuance/swype/input/emoji/finger/FingerState;->access$1302(Lcom/nuance/swype/input/emoji/finger/FingerState;F)F

    move-result v2

    invoke-static {v1, v2}, Lcom/nuance/swype/input/emoji/finger/FingerState;->access$1202(Lcom/nuance/swype/input/emoji/finger/FingerState;F)F

    .line 327
    iget-object v1, p0, Lcom/nuance/swype/input/emoji/finger/FingerState$2;->this$0:Lcom/nuance/swype/input/emoji/finger/FingerState;

    invoke-static {v1, p1}, Lcom/nuance/swype/input/emoji/finger/FingerState;->access$102(Lcom/nuance/swype/input/emoji/finger/FingerState;Lcom/nuance/swype/input/emoji/finger/Fingerable;)Lcom/nuance/swype/input/emoji/finger/Fingerable;

    .line 328
    iget-object v1, p0, Lcom/nuance/swype/input/emoji/finger/FingerState$2;->this$0:Lcom/nuance/swype/input/emoji/finger/FingerState;

    invoke-static {v1, p1}, Lcom/nuance/swype/input/emoji/finger/FingerState;->access$702(Lcom/nuance/swype/input/emoji/finger/FingerState;Lcom/nuance/swype/input/emoji/finger/Fingerable;)Lcom/nuance/swype/input/emoji/finger/Fingerable;

    .line 329
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onDown(): x: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nuance/swype/input/emoji/finger/FingerState$2;->this$0:Lcom/nuance/swype/input/emoji/finger/FingerState;

    invoke-static {v2}, Lcom/nuance/swype/input/emoji/finger/FingerState;->access$1000(Lcom/nuance/swype/input/emoji/finger/FingerState;)F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "; y: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/swype/input/emoji/finger/FingerState$2;->this$0:Lcom/nuance/swype/input/emoji/finger/FingerState;

    invoke-static {v2}, Lcom/nuance/swype/input/emoji/finger/FingerState;->access$1100(Lcom/nuance/swype/input/emoji/finger/FingerState;)F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/emoji/finger/FingerState$2;->slog(Ljava/lang/Object;)V

    .line 330
    if-eqz p1, :cond_1

    .line 332
    iget-object v1, p0, Lcom/nuance/swype/input/emoji/finger/FingerState$2;->this$0:Lcom/nuance/swype/input/emoji/finger/FingerState;

    iget-object v2, p0, Lcom/nuance/swype/input/emoji/finger/FingerState$2;->this$0:Lcom/nuance/swype/input/emoji/finger/FingerState;

    invoke-static {v2}, Lcom/nuance/swype/input/emoji/finger/FingerState;->access$1400(Lcom/nuance/swype/input/emoji/finger/FingerState;)Lcom/nuance/swype/input/emoji/finger/FingerState$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/emoji/finger/FingerState;->changeState(Lcom/nuance/swype/input/emoji/finger/FingerState$State;)V

    .line 333
    iget-object v1, p0, Lcom/nuance/swype/input/emoji/finger/FingerState$2;->this$0:Lcom/nuance/swype/input/emoji/finger/FingerState;

    invoke-static {v1}, Lcom/nuance/swype/input/emoji/finger/FingerState;->access$000(Lcom/nuance/swype/input/emoji/finger/FingerState;)Lcom/nuance/swype/input/emoji/finger/FingerStateListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 334
    iget-object v1, p0, Lcom/nuance/swype/input/emoji/finger/FingerState$2;->this$0:Lcom/nuance/swype/input/emoji/finger/FingerState;

    invoke-static {v1}, Lcom/nuance/swype/input/emoji/finger/FingerState;->access$000(Lcom/nuance/swype/input/emoji/finger/FingerState;)Lcom/nuance/swype/input/emoji/finger/FingerStateListener;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/swype/input/emoji/finger/FingerState$2;->this$0:Lcom/nuance/swype/input/emoji/finger/FingerState;

    invoke-static {v2}, Lcom/nuance/swype/input/emoji/finger/FingerState;->access$100(Lcom/nuance/swype/input/emoji/finger/FingerState;)Lcom/nuance/swype/input/emoji/finger/Fingerable;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/swype/input/emoji/finger/FingerState$2;->this$0:Lcom/nuance/swype/input/emoji/finger/FingerState;

    invoke-interface {v1, v2, v3}, Lcom/nuance/swype/input/emoji/finger/FingerStateListener;->onFingerPress(Lcom/nuance/swype/input/emoji/finger/Fingerable;Lcom/nuance/swype/input/emoji/finger/FingerInfo;)V

    .line 341
    :cond_0
    :goto_0
    return-void

    .line 338
    :cond_1
    const-string/jumbo v1, "onDown(): no item under finger"

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/emoji/finger/FingerState$2;->slog(Ljava/lang/Object;)V

    .line 339
    iget-object v1, p0, Lcom/nuance/swype/input/emoji/finger/FingerState$2;->this$0:Lcom/nuance/swype/input/emoji/finger/FingerState;

    iget-object v2, p0, Lcom/nuance/swype/input/emoji/finger/FingerState$2;->this$0:Lcom/nuance/swype/input/emoji/finger/FingerState;

    invoke-static {v2}, Lcom/nuance/swype/input/emoji/finger/FingerState;->access$300(Lcom/nuance/swype/input/emoji/finger/FingerState;)Lcom/nuance/swype/input/emoji/finger/FingerState$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/emoji/finger/FingerState;->changeState(Lcom/nuance/swype/input/emoji/finger/FingerState$State;)V

    goto :goto_0
.end method

.method public onEnter(Lcom/nuance/swype/input/emoji/finger/FingerState$State;)V
    .locals 4
    .param p1, "last"    # Lcom/nuance/swype/input/emoji/finger/FingerState$State;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 299
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/finger/FingerState$2;->this$0:Lcom/nuance/swype/input/emoji/finger/FingerState;

    invoke-static {v0}, Lcom/nuance/swype/input/emoji/finger/FingerState;->access$500(Lcom/nuance/swype/input/emoji/finger/FingerState;)Lcom/nuance/swype/util/Callback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/util/Callback;->stop()V

    .line 300
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/finger/FingerState$2;->this$0:Lcom/nuance/swype/input/emoji/finger/FingerState;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nuance/swype/input/emoji/finger/FingerState;->access$602(Lcom/nuance/swype/input/emoji/finger/FingerState;Z)Z

    .line 301
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/finger/FingerState$2;->this$0:Lcom/nuance/swype/input/emoji/finger/FingerState;

    invoke-static {v0, v3}, Lcom/nuance/swype/input/emoji/finger/FingerState;->access$102(Lcom/nuance/swype/input/emoji/finger/FingerState;Lcom/nuance/swype/input/emoji/finger/Fingerable;)Lcom/nuance/swype/input/emoji/finger/Fingerable;

    .line 302
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/finger/FingerState$2;->this$0:Lcom/nuance/swype/input/emoji/finger/FingerState;

    invoke-static {v0, v3}, Lcom/nuance/swype/input/emoji/finger/FingerState;->access$702(Lcom/nuance/swype/input/emoji/finger/FingerState;Lcom/nuance/swype/input/emoji/finger/Fingerable;)Lcom/nuance/swype/input/emoji/finger/Fingerable;

    .line 303
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/finger/FingerState$2;->this$0:Lcom/nuance/swype/input/emoji/finger/FingerState;

    iget-object v1, p0, Lcom/nuance/swype/input/emoji/finger/FingerState$2;->this$0:Lcom/nuance/swype/input/emoji/finger/FingerState;

    invoke-static {v1, v2}, Lcom/nuance/swype/input/emoji/finger/FingerState;->access$902(Lcom/nuance/swype/input/emoji/finger/FingerState;F)F

    move-result v1

    invoke-static {v0, v1}, Lcom/nuance/swype/input/emoji/finger/FingerState;->access$802(Lcom/nuance/swype/input/emoji/finger/FingerState;F)F

    .line 304
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/finger/FingerState$2;->this$0:Lcom/nuance/swype/input/emoji/finger/FingerState;

    iget-object v1, p0, Lcom/nuance/swype/input/emoji/finger/FingerState$2;->this$0:Lcom/nuance/swype/input/emoji/finger/FingerState;

    invoke-static {v1}, Lcom/nuance/swype/input/emoji/finger/FingerState;->access$800(Lcom/nuance/swype/input/emoji/finger/FingerState;)F

    move-result v1

    invoke-static {v0, v1}, Lcom/nuance/swype/input/emoji/finger/FingerState;->access$1002(Lcom/nuance/swype/input/emoji/finger/FingerState;F)F

    .line 305
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/finger/FingerState$2;->this$0:Lcom/nuance/swype/input/emoji/finger/FingerState;

    iget-object v1, p0, Lcom/nuance/swype/input/emoji/finger/FingerState$2;->this$0:Lcom/nuance/swype/input/emoji/finger/FingerState;

    invoke-static {v1}, Lcom/nuance/swype/input/emoji/finger/FingerState;->access$900(Lcom/nuance/swype/input/emoji/finger/FingerState;)F

    move-result v1

    invoke-static {v0, v1}, Lcom/nuance/swype/input/emoji/finger/FingerState;->access$1102(Lcom/nuance/swype/input/emoji/finger/FingerState;F)F

    .line 306
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/finger/FingerState$2;->this$0:Lcom/nuance/swype/input/emoji/finger/FingerState;

    iget-object v1, p0, Lcom/nuance/swype/input/emoji/finger/FingerState$2;->this$0:Lcom/nuance/swype/input/emoji/finger/FingerState;

    invoke-static {v1, v2}, Lcom/nuance/swype/input/emoji/finger/FingerState;->access$1302(Lcom/nuance/swype/input/emoji/finger/FingerState;F)F

    move-result v1

    invoke-static {v0, v1}, Lcom/nuance/swype/input/emoji/finger/FingerState;->access$1202(Lcom/nuance/swype/input/emoji/finger/FingerState;F)F

    .line 307
    return-void
.end method

.method public onEscape()V
    .locals 0

    .prologue
    .line 317
    return-void
.end method

.method public onMove(Lcom/nuance/swype/input/emoji/finger/Fingerable;FFZ)V
    .locals 0
    .param p1, "itemUnderFinger"    # Lcom/nuance/swype/input/emoji/finger/Fingerable;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "isHistorical"    # Z

    .prologue
    .line 346
    return-void
.end method

.method public onUp(Lcom/nuance/swype/input/emoji/finger/Fingerable;Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "item"    # Lcom/nuance/swype/input/emoji/finger/Fingerable;
    .param p2, "me"    # Landroid/view/MotionEvent;

    .prologue
    .line 351
    return-void
.end method
