.class Lcom/nuance/swype/input/emoji/finger/FingerStateManager$Finger;
.super Ljava/lang/Object;
.source "FingerStateManager.java"

# interfaces
.implements Lcom/nuance/swype/input/emoji/finger/FingerStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/emoji/finger/FingerStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Finger"
.end annotation


# instance fields
.field private fingerState:Lcom/nuance/swype/input/emoji/finger/FingerState;

.field private pointerId:I

.field final synthetic this$0:Lcom/nuance/swype/input/emoji/finger/FingerStateManager;


# direct methods
.method public constructor <init>(Lcom/nuance/swype/input/emoji/finger/FingerStateManager;I)V
    .registers 5
    .param p2, "pointerId"    # I

    .prologue
    .line 196
    iput-object p1, p0, Lcom/nuance/swype/input/emoji/finger/FingerStateManager$Finger;->this$0:Lcom/nuance/swype/input/emoji/finger/FingerStateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 197
    iput p2, p0, Lcom/nuance/swype/input/emoji/finger/FingerStateManager$Finger;->pointerId:I

    .line 198
    new-instance v0, Lcom/nuance/swype/input/emoji/finger/FingerState;

    # getter for: Lcom/nuance/swype/input/emoji/finger/FingerStateManager;->fingerStateParams:Lcom/nuance/swype/input/emoji/finger/FingerState$Params;
    invoke-static {p1}, Lcom/nuance/swype/input/emoji/finger/FingerStateManager;->access$200(Lcom/nuance/swype/input/emoji/finger/FingerStateManager;)Lcom/nuance/swype/input/emoji/finger/FingerState$Params;

    move-result-object v1

    invoke-direct {v0, p0, p2, v1}, Lcom/nuance/swype/input/emoji/finger/FingerState;-><init>(Lcom/nuance/swype/input/emoji/finger/FingerStateListener;ILcom/nuance/swype/input/emoji/finger/FingerState$Params;)V

    iput-object v0, p0, Lcom/nuance/swype/input/emoji/finger/FingerStateManager$Finger;->fingerState:Lcom/nuance/swype/input/emoji/finger/FingerState;

    .line 199
    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 2

    .prologue
    .line 250
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/finger/FingerStateManager$Finger;->fingerState:Lcom/nuance/swype/input/emoji/finger/FingerState;

    invoke-virtual {v0}, Lcom/nuance/swype/input/emoji/finger/FingerState;->onPointerCancel()V

    .line 251
    return-void
.end method

.method public onFingerCancel(Lcom/nuance/swype/input/emoji/finger/Fingerable;Lcom/nuance/swype/input/emoji/finger/FingerInfo;)V
    .registers 4
    .param p1, "object"    # Lcom/nuance/swype/input/emoji/finger/Fingerable;
    .param p2, "info"    # Lcom/nuance/swype/input/emoji/finger/FingerInfo;

    .prologue
    .line 238
    instance-of v0, p1, Lcom/nuance/swype/input/emoji/finger/FingerStateListener;

    if-eqz v0, :cond_a

    move-object v0, p1

    .line 239
    check-cast v0, Lcom/nuance/swype/input/emoji/finger/FingerStateListener;

    invoke-interface {v0, p1, p2}, Lcom/nuance/swype/input/emoji/finger/FingerStateListener;->onFingerCancel(Lcom/nuance/swype/input/emoji/finger/Fingerable;Lcom/nuance/swype/input/emoji/finger/FingerInfo;)V

    .line 241
    :cond_a
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/finger/FingerStateManager$Finger;->this$0:Lcom/nuance/swype/input/emoji/finger/FingerStateManager;

    # getter for: Lcom/nuance/swype/input/emoji/finger/FingerStateManager;->listener:Lcom/nuance/swype/input/emoji/finger/FingerStateListener;
    invoke-static {v0}, Lcom/nuance/swype/input/emoji/finger/FingerStateManager;->access$300(Lcom/nuance/swype/input/emoji/finger/FingerStateManager;)Lcom/nuance/swype/input/emoji/finger/FingerStateListener;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 242
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/finger/FingerStateManager$Finger;->this$0:Lcom/nuance/swype/input/emoji/finger/FingerStateManager;

    # getter for: Lcom/nuance/swype/input/emoji/finger/FingerStateManager;->listener:Lcom/nuance/swype/input/emoji/finger/FingerStateListener;
    invoke-static {v0}, Lcom/nuance/swype/input/emoji/finger/FingerStateManager;->access$300(Lcom/nuance/swype/input/emoji/finger/FingerStateManager;)Lcom/nuance/swype/input/emoji/finger/FingerStateListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/nuance/swype/input/emoji/finger/FingerStateListener;->onFingerCancel(Lcom/nuance/swype/input/emoji/finger/Fingerable;Lcom/nuance/swype/input/emoji/finger/FingerInfo;)V

    .line 244
    :cond_1b
    return-void
.end method

