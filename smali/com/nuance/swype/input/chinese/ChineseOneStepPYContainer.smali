.class public Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;
.super Landroid/widget/FrameLayout;
.source "ChineseOneStepPYContainer.java"

# interfaces
.implements Lcom/nuance/swype/input/view/InputLayout$DragListener;


# instance fields
.field private lastKeyboardWidth:I

.field protected mKeyboardView:Lcom/nuance/swype/input/chinese/ChineseInputView;

.field protected mPrefixContainer:Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;

.field private mPrefixListShowing:Z

.field private mPrefixVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    iput-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->mKeyboardView:Lcom/nuance/swype/input/chinese/ChineseInputView;

    .line 20
    iput-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->mPrefixContainer:Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;

    .line 23
    iput-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->mPrefixVisible:Z

    .line 24
    iput-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->mPrefixListShowing:Z

    .line 43
    return-void
.end method


# virtual methods
.method public getInputView()Lcom/nuance/swype/input/InputView;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->mKeyboardView:Lcom/nuance/swype/input/chinese/ChineseInputView;

    if-nez v0, :cond_0

    .line 28
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->initViews()V

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->mKeyboardView:Lcom/nuance/swype/input/chinese/ChineseInputView;

    return-object v0
.end method

.method public getVerContainer()Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->mPrefixContainer:Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;

    return-object v0
.end method

