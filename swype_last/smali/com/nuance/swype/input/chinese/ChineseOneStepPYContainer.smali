.class public Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;
.super Landroid/widget/FrameLayout;
.source "ChineseOneStepPYContainer.java"

# interfaces
.implements Lcom/nuance/swype/input/view/InputLayout$DragListener;


# instance fields
.field private lastKeyboardWidth:I

.field protected mKeyboardViewWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/nuance/swype/input/chinese/ChineseInputView;",
            ">;"
        }
    .end annotation
.end field

.field protected mPrefixContainer:Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;

.field private mPrefixVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->mPrefixContainer:Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->mPrefixVisible:Z

    .line 47
    return-void
.end method


# virtual methods
.method public getInputView()Lcom/nuance/swype/input/InputView;
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->mKeyboardViewWeakRef:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_7

    .line 29
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->initViews()V

    .line 31
    :cond_7
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->mKeyboardViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/InputView;

    return-object v0
.end method

.method public getKeyboardView()Lcom/nuance/swype/input/chinese/ChineseInputView;
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->mKeyboardViewWeakRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_d

    .line 36
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->mKeyboardViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/chinese/ChineseInputView;

    .line 38
    :goto_c
    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public getVerContainer()Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;
    .registers 2

    .prologue
    .line 177
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->mPrefixContainer:Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;

    return-object v0
.end method

