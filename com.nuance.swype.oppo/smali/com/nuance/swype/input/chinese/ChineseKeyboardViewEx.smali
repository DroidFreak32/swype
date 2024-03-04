.class public Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;
.super Lcom/nuance/swype/input/KeyboardViewEx;
.source "ChineseKeyboardViewEx.java"


# instance fields
.field private inputView:Lcom/nuance/swype/input/InputView;

.field symbolSourceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field wordSourceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/nuance/swype/input/KeyboardViewEx;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;->inputView:Lcom/nuance/swype/input/InputView;

    .line 28
    return-void
.end method

.method private isGridCandidateTableKey(Lcom/nuance/swype/input/KeyboardEx$Key;)Z
    .locals 1
    .param p1, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;->inputView:Lcom/nuance/swype/input/InputView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;->inputView:Lcom/nuance/swype/input/InputView;

    iget-boolean v0, v0, Lcom/nuance/swype/input/InputView;->gridCandidateTableVisible:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->text:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected getKeyTypeface()Landroid/graphics/Typeface;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    return-object v0
.end method

.method protected handleLongPress(Lcom/nuance/swype/input/KeyboardEx$Key;)Z
    .locals 5
    .param p1, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 36
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;->isGridCandidateTableKey(Lcom/nuance/swype/input/KeyboardEx$Key;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 37
    invoke-super {p0, p1}, Lcom/nuance/swype/input/KeyboardViewEx;->handleLongPress(Lcom/nuance/swype/input/KeyboardEx$Key;)Z

    move-result v1

    .line 60
    :goto_0
    return v1

    .line 40
    :cond_0
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;->inputView:Lcom/nuance/swype/input/InputView;

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    iget-object v1, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->text:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->text:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-le v1, v2, :cond_1

    iget v1, p0, Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;->mCurrentKey:I

    const/4 v4, -0x1

    if-eq v1, v4, :cond_1

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;->wordSourceList:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;->wordSourceList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget v1, p0, Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;->mCurrentKey:I

    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;->wordSourceList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt v1, v4, :cond_2

    :cond_1
    move v1, v3

    .line 45
    goto :goto_0

    .line 48
    :cond_2
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;->wordSourceList:Ljava/util/List;

    iget v4, p0, Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;->mCurrentKey:I

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 50
    .local v0, "wdSource":I
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    move v1, v3

    .line 60
    goto :goto_0

    .line 52
    :pswitch_1
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;->inputView:Lcom/nuance/swype/input/InputView;

    iget-object v3, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->text:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Lcom/nuance/swype/input/InputView;->showRemoveUdbWordDialog(Ljava/lang/String;I)V

    move v1, v2

    .line 53
    goto :goto_0

    .line 56
    :pswitch_2
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->text:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Lcom/nuance/swype/util/ContactUtils;->getContactNumberFromPhoneBook(Landroid/content/Context;Ljava/lang/String;I)V

    move v1, v2

    .line 58
    goto :goto_0

    .line 50
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected invalidateKeyboardImage()V
    .locals 0

    .prologue
    .line 107
    invoke-super {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->invalidateKeyboardImage()V

    .line 108
    return-void
.end method

.method public setInputView(Lcom/nuance/swype/input/InputView;)V
    .locals 0
    .param p1, "view"    # Lcom/nuance/swype/input/InputView;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;->inputView:Lcom/nuance/swype/input/InputView;

    .line 71
    return-void
.end method

.method public setSymbolSource(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 93
    .local p1, "aSymbolSourceList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;->symbolSourceList:Ljava/util/List;

    if-nez v1, :cond_1

    .line 94
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;->symbolSourceList:Ljava/util/List;

    .line 98
    :goto_0
    if-nez p1, :cond_2

    .line 104
    :cond_0
    return-void

    .line 96
    :cond_1
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;->symbolSourceList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    goto :goto_0

    .line 101
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 102
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;->symbolSourceList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public setWordSource(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 73
    .local p1, "aWordSourceList":Ljava/util/List;, "Ljava/util/List<Ljava/util/concurrent/atomic/AtomicInteger;>;"
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;->wordSourceList:Ljava/util/List;

    if-nez v1, :cond_1

    .line 74
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;->wordSourceList:Ljava/util/List;

    .line 78
    :goto_0
    if-nez p1, :cond_2

    .line 84
    :cond_0
    return-void

    .line 76
    :cond_1
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;->wordSourceList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    goto :goto_0

    .line 81
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 82
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;->wordSourceList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
