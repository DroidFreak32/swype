.class Lcom/nuance/swype/input/emoji/finger/FingerState$UnpressedState;
.super Lcom/nuance/swype/input/emoji/finger/FingerState$ActiveState;
.source "FingerState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/emoji/finger/FingerState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UnpressedState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/emoji/finger/FingerState;


# direct methods
.method private constructor <init>(Lcom/nuance/swype/input/emoji/finger/FingerState;)V
    .locals 1

    .prologue
    .line 520
    iput-object p1, p0, Lcom/nuance/swype/input/emoji/finger/FingerState$UnpressedState;->this$0:Lcom/nuance/swype/input/emoji/finger/FingerState;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/nuance/swype/input/emoji/finger/FingerState$ActiveState;-><init>(Lcom/nuance/swype/input/emoji/finger/FingerState;Lcom/nuance/swype/input/emoji/finger/FingerState$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nuance/swype/input/emoji/finger/FingerState;Lcom/nuance/swype/input/emoji/finger/FingerState$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/nuance/swype/input/emoji/finger/FingerState;
    .param p2, "x1"    # Lcom/nuance/swype/input/emoji/finger/FingerState$1;

    .prologue
    .line 520
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/emoji/finger/FingerState$UnpressedState;-><init>(Lcom/nuance/swype/input/emoji/finger/FingerState;)V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 524
    const-string/jumbo v0, "[unpressed]"

    return-object v0
.end method

.method protected getPressState()Lcom/nuance/swype/input/emoji/finger/FingerInfo$PressState;
    .locals 1

    .prologue
    .line 529
    sget-object v0, Lcom/nuance/swype/input/emoji/finger/FingerInfo$PressState;->UNPRESSED:Lcom/nuance/swype/input/emoji/finger/FingerInfo$PressState;

    return-object v0
.end method

.method public onEnter(Lcom/nuance/swype/input/emoji/finger/FingerState$State;)V
    .locals 1
    .param p1, "last"    # Lcom/nuance/swype/input/emoji/finger/FingerState$State;

    .prologue
    .line 534
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/finger/FingerState$UnpressedState;->this$0:Lcom/nuance/swype/input/emoji/finger/FingerState;

    invoke-static {v0}, Lcom/nuance/swype/input/emoji/finger/FingerState;->access$500(Lcom/nuance/swype/input/emoji/finger/FingerState;)Lcom/nuance/swype/util/Callback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/util/Callback;->stop()V

    .line 535
    return-void
.end method

.method public onEscape()V
    .locals 0

    .prologue
    .line 543
    return-void
.end method

.method public onExit(Lcom/nuance/swype/input/emoji/finger/FingerState$State;)V
    .locals 0
    .param p1, "next"    # Lcom/nuance/swype/input/emoji/finger/FingerState$State;

    .prologue
    .line 539
    return-void
.end method