.method public onFingerMove(Lcom/nuance/swype/input/emoji/finger/Fingerable;Lcom/nuance/swype/input/emoji/finger/FingerInfo;)V
    .registers 4
    .param p1, "object"    # Lcom/nuance/swype/input/emoji/finger/Fingerable;
    .param p2, "info"    # Lcom/nuance/swype/input/emoji/finger/FingerInfo;

    .prologue
    .line 216
    instance-of v0, p1, Lcom/nuance/swype/input/emoji/finger/FingerStateListener;

    if-eqz v0, :cond_a

    move-object v0, p1

    .line 217
    check-cast v0, Lcom/nuance/swype/input/emoji/finger/FingerStateListener;

    invoke-interface {v0, p1, p2}, Lcom/nuance/swype/input/emoji/finger/FingerStateListener;->onFingerMove(Lcom/nuance/swype/input/emoji/finger/Fingerable;Lcom/nuance/swype/input/emoji/finger/FingerInfo;)V

    .line 219
    :cond_a
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/finger/FingerStateManager$Finger;->this$0:Lcom/nuance/swype/input/emoji/finger/FingerStateManager;

    # getter for: Lcom/nuance/swype/input/emoji/finger/FingerStateManager;->listener:Lcom/nuance/swype/input/emoji/finger/FingerStateListener;
    invoke-static {v0}, Lcom/nuance/swype/input/emoji/finger/FingerStateManager;->access$300(Lcom/nuance/swype/input/emoji/finger/FingerStateManager;)Lcom/nuance/swype/input/emoji/finger/FingerStateListener;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 220
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/finger/FingerStateManager$Finger;->this$0:Lcom/nuance/swype/input/emoji/finger/FingerStateManager;

    # getter for: Lcom/nuance/swype/input/emoji/finger/FingerStateManager;->listener:Lcom/nuance/swype/input/emoji/finger/FingerStateListener;
    invoke-static {v0}, Lcom/nuance/swype/input/emoji/finger/FingerStateManager;->access$300(Lcom/nuance/swype/input/emoji/finger/FingerStateManager;)Lcom/nuance/swype/input/emoji/finger/FingerStateListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/nuance/swype/input/emoji/finger/FingerStateListener;->onFingerMove(Lcom/nuance/swype/input/emoji/finger/Fingerable;Lcom/nuance/swype/input/emoji/finger/FingerInfo;)V

    .line 222
    :cond_1b
    return-void
.end method

.method public onFingerPress(Lcom/nuance/swype/input/emoji/finger/Fingerable;Lcom/nuance/swype/input/emoji/finger/FingerInfo;)V
    .registers 4
    .param p1, "object"    # Lcom/nuance/swype/input/emoji/finger/Fingerable;
    .param p2, "info"    # Lcom/nuance/swype/input/emoji/finger/FingerInfo;

    .prologue
    .line 205
    instance-of v0, p1, Lcom/nuance/swype/input/emoji/finger/FingerStateListener;

    if-eqz v0, :cond_a

    move-object v0, p1

    .line 206
    check-cast v0, Lcom/nuance/swype/input/emoji/finger/FingerStateListener;

    invoke-interface {v0, p1, p2}, Lcom/nuance/swype/input/emoji/finger/FingerStateListener;->onFingerPress(Lcom/nuance/swype/input/emoji/finger/Fingerable;Lcom/nuance/swype/input/emoji/finger/FingerInfo;)V

    .line 208
    :cond_a
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/finger/FingerStateManager$Finger;->this$0:Lcom/nuance/swype/input/emoji/finger/FingerStateManager;

    # getter for: Lcom/nuance/swype/input/emoji/finger/FingerStateManager;->listener:Lcom/nuance/swype/input/emoji/finger/FingerStateListener;
    invoke-static {v0}, Lcom/nuance/swype/input/emoji/finger/FingerStateManager;->access$300(Lcom/nuance/swype/input/emoji/finger/FingerStateManager;)Lcom/nuance/swype/input/emoji/finger/FingerStateListener;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 209
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/finger/FingerStateManager$Finger;->this$0:Lcom/nuance/swype/input/emoji/finger/FingerStateManager;

    # getter for: Lcom/nuance/swype/input/emoji/finger/FingerStateManager;->listener:Lcom/nuance/swype/input/emoji/finger/FingerStateListener;
    invoke-static {v0}, Lcom/nuance/swype/input/emoji/finger/FingerStateManager;->access$300(Lcom/nuance/swype/input/emoji/finger/FingerStateManager;)Lcom/nuance/swype/input/emoji/finger/FingerStateListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/nuance/swype/input/emoji/finger/FingerStateListener;->onFingerPress(Lcom/nuance/swype/input/emoji/finger/Fingerable;Lcom/nuance/swype/input/emoji/finger/FingerInfo;)V

    .line 211
    :cond_1b
    return-void
.end method

