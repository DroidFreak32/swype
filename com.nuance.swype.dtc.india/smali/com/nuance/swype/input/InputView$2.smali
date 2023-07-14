.class Lcom/nuance/swype/input/InputView$2;
.super Ljava/lang/Object;
.source "InputView.java"

# interfaces
.implements Lcom/nuance/swype/input/keyboard/KeyboardTouchEventDispatcher$FlingGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/InputView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/InputView;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/InputView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/nuance/swype/input/InputView;

    .prologue
    .line 3323
    iput-object p1, p0, Lcom/nuance/swype/input/InputView$2;->this$0:Lcom/nuance/swype/input/InputView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFlingDown()Z
    .locals 1

    .prologue
    .line 3339
    iget-object v0, p0, Lcom/nuance/swype/input/InputView$2;->this$0:Lcom/nuance/swype/input/InputView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputView;->handleScrollDown()Z

    move-result v0

    return v0
.end method

.method public onFlingLeft()Z
    .locals 1

    .prologue
    .line 3326
    iget-object v0, p0, Lcom/nuance/swype/input/InputView$2;->this$0:Lcom/nuance/swype/input/InputView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputView;->handleScrollLeft()Z

    move-result v0

    return v0
.end method

.method public onFlingRight()Z
    .locals 1

    .prologue
    .line 3331
    iget-object v0, p0, Lcom/nuance/swype/input/InputView$2;->this$0:Lcom/nuance/swype/input/InputView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputView;->handleScrollRight()Z

    move-result v0

    return v0
.end method

.method public onFlingUp()Z
    .locals 1

    .prologue
    .line 3335
    iget-object v0, p0, Lcom/nuance/swype/input/InputView$2;->this$0:Lcom/nuance/swype/input/InputView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputView;->handleScrollUp()Z

    move-result v0

    return v0
.end method