.method public hideContextWindow(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 123
    if-eqz p1, :cond_1

    .line 124
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->removeView(Landroid/view/View;)V

    .line 125
    iget-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->mPrefixVisible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->mPrefixContainer:Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->mPrefixContainer:Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;->setVisibility(I)V

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->mKeyboardView:Lcom/nuance/swype/input/chinese/ChineseInputView;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->setVisibility(I)V

    .line 129
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->requestLayout()V

    .line 131
    :cond_1
    return-void
.end method

.method public hideSymbolList()V
    .locals 2

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 77
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->mPrefixContainer:Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->removeView(Landroid/view/View;)V

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->mPrefixListShowing:Z

    .line 80
    :cond_0
    return-void
.end method

.method public initViews()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 47
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->mKeyboardView:Lcom/nuance/swype/input/chinese/ChineseInputView;

    if-nez v1, :cond_0

    .line 49
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 50
    .local v0, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/nuance/swype/input/IMEApplication;->getThemedLayoutInflater(Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 52
    sget v1, Lcom/nuance/swype/input/R$layout;->chinese_input:I

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/chinese/ChineseInputView;

    iput-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->mKeyboardView:Lcom/nuance/swype/input/chinese/ChineseInputView;

    .line 53
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->mKeyboardView:Lcom/nuance/swype/input/chinese/ChineseInputView;

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->addView(Landroid/view/View;)V

    .line 54
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->mKeyboardView:Lcom/nuance/swype/input/chinese/ChineseInputView;

    invoke-virtual {v1, p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->setContainerView(Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;)V

    .line 56
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    :cond_0
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->mPrefixContainer:Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;

    if-nez v1, :cond_1

    .line 58
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 59
    .restart local v0    # "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/nuance/swype/input/IMEApplication;->getThemedLayoutInflater(Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 61
    sget v1, Lcom/nuance/swype/input/R$layout;->chinese_ver_candidates_list_container:I

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;

    iput-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->mPrefixContainer:Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;

    .line 63
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->mPrefixContainer:Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->mKeyboardView:Lcom/nuance/swype/input/chinese/ChineseInputView;

    sget v3, Lcom/nuance/swype/input/R$style;->CHNPYPrefixListView:I

    invoke-virtual {v1, v2, v3}, Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;->setAttrs(Lcom/nuance/swype/input/chinese/CJKCandidatesListView$OnWordSelectActionListener;I)V

    .line 65
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->mPrefixContainer:Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;

    invoke-virtual {v1}, Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;->initViews()V

    .line 67
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    :cond_1
    return-void
.end method

.method public isPrefixListShowing()Z
    .locals 1

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->mPrefixListShowing:Z

    return v0
.end method

.method public onBeginDrag()V
    .locals 1

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->getInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputView;->onBeginDrag()V

    .line 157
    return-void
.end method

.method public onDrag(II)V
    .locals 2
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .prologue
    .line 161
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->mKeyboardView:Lcom/nuance/swype/input/chinese/ChineseInputView;

    const/16 v1, 0x7f

    invoke-static {v0, v1}, Lcom/nuance/swype/input/view/InputLayout;->setBackAlpha(Landroid/view/View;I)V

    .line 162
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->getInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/nuance/swype/input/InputView;->onDrag(II)V

    .line 163
    return-void
.end method

.method public onEndDrag()V
    .locals 1

    .prologue
    .line 167
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->getInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputView;->onEndDrag()V

    .line 168
    return-void
.end method

.method public onSnapToEdge(II)V
    .locals 2
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .prologue
    .line 172
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->mKeyboardView:Lcom/nuance/swype/input/chinese/ChineseInputView;

    const/16 v1, 0xff

    invoke-static {v0, v1}, Lcom/nuance/swype/input/view/InputLayout;->setBackAlpha(Landroid/view/View;I)V

    .line 173
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->getInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/nuance/swype/input/InputView;->onSnapToEdge(II)V

    .line 174
    return-void
.end method

.method public setSpellPrefix(Z)V
    .locals 1
    .param p1, "prefix"    # Z

    .prologue
    .line 70
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->mPrefixContainer:Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->mPrefixContainer:Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;->setSpellPrefix(Z)V

    .line 73
    :cond_0
    return-void
.end method

.method public showContextWindow(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/16 v1, 0x8

    .line 134
    if-eqz p1, :cond_1

    .line 135
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->mPrefixContainer:Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->mPrefixContainer:Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 137
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->mPrefixContainer:Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;->setVisibility(I)V

    .line 138
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->mPrefixVisible:Z

    .line 143
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->mKeyboardView:Lcom/nuance/swype/input/chinese/ChineseInputView;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->setVisibility(I)V

    .line 144
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->addView(Landroid/view/View;)V

    .line 145
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->bringChildToFront(Landroid/view/View;)V

    .line 146
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->requestLayout()V

    .line 148
    :cond_1
    return-void

    .line 140
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->mPrefixVisible:Z

    goto :goto_0
.end method

.method public showPrefixList(Ljava/util/List;IZ)V
    .locals 8
    .param p2, "activePrefixIndex"    # I
    .param p3, "highlightPrefix"    # Z
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;IZ)V"
        }
    .end annotation

    .prologue
    .line 84
    .local p1, "aPrefixList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->mPrefixContainer:Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;

    if-nez v5, :cond_2

    .line 89
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 90
    .local v1, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/nuance/swype/input/IMEApplication;->getThemedLayoutInflater(Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 92
    sget v5, Lcom/nuance/swype/input/R$layout;->chinese_ver_candidates_list_container:I

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;

    iput-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->mPrefixContainer:Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;

    .line 94
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->mPrefixContainer:Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;

    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->mKeyboardView:Lcom/nuance/swype/input/chinese/ChineseInputView;

    sget v7, Lcom/nuance/swype/input/R$style;->CHNPYPrefixListView:I

    invoke-virtual {v5, v6, v7}, Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;->setAttrs(Lcom/nuance/swype/input/chinese/CJKCandidatesListView$OnWordSelectActionListener;I)V

    .line 96
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->mPrefixContainer:Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;

    invoke-virtual {v5}, Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;->initViews()V

    .line 98
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    :cond_2
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->mPrefixContainer:Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;

    iget-object v6, p0, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->mKeyboardView:Lcom/nuance/swype/input/chinese/ChineseInputView;

    invoke-virtual {v6}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nuance/swype/input/KeyboardEx;->getHeight()I

    move-result v6

    mul-int/lit8 v6, v6, 0x3

    div-int/lit8 v6, v6, 0x4

    invoke-virtual {v5, v6}, Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;->setKeyboardHeight(I)V

    .line 99
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->mPrefixContainer:Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;

    invoke-virtual {v5, p1, p2, p3}, Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;->setCandidates(Ljava/util/List;IZ)V

    .line 100
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->mKeyboardView:Lcom/nuance/swype/input/chinese/ChineseInputView;

    invoke-virtual {v5}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/input/KeyboardEx;->getMinWidth()I

    move-result v0

    .line 101
    .local v0, "currentKeyboardWidth":I
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->getChildCount()I

    move-result v5

    const/4 v6, 0x2

    if-ge v5, v6, :cond_5

    .line 102
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->mKeyboardView:Lcom/nuance/swype/input/chinese/ChineseInputView;

    invoke-virtual {v5}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isTabletDevice()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 104
    div-int/lit8 v4, v0, 0x5

    .line 108
    .local v4, "width":I
    :goto_1
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->mKeyboardView:Lcom/nuance/swype/input/chinese/ChineseInputView;

    invoke-virtual {v5}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/input/KeyboardEx;->getHeight()I

    move-result v5

    mul-int/lit8 v5, v5, 0x3

    div-int/lit8 v5, v5, 0x4

    const/4 v6, 0x3

    invoke-direct {v3, v4, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 110
    .local v3, "params":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->mPrefixContainer:Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;

    invoke-virtual {p0, v5, v3}, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 111
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->mPrefixListShowing:Z

    .line 119
    .end local v3    # "params":Landroid/widget/FrameLayout$LayoutParams;
    .end local v4    # "width":I
    :cond_3
    :goto_2
    iput v0, p0, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->lastKeyboardWidth:I

    goto/16 :goto_0

    .line 106
    :cond_4
    mul-int/lit8 v5, v0, 0xe

    div-int/lit8 v4, v5, 0x64

    .restart local v4    # "width":I
    goto :goto_1

    .line 112
    .end local v4    # "width":I
    :cond_5
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->mKeyboardView:Lcom/nuance/swype/input/chinese/ChineseInputView;

    invoke-virtual {v5}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isTabletDevice()Z

    move-result v5

    if-eqz v5, :cond_3

    iget v5, p0, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->lastKeyboardWidth:I

    if-eq v5, v0, :cond_3

    .line 114
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->mPrefixContainer:Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;

    invoke-virtual {v5}, Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 115
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    div-int/lit8 v5, v0, 0x5

    iput v5, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 116
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->mKeyboardView:Lcom/nuance/swype/input/chinese/ChineseInputView;

    invoke-virtual {v5}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/input/KeyboardEx;->getHeight()I

    move-result v5

    mul-int/lit8 v5, v5, 0x3

    div-int/lit8 v5, v5, 0x4

    iput v5, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 117
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->mPrefixContainer:Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;

    invoke-virtual {p0, v5, v2}, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2
.end method
