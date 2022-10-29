.class Lcom/nuance/swype/input/InputView$3;
.super Ljava/lang/Object;
.source "InputView.java"

# interfaces
.implements Lcom/nuance/swype/input/keyboard/DefaultHWRTouchKeyHandler$KeyUIState;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/InputView;->getDefaultKeyUIStateHandler()Lcom/nuance/swype/input/keyboard/DefaultHWRTouchKeyHandler$KeyUIState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/InputView;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/InputView;)V
    .registers 2
    .param p1, "this$0"    # Lcom/nuance/swype/input/InputView;

    .prologue
    .line 3344
    iput-object p1, p0, Lcom/nuance/swype/input/InputView$3;->this$0:Lcom/nuance/swype/input/InputView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPress(II)V
    .registers 5
    .param p1, "pointerId"    # I
    .param p2, "keyIndex"    # I

    .prologue
    .line 3347
    iget-object v0, p0, Lcom/nuance/swype/input/InputView$3;->this$0:Lcom/nuance/swype/input/InputView;

    iget-object v1, p0, Lcom/nuance/swype/input/InputView$3;->this$0:Lcom/nuance/swype/input/InputView;

    iget-object v1, v1, Lcom/nuance/swype/input/InputView;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;

    invoke-virtual {v0, v1, p2}, Lcom/nuance/swype/input/InputView;->pressKey([Lcom/nuance/swype/input/KeyboardEx$Key;I)V

    .line 3348
    iget-object v0, p0, Lcom/nuance/swype/input/InputView$3;->this$0:Lcom/nuance/swype/input/InputView;

    sget-object v1, Lcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;->Pressed:Lcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;

    invoke-virtual {v0, p2, v1}, Lcom/nuance/swype/input/InputView;->setKeyState(ILcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;)I

    .line 3349
    iget-object v0, p0, Lcom/nuance/swype/input/InputView$3;->this$0:Lcom/nuance/swype/input/InputView;

    invoke-virtual {v0, p2, p1}, Lcom/nuance/swype/input/InputView;->showPreviewKey(II)V

    .line 3350
    return-void
.end method

.method public onRelease(II)V
    .registers 6
    .param p1, "pointerId"    # I
    .param p2, "keyIndex"    # I

    .prologue
    .line 3354
    iget-object v0, p0, Lcom/nuance/swype/input/InputView$3;->this$0:Lcom/nuance/swype/input/InputView;

    iget-object v1, p0, Lcom/nuance/swype/input/InputView$3;->this$0:Lcom/nuance/swype/input/InputView;

    iget-object v1, v1, Lcom/nuance/swype/input/InputView;->mKeys:[Lcom/nuance/swype/input/KeyboardEx$Key;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p2, v2}, Lcom/nuance/swype/input/InputView;->releaseKey([Lcom/nuance/swype/input/KeyboardEx$Key;IZ)V

    .line 3355
    iget-object v0, p0, Lcom/nuance/swype/input/InputView$3;->this$0:Lcom/nuance/swype/input/InputView;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/InputView;->hideKeyPreview(I)V

    .line 3356
    iget-object v0, p0, Lcom/nuance/swype/input/InputView$3;->this$0:Lcom/nuance/swype/input/InputView;

    const/4 v1, -0x1

    sget-object v2, Lcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;->Released:Lcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/input/InputView;->setKeyState(ILcom/nuance/swype/input/KeyboardViewEx$ShowKeyState;)I

    .line 3357
    return-void
.end method
