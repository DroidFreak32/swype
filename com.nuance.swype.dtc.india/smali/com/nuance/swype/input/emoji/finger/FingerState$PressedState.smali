.class abstract Lcom/nuance/swype/input/emoji/finger/FingerState$PressedState;
.super Lcom/nuance/swype/input/emoji/finger/FingerState$ActiveState;
.source "FingerState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/emoji/finger/FingerState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "PressedState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/emoji/finger/FingerState;


# direct methods
.method private constructor <init>(Lcom/nuance/swype/input/emoji/finger/FingerState;)V
    .locals 1

    .prologue
    .line 444
    iput-object p1, p0, Lcom/nuance/swype/input/emoji/finger/FingerState$PressedState;->this$0:Lcom/nuance/swype/input/emoji/finger/FingerState;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/nuance/swype/input/emoji/finger/FingerState$ActiveState;-><init>(Lcom/nuance/swype/input/emoji/finger/FingerState;Lcom/nuance/swype/input/emoji/finger/FingerState$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nuance/swype/input/emoji/finger/FingerState;Lcom/nuance/swype/input/emoji/finger/FingerState$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/nuance/swype/input/emoji/finger/FingerState;
    .param p2, "x1"    # Lcom/nuance/swype/input/emoji/finger/FingerState$1;

    .prologue
    .line 444
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/emoji/finger/FingerState$PressedState;-><init>(Lcom/nuance/swype/input/emoji/finger/FingerState;)V

    return-void
.end method


# virtual methods
.method public onCapture()V
    .locals 2

    .prologue
    .line 448
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/finger/FingerState$PressedState;->this$0:Lcom/nuance/swype/input/emoji/finger/FingerState;

    invoke-static {v0}, Lcom/nuance/swype/input/emoji/finger/FingerState;->access$600(Lcom/nuance/swype/input/emoji/finger/FingerState;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 449
    const-string/jumbo v0, "onCapture()"

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/emoji/finger/FingerState$PressedState;->slog(Ljava/lang/Object;)V

    .line 450
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/finger/FingerState$PressedState;->this$0:Lcom/nuance/swype/input/emoji/finger/FingerState;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/nuance/swype/input/emoji/finger/FingerState;->access$602(Lcom/nuance/swype/input/emoji/finger/FingerState;Z)Z

    .line 452
    :cond_0
    return-void
.end method
