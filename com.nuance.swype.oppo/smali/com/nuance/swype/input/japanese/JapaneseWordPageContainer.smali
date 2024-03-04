.class public Lcom/nuance/swype/input/japanese/JapaneseWordPageContainer;
.super Landroid/widget/FrameLayout;
.source "JapaneseWordPageContainer.java"

# interfaces
.implements Lcom/nuance/swype/input/view/InputLayout$DragListener;


# instance fields
.field protected mInflater:Landroid/view/LayoutInflater;

.field protected mKeyboardView:Lcom/nuance/swype/input/japanese/JapaneseInputView;

.field private mPrefixListShowing:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/nuance/swype/input/japanese/JapaneseWordPageContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseWordPageContainer;->mKeyboardView:Lcom/nuance/swype/input/japanese/JapaneseInputView;

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/input/japanese/JapaneseWordPageContainer;->mPrefixListShowing:Z

    .line 36
    return-void
.end method


# virtual methods
.method public getInputView()Lcom/nuance/swype/input/InputView;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseWordPageContainer;->mKeyboardView:Lcom/nuance/swype/input/japanese/JapaneseInputView;

    if-nez v0, :cond_0

    .line 21
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseWordPageContainer;->initViews()V

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseWordPageContainer;->mKeyboardView:Lcom/nuance/swype/input/japanese/JapaneseInputView;

    return-object v0
.end method

.method public hideContextWindow(Landroid/view/View;)V
    .locals 2
    .param p1, "aContextWindow"    # Landroid/view/View;

    .prologue
    .line 53
    if-eqz p1, :cond_0

    .line 54
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/japanese/JapaneseWordPageContainer;->removeView(Landroid/view/View;)V

    .line 55
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseWordPageContainer;->mKeyboardView:Lcom/nuance/swype/input/japanese/JapaneseInputView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->setVisibility(I)V

    .line 56
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseWordPageContainer;->requestLayout()V

    .line 58
    :cond_0
    return-void
.end method

.method public initViews()V
    .locals 3

    .prologue
    .line 40
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseWordPageContainer;->mKeyboardView:Lcom/nuance/swype/input/japanese/JapaneseInputView;

    if-nez v0, :cond_0

    .line 42
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseWordPageContainer;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseWordPageContainer;->mInflater:Landroid/view/LayoutInflater;

    .line 44
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseWordPageContainer;->mInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/nuance/swype/input/R$layout;->japanese_input:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/japanese/JapaneseInputView;

    iput-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseWordPageContainer;->mKeyboardView:Lcom/nuance/swype/input/japanese/JapaneseInputView;

    .line 46
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseWordPageContainer;->mKeyboardView:Lcom/nuance/swype/input/japanese/JapaneseInputView;

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/japanese/JapaneseWordPageContainer;->addView(Landroid/view/View;)V

    .line 48
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseWordPageContainer;->mKeyboardView:Lcom/nuance/swype/input/japanese/JapaneseInputView;

    invoke-virtual {v0, p0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->setContainerView(Lcom/nuance/swype/input/japanese/JapaneseWordPageContainer;)V

    .line 50
    :cond_0
    return-void
.end method

.method public isPrefixListShowing()Z
    .locals 1

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/nuance/swype/input/japanese/JapaneseWordPageContainer;->mPrefixListShowing:Z

    return v0
.end method

.method public onBeginDrag()V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseWordPageContainer;->mKeyboardView:Lcom/nuance/swype/input/japanese/JapaneseInputView;

    const/16 v1, 0x7f

    invoke-static {v0, v1}, Lcom/nuance/swype/input/view/InputLayout;->setBackAlpha(Landroid/view/View;I)V

    .line 73
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseWordPageContainer;->getInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputView;->onBeginDrag()V

    .line 74
    return-void
.end method

.method public onDrag(II)V
    .locals 1
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseWordPageContainer;->getInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/nuance/swype/input/InputView;->onDrag(II)V

    .line 79
    return-void
.end method

.method public onEndDrag()V
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseWordPageContainer;->mKeyboardView:Lcom/nuance/swype/input/japanese/JapaneseInputView;

    const/16 v1, 0xff

    invoke-static {v0, v1}, Lcom/nuance/swype/input/view/InputLayout;->setBackAlpha(Landroid/view/View;I)V

    .line 84
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseWordPageContainer;->getInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputView;->onEndDrag()V

    .line 85
    return-void
.end method

.method public onSnapToEdge(II)V
    .locals 1
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseWordPageContainer;->getInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/nuance/swype/input/InputView;->onSnapToEdge(II)V

    .line 90
    return-void
.end method

.method public showContextWindow(Landroid/view/View;)V
    .locals 2
    .param p1, "aContextWindow"    # Landroid/view/View;

    .prologue
    .line 61
    if-eqz p1, :cond_0

    .line 62
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseWordPageContainer;->mKeyboardView:Lcom/nuance/swype/input/japanese/JapaneseInputView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->setVisibility(I)V

    .line 63
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/japanese/JapaneseWordPageContainer;->addView(Landroid/view/View;)V

    .line 64
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 65
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/japanese/JapaneseWordPageContainer;->bringChildToFront(Landroid/view/View;)V

    .line 66
    invoke-virtual {p0}, Lcom/nuance/swype/input/japanese/JapaneseWordPageContainer;->requestLayout()V

    .line 68
    :cond_0
    return-void
.end method
