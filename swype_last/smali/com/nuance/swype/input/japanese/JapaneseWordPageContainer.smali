.class public Lcom/nuance/swype/input/japanese/JapaneseWordPageContainer;
.super Landroid/widget/FrameLayout;
.source "JapaneseWordPageContainer.java"

# interfaces
.implements Lcom/nuance/swype/input/view/InputLayout$DragListener;


# instance fields
.field protected mInflater:Landroid/view/LayoutInflater;

.field protected mKeyboardView:Lcom/nuance/swype/input/japanese/JapaneseInputView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/nuance/swype/input/japanese/JapaneseWordPageContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseWordPageContainer;->mKeyboardView:Lcom/nuance/swype/input/japanese/JapaneseInputView;

    .line 32
    return-void
.end method


# virtual methods
.method public getInputView()Lcom/nuance/swype/input/InputView;
    .registers 2

    .prologue
    .line 20
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseWordPageContainer;->mKeyboardView:Lcom/nuance/swype/input/japanese/JapaneseInputView;

    if-nez v0, :cond_7

    .line 21
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseWordPageContainer;->initViews()V

    .line 23
    :cond_7
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseWordPageContainer;->mKeyboardView:Lcom/nuance/swype/input/japanese/JapaneseInputView;

    return-object v0
.end method

.method public hideContextWindow(Landroid/view/View;)V
    .registers 4
    .param p1, "aContextWindow"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 50
    if-eqz p1, :cond_13

    .line 51
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/japanese/JapaneseWordPageContainer;->removeView(Landroid/view/View;)V

    .line 52
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseWordPageContainer;->mKeyboardView:Lcom/nuance/swype/input/japanese/JapaneseInputView;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->setVisibility(I)V

    .line 53
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseWordPageContainer;->requestLayout()V

    .line 54
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseWordPageContainer;->mKeyboardView:Lcom/nuance/swype/input/japanese/JapaneseInputView;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->setContextWindowShowing(Z)V

    .line 56
    :cond_13
    return-void
.end method

.method public initViews()V
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams",
            "PrivateResource"
        }
    .end annotation

    .prologue
    .line 37
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseWordPageContainer;->mKeyboardView:Lcom/nuance/swype/input/japanese/JapaneseInputView;

    if-nez v0, :cond_2a

    .line 39
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseWordPageContainer;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseWordPageContainer;->mInflater:Landroid/view/LayoutInflater;

    .line 41
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseWordPageContainer;->mInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/nuance/swype/input/R$layout;->japanese_input:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;

    iput-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseWordPageContainer;->mKeyboardView:Lcom/nuance/swype/input/japanese/JapaneseInputView;

    .line 43
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseWordPageContainer;->mKeyboardView:Lcom/nuance/swype/input/japanese/JapaneseInputView;

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/japanese/JapaneseWordPageContainer;->addView(Landroid/view/View;)V

    .line 45
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseWordPageContainer;->mKeyboardView:Lcom/nuance/swype/input/japanese/JapaneseInputView;

    invoke-virtual {v0, p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->setContainerView(Lcom/nuance/swype/input/japanese/JapaneseWordPageContainer;)V

    .line 47
    :cond_2a
    return-void
.end method

.method public onBeginDrag()V
    .registers 3

    .prologue
    .line 71
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseWordPageContainer;->mKeyboardView:Lcom/nuance/swype/input/japanese/JapaneseInputView;

    const/16 v1, 0x7f

    invoke-static {v0, v1}, Lcom/nuance/swype/input/view/InputLayout;->setBackAlpha(Landroid/view/View;I)V

    .line 72
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseWordPageContainer;->getInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputView;->onBeginDrag()V

    .line 73
    return-void
.end method

.method public onDrag(II)V
    .registers 4
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseWordPageContainer;->getInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/nuance/swype/input/InputView;->onDrag(II)V

    .line 78
    return-void
.end method

.method public onEndDrag()V
    .registers 3

    .prologue
    .line 82
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseWordPageContainer;->mKeyboardView:Lcom/nuance/swype/input/japanese/JapaneseInputView;

    const/16 v1, 0xff

    invoke-static {v0, v1}, Lcom/nuance/swype/input/view/InputLayout;->setBackAlpha(Landroid/view/View;I)V

    .line 83
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseWordPageContainer;->getInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputView;->onEndDrag()V

    .line 84
    return-void
.end method

.method public onSnapToEdge(II)V
    .registers 4
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseWordPageContainer;->getInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/nuance/swype/input/InputView;->onSnapToEdge(II)V

    .line 89
    return-void
.end method

.method public showContextWindow(Landroid/view/View;)V
    .registers 4
    .param p1, "aContextWindow"    # Landroid/view/View;

    .prologue
    .line 59
    if-eqz p1, :cond_1c

    .line 60
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseWordPageContainer;->mKeyboardView:Lcom/nuance/swype/input/japanese/JapaneseInputView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->setVisibility(I)V

    .line 61
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/japanese/JapaneseWordPageContainer;->addView(Landroid/view/View;)V

    .line 62
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 63
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/japanese/JapaneseWordPageContainer;->bringChildToFront(Landroid/view/View;)V

    .line 64
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseWordPageContainer;->requestLayout()V

    .line 65
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseWordPageContainer;->mKeyboardView:Lcom/nuance/swype/input/japanese/JapaneseInputView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->setContextWindowShowing(Z)V

    .line 67
    :cond_1c
    return-void
.end method