.method public hideContextWindow(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 147
    if-eqz p1, :cond_24

    .line 148
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->removeView(Landroid/view/View;)V

    .line 149
    iget-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->mPrefixVisible:Z

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->mPrefixContainer:Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;

    if-eqz v0, :cond_13

    .line 150
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->mPrefixContainer:Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;->setVisibility(I)V

    .line 152
    :cond_13
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->getKeyboardView()Lcom/nuance/swype/input/chinese/ChineseInputView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->setVisibility(I)V

    .line 153
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->requestLayout()V

    .line 154
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->getKeyboardView()Lcom/nuance/swype/input/chinese/ChineseInputView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->setContextWindowShowing(Z)V

    .line 156
    :cond_24
    return-void
.end method

.method public hideSymbolList()V
    .registers 3

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_c

    .line 86
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->mPrefixContainer:Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->removeView(Landroid/view/View;)V

    .line 88
    :cond_c
    return-void
.end method

.method public initViews()V
    .registers 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 51
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->mKeyboardViewWeakRef:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->mKeyboardViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_36

    .line 53
    :cond_d
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 54
    .local v1, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/nuance/swype/input/IMEApplication;->getThemedLayoutInflater(Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 56
    sget v4, Lcom/nuance/swype/input/R$layout;->chinese_input:I

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/nuance/swype/input/chinese/ChineseInputView;

    .line 57
    .local v2, "keyboardView":Lcom/nuance/swype/input/chinese/ChineseInputView;
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->mKeyboardViewWeakRef:Ljava/lang/ref/WeakReference;

    .line 58
    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->addView(Landroid/view/View;)V

    .line 59
    invoke-virtual {v2, p0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->setContainerView(Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;)V

    .line 63
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    .end local v2    # "keyboardView":Lcom/nuance/swype/input/chinese/ChineseInputView;
    :cond_36
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->mPrefixContainer:Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;

    if-nez v3, :cond_7c

    .line 65
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 66
    .restart local v1    # "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    .line 67
    .local v0, "app":Lcom/nuance/swype/input/IMEApplication;
    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/IMEApplication;->getThemedLayoutInflater(Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 68
    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getThemeLoader()Lcom/nuance/swype/plugin/ThemeLoader;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/nuance/swype/plugin/ThemeLoader;->setLayoutInflaterFactory(Landroid/view/LayoutInflater;)V

    .line 69
    sget v3, Lcom/nuance/swype/input/R$layout;->chinese_ver_candidates_list_container:I

    invoke-virtual {v1, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;

    iput-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->mPrefixContainer:Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;

    .line 71
    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getThemeLoader()Lcom/nuance/swype/plugin/ThemeLoader;

    move-result-object v3

    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->mPrefixContainer:Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;

    invoke-virtual {v3, v4}, Lcom/nuance/swype/plugin/ThemeLoader;->applyTheme(Landroid/view/View;)V

    .line 72
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->mPrefixContainer:Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->mKeyboardViewWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nuance/swype/input/chinese/CJKCandidatesListView$OnWordSelectActionListener;

    sget v5, Lcom/nuance/swype/input/R$style;->CHNPYPrefixListView:I

    invoke-virtual {v4, v3, v5}, Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;->setAttrs(Lcom/nuance/swype/input/chinese/CJKCandidatesListView$OnWordSelectActionListener;I)V

    .line 74
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->mPrefixContainer:Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;

    invoke-virtual {v3}, Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;->initViews()V

    .line 76
    .end local v0    # "app":Lcom/nuance/swype/input/IMEApplication;
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    :cond_7c
    return-void
.end method

.method public onBeginDrag()V
    .registers 2

    .prologue
    .line 182
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->getInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputView;->onBeginDrag()V

    .line 183
    return-void
.end method

.method public onDrag(II)V
    .registers 5
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .prologue
    .line 187
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->getKeyboardView()Lcom/nuance/swype/input/chinese/ChineseInputView;

    move-result-object v0

    const/16 v1, 0x7f

    invoke-static {v0, v1}, Lcom/nuance/swype/input/view/InputLayout;->setBackAlpha(Landroid/view/View;I)V

    .line 188
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->getInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/nuance/swype/input/InputView;->onDrag(II)V

    .line 189
    return-void
.end method

.method public onEndDrag()V
    .registers 2

    .prologue
    .line 193
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->getInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputView;->onEndDrag()V

    .line 194
    return-void
.end method

.method public onSnapToEdge(II)V
    .registers 5
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .prologue
    .line 198
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->getKeyboardView()Lcom/nuance/swype/input/chinese/ChineseInputView;

    move-result-object v0

    const/16 v1, 0xff

    invoke-static {v0, v1}, Lcom/nuance/swype/input/view/InputLayout;->setBackAlpha(Landroid/view/View;I)V

    .line 199
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->getInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/nuance/swype/input/InputView;->onSnapToEdge(II)V

    .line 200
    return-void
.end method

.method public setSpellPrefix(Z)V
    .registers 3
    .param p1, "prefix"    # Z

    .prologue
    .line 79
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->mPrefixContainer:Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;

    if-eqz v0, :cond_9

    .line 80
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->mPrefixContainer:Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;->setSpellPrefix(Z)V

    .line 82
    :cond_9
    return-void
.end method

.method public showContextWindow(Landroid/view/View;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x1

    .line 159
    if-eqz p1, :cond_2f

    .line 160
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->mPrefixContainer:Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;

    if-eqz v0, :cond_18

    .line 161
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->mPrefixContainer:Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;->getVisibility()I

    move-result v0

    if-nez v0, :cond_30

    .line 162
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->mPrefixContainer:Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;

    invoke-virtual {v0, v2}, Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;->setVisibility(I)V

    .line 163
    iput-boolean v1, p0, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->mPrefixVisible:Z

    .line 168
    :cond_18
    :goto_18
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->getKeyboardView()Lcom/nuance/swype/input/chinese/ChineseInputView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/nuance/swype/input/chinese/ChineseInputView;->setVisibility(I)V

    .line 169
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->addView(Landroid/view/View;)V

    .line 170
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->bringChildToFront(Landroid/view/View;)V

    .line 171
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->requestLayout()V

    .line 172
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->getKeyboardView()Lcom/nuance/swype/input/chinese/ChineseInputView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/chinese/ChineseInputView;->setContextWindowShowing(Z)V

    .line 174
    :cond_2f
    return-void

    .line 165
    :cond_30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->mPrefixVisible:Z

    goto :goto_18
.end method

.method public showPrefixList(Ljava/util/List;IZ)V
    .registers 14
    .param p2, "activePrefixIndex"    # I
    .param p3, "highlightPrefix"    # Z
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams",
            "NewApi"
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
    .line 95
    .local p1, "aPrefixList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    if-eqz p1, :cond_e

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_e

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->getKeyboardView()Lcom/nuance/swype/input/chinese/ChineseInputView;

    move-result-object v7

    if-nez v7, :cond_f

    .line 144
    :cond_e
    :goto_e
    return-void

    .line 98
    :cond_f
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    .line 99
    .local v0, "app":Lcom/nuance/swype/input/IMEApplication;
    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->mPrefixContainer:Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;

    if-nez v7, :cond_5a

    .line 100
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 101
    .local v3, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/nuance/swype/input/IMEApplication;->getThemedLayoutInflater(Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 102
    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getThemeLoader()Lcom/nuance/swype/plugin/ThemeLoader;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/nuance/swype/plugin/ThemeLoader;->setLayoutInflaterFactory(Landroid/view/LayoutInflater;)V

    .line 103
    sget v7, Lcom/nuance/swype/input/R$layout;->chinese_ver_candidates_list_container:I

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;

    iput-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->mPrefixContainer:Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;

    .line 105
    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getThemeLoader()Lcom/nuance/swype/plugin/ThemeLoader;

    move-result-object v7

    iget-object v8, p0, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->mPrefixContainer:Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;

    invoke-virtual {v7, v8}, Lcom/nuance/swype/plugin/ThemeLoader;->applyTheme(Landroid/view/View;)V

    .line 106
    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->mPrefixContainer:Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->getKeyboardView()Lcom/nuance/swype/input/chinese/ChineseInputView;

    move-result-object v8

    sget v9, Lcom/nuance/swype/input/R$style;->CHNPYPrefixListView:I

    invoke-virtual {v7, v8, v9}, Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;->setAttrs(Lcom/nuance/swype/input/chinese/CJKCandidatesListView$OnWordSelectActionListener;I)V

    .line 108
    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->mPrefixContainer:Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;

    invoke-virtual {v7}, Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;->initViews()V

    .line 110
    .end local v3    # "inflater":Landroid/view/LayoutInflater;
    :cond_5a
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->getKeyboardView()Lcom/nuance/swype/input/chinese/ChineseInputView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nuance/swype/input/KeyboardEx;->getHeight()I

    move-result v7

    mul-int/lit8 v7, v7, 0x3

    div-int/lit8 v6, v7, 0x4

    .line 111
    .local v6, "prefixContainerHeight":I
    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->mPrefixContainer:Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;

    invoke-virtual {v7, v6}, Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;->setKeyboardHeight(I)V

    .line 113
    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->mPrefixContainer:Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;

    invoke-virtual {v7, p1, p2, p3}, Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;->setCandidates(Ljava/util/List;IZ)V

    .line 114
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->getKeyboardView()Lcom/nuance/swype/input/chinese/ChineseInputView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nuance/swype/input/chinese/ChineseInputView;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nuance/swype/input/KeyboardEx;->getMinWidth()I

    move-result v2

    .line 117
    .local v2, "currentKeyboardWidth":I
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->getKeyboardView()Lcom/nuance/swype/input/chinese/ChineseInputView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isTabletDevice()Z

    move-result v7

    if-eqz v7, :cond_a2

    .line 118
    div-int/lit8 v1, v2, 0x5

    .line 123
    .local v1, "containerWidth":I
    :goto_8c
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->getChildCount()I

    move-result v7

    const/4 v8, 0x2

    if-ge v7, v8, :cond_a7

    .line 124
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v7, 0x3

    invoke-direct {v5, v1, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 126
    .local v5, "params":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->mPrefixContainer:Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;

    invoke-virtual {p0, v7, v5}, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 143
    .end local v5    # "params":Landroid/widget/FrameLayout$LayoutParams;
    :cond_9e
    :goto_9e
    iput v2, p0, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->lastKeyboardWidth:I

    goto/16 :goto_e

    .line 120
    .end local v1    # "containerWidth":I
    :cond_a2
    mul-int/lit8 v7, v2, 0xe

    div-int/lit8 v1, v7, 0x64

    .restart local v1    # "containerWidth":I
    goto :goto_8c

    .line 127
    :cond_a7
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->getKeyboardView()Lcom/nuance/swype/input/chinese/ChineseInputView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nuance/swype/input/chinese/ChineseInputView;->isTabletDevice()Z

    move-result v7

    if-eqz v7, :cond_c7

    iget v7, p0, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->lastKeyboardWidth:I

    if-eq v7, v2, :cond_c7

    .line 129
    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->mPrefixContainer:Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;

    invoke-virtual {v7}, Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 130
    .local v4, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v4, :cond_c1

    .line 131
    iput v6, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 132
    iput v1, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 134
    :cond_c1
    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->mPrefixContainer:Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;

    invoke-virtual {p0, v7, v4}, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_9e

    .line 136
    .end local v4    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_c7
    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->mPrefixContainer:Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;

    invoke-virtual {v7}, Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 137
    .restart local v4    # "lp":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v4, :cond_9e

    iget v7, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v7, v6, :cond_d7

    iget v7, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq v7, v1, :cond_9e

    .line 138
    :cond_d7
    iput v6, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 139
    iput v1, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 140
    iget-object v7, p0, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->mPrefixContainer:Lcom/nuance/swype/input/chinese/VerCandidatesListContainer;

    invoke-virtual {p0, v7, v4}, Lcom/nuance/swype/input/chinese/ChineseOneStepPYContainer;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_9e
.end method