.method public onFingerRelease(Lcom/nuance/swype/input/emoji/finger/Fingerable;Lcom/nuance/swype/input/emoji/finger/FingerInfo;Z)V
    .registers 5
    .param p1, "object"    # Lcom/nuance/swype/input/emoji/finger/Fingerable;
    .param p2, "info"    # Lcom/nuance/swype/input/emoji/finger/FingerInfo;
    .param p3, "isEscape"    # Z

    .prologue
    .line 227
    instance-of v0, p1, Lcom/nuance/swype/input/emoji/finger/FingerStateListener;

    if-eqz v0, :cond_a

    move-object v0, p1

    .line 228
    check-cast v0, Lcom/nuance/swype/input/emoji/finger/FingerStateListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/nuance/swype/input/emoji/finger/FingerStateListener;->onFingerRelease(Lcom/nuance/swype/input/emoji/finger/Fingerable;Lcom/nuance/swype/input/emoji/finger/FingerInfo;Z)V

    .line 230
    :cond_a
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/finger/FingerStateManager$Finger;->this$0:Lcom/nuance/swype/input/emoji/finger/FingerStateManager;

    # getter for: Lcom/nuance/swype/input/emoji/finger/FingerStateManager;->listener:Lcom/nuance/swype/input/emoji/finger/FingerStateListener;
    invoke-static {v0}, Lcom/nuance/swype/input/emoji/finger/FingerStateManager;->access$300(Lcom/nuance/swype/input/emoji/finger/FingerStateManager;)Lcom/nuance/swype/input/emoji/finger/FingerStateListener;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 231
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/finger/FingerStateManager$Finger;->this$0:Lcom/nuance/swype/input/emoji/finger/FingerStateManager;

    # getter for: Lcom/nuance/swype/input/emoji/finger/FingerStateManager;->listener:Lcom/nuance/swype/input/emoji/finger/FingerStateListener;
    invoke-static {v0}, Lcom/nuance/swype/input/emoji/finger/FingerStateManager;->access$300(Lcom/nuance/swype/input/emoji/finger/FingerStateManager;)Lcom/nuance/swype/input/emoji/finger/FingerStateListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/nuance/swype/input/emoji/finger/FingerStateListener;->onFingerRelease(Lcom/nuance/swype/input/emoji/finger/Fingerable;Lcom/nuance/swype/input/emoji/finger/FingerInfo;Z)V

    .line 233
    :cond_1b
    return-void
.end method

.method public onMove(Lcom/nuance/swype/input/emoji/finger/Fingerable;FFZ)V
    .registers 6
    .param p1, "dummyItem"    # Lcom/nuance/swype/input/emoji/finger/Fingerable;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "isHistorical"    # Z

    .prologue
    .line 285
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/finger/FingerStateManager$Finger;->fingerState:Lcom/nuance/swype/input/emoji/finger/FingerState;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/nuance/swype/input/emoji/finger/FingerState;->onPointerMove(Lcom/nuance/swype/input/emoji/finger/Fingerable;FFZ)V

    .line 286
    return-void
.end method

.method public onTouch(Lcom/nuance/swype/input/emoji/finger/Fingerable;ILandroid/view/MotionEvent;)V
    .registers 9
    .param p1, "object"    # Lcom/nuance/swype/input/emoji/finger/Fingerable;
    .param p2, "action"    # I
    .param p3, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 256
    packed-switch p2, :pswitch_data_30

    .line 274
    :pswitch_3
    sget-object v0, Lcom/nuance/swype/input/emoji/finger/FingerStateManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "onTouch(): unrecognized action: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 277
    :goto_1e
    :pswitch_1e
    return-void

    .line 259
    :pswitch_1f
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/finger/FingerStateManager$Finger;->fingerState:Lcom/nuance/swype/input/emoji/finger/FingerState;

    invoke-virtual {v0, p1, p3}, Lcom/nuance/swype/input/emoji/finger/FingerState;->onPointerDown(Lcom/nuance/swype/input/emoji/finger/Fingerable;Landroid/view/MotionEvent;)V

    goto :goto_1e

    .line 268
    :pswitch_25
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/finger/FingerStateManager$Finger;->fingerState:Lcom/nuance/swype/input/emoji/finger/FingerState;

    invoke-virtual {v0, p1, p3}, Lcom/nuance/swype/input/emoji/finger/FingerState;->onPointerRelease(Lcom/nuance/swype/input/emoji/finger/Fingerable;Landroid/view/MotionEvent;)V

    goto :goto_1e

    .line 271
    :pswitch_2b
    invoke-virtual {p0}, Lcom/nuance/swype/input/emoji/finger/FingerStateManager$Finger;->cancel()V

    goto :goto_1e

    .line 256
    nop

    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_25
        :pswitch_1e
        :pswitch_2b
        :pswitch_3
        :pswitch_1f
    .end packed-switch
.end method

.method public updateVelocityTracker(Landroid/view/MotionEvent;)V
    .registers 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 281
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/finger/FingerStateManager$Finger;->fingerState:Lcom/nuance/swype/input/emoji/finger/FingerState;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/emoji/finger/FingerState;->onVelocityData(Landroid/view/MotionEvent;)V

    .line 282
    return-void
.end method
