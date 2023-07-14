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
    .line 79
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
    .line 102
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

    .line 61
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

    .line 43
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget v1, p0, Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;->mCurrentKey:I

    iget-object v4, p0, Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;->wordSourceList:Ljava/util/List;

    .line 44
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
    sparse-switch v0, :sswitch_data_0

    move v1, v3

    .line 61
    goto :goto_0

    .line 53
    :sswitch_0
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;->inputView:Lcom/nuance/swype/input/InputView;

    iget-object v3, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->text:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Lcom/nuance/swype/input/InputView;->showRemoveUdbWordDialog(Ljava/lang/String;I)V

    move v1, v2

    .line 54
    goto :goto_0

    .line 57
    :sswitch_1
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->text:Ljava/lang/CharSequence;

    .line 58
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 57
    invoke-static {v1, v3, v0}, Lcom/nuance/swype/util/ContactUtils;->getContactNumberFromPhoneBook(Landroid/content/Context;Ljava/lang/String;I)V

    move v1, v2

    .line 59
    goto :goto_0

    .line 50
    nop

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_0
        0x6 -> :sswitch_1
        0x9 -> :sswitch_1
        0xe -> :sswitch_0
    .end sparse-switch
.end method

.method protected invalidateKeyboardImage()V
    .locals 0

    .prologue
    .line 121
    invoke-super {p0}, Lcom/nuance/swype/input/KeyboardViewEx;->invalidateKeyboardImage()V

    .line 122
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "m"    # Landroid/view/MotionEvent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .prologue
    .line 69
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    .line 70
    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 71
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;->clearKeyboardState()V

    .line 72
    const/4 v0, 0x1

    .line 75
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/nuance/swype/input/KeyboardViewEx;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public setGridCandidates(Ljava/util/List;Ljava/util/List;I)V
    .locals 12
    .param p3, "keyboardWidth"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;",
            ">;>;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 132
    .local p1, "rows":Ljava/util/List;, "Ljava/util/List<Ljava/util/ArrayList<Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;>;>;"
    .local p2, "aLableList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 296
    :cond_0
    return-void

    .line 135
    :cond_1
    div-int/lit8 v0, p3, 0x4

    .line 136
    .local v0, "KEY_WIDTH_FOUR_COLUMNS":I
    div-int/lit8 v1, p3, 0x2

    .line 138
    .local v1, "KEY_WIDTH_TWO_COLUMNS":I
    const/4 v4, 0x0

    .line 140
    .local v4, "curRowNumber":I
    const/4 v6, 0x0

    .line 141
    .local v6, "isFourLetterCandidatedStarted":Z
    const/4 v7, 0x0

    .line 142
    .local v7, "isOneLetterCandidatedStarted":Z
    const/4 v2, 0x0

    .line 143
    .local v2, "curColumnNumber":I
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 145
    const/4 v5, 0x0

    .local v5, "index":I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v10

    if-ge v5, v10, :cond_0

    .line 146
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v10

    if-gt v10, v4, :cond_3

    .line 147
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 148
    .local v3, "curRowKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;>;"
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    :goto_1
    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/CharSequence;

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    .line 154
    .local v8, "str":Ljava/lang/String;
    if-eqz v6, :cond_4

    .line 155
    new-instance v10, Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;

    invoke-direct {v10, v1, v8}, Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    add-int/lit8 v4, v4, 0x1

    .line 157
    const/4 v6, 0x0

    .line 158
    const/4 v7, 0x0

    .line 159
    const/4 v2, 0x0

    .line 145
    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 150
    .end local v3    # "curRowKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;>;"
    .end local v8    # "str":Ljava/lang/String;
    :cond_3
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .restart local v3    # "curRowKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;>;"
    goto :goto_1

    .line 163
    .restart local v8    # "str":Ljava/lang/String;
    :cond_4
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x6

    if-lt v10, v11, :cond_8

    .line 164
    if-eqz v7, :cond_7

    .line 166
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_5

    .line 167
    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;

    .line 168
    iput p3, v10, Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;->width:I

    .line 169
    add-int/lit8 v4, v4, 0x1

    .line 170
    new-instance v3, Ljava/util/ArrayList;

    .end local v3    # "curRowKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 171
    .restart local v3    # "curRowKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;>;"
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    new-instance v10, Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;

    invoke-direct {v10, p3, v8}, Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    add-int/lit8 v4, v4, 0x1

    .line 174
    const/4 v7, 0x0

    .line 175
    const/4 v2, 0x0

    .line 176
    goto :goto_2

    .line 177
    :cond_5
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_6

    .line 178
    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;

    .line 179
    iput v1, v10, Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;->width:I

    .line 180
    const/4 v10, 0x1

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;

    .line 181
    iput v1, v10, Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;->width:I

    .line 182
    add-int/lit8 v4, v4, 0x1

    .line 183
    const/4 v2, 0x0

    .line 184
    new-instance v3, Ljava/util/ArrayList;

    .end local v3    # "curRowKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 185
    .restart local v3    # "curRowKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;>;"
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    new-instance v10, Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;

    invoke-direct {v10, p3, v8}, Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    add-int/lit8 v4, v4, 0x1

    .line 188
    const/4 v7, 0x0

    .line 189
    goto :goto_2

    .line 190
    :cond_6
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/4 v11, 0x3

    if-ne v10, v11, :cond_a

    .line 191
    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;

    .line 192
    iput v1, v10, Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;->width:I

    .line 193
    const/4 v10, 0x1

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;

    .line 194
    iput v1, v10, Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;->width:I

    .line 195
    add-int/lit8 v4, v4, 0x1

    .line 196
    const/4 v10, 0x2

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;

    .line 197
    .local v9, "thirdKey":Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;
    iput p3, v9, Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;->width:I

    .line 198
    new-instance v3, Ljava/util/ArrayList;

    .end local v3    # "curRowKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 199
    .restart local v3    # "curRowKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;>;"
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    add-int/lit8 v4, v4, 0x1

    .line 202
    new-instance v3, Ljava/util/ArrayList;

    .end local v3    # "curRowKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 203
    .restart local v3    # "curRowKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;>;"
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    new-instance v10, Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;

    invoke-direct {v10, p3, v8}, Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    const/4 v7, 0x0

    .line 206
    add-int/lit8 v4, v4, 0x1

    .line 207
    const/4 v2, 0x0

    .line 208
    goto/16 :goto_2

    .line 211
    .end local v9    # "thirdKey":Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;
    :cond_7
    new-instance v10, Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;

    invoke-direct {v10, p3, v8}, Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    add-int/lit8 v4, v4, 0x1

    .line 213
    const/4 v2, 0x0

    .line 214
    goto/16 :goto_2

    .line 216
    :cond_8
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x4

    if-lt v10, v11, :cond_d

    .line 218
    if-eqz v7, :cond_c

    .line 220
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_9

    .line 221
    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;

    .line 222
    iput v1, v10, Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;->width:I

    .line 223
    new-instance v10, Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;

    invoke-direct {v10, v1, v8}, Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    add-int/lit8 v4, v4, 0x1

    .line 225
    const/4 v6, 0x0

    .line 226
    const/4 v7, 0x0

    .line 227
    const/4 v2, 0x0

    .line 228
    goto/16 :goto_2

    .line 229
    :cond_9
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_b

    .line 230
    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;

    .line 231
    iput v1, v10, Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;->width:I

    .line 232
    const/4 v10, 0x1

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;

    .line 233
    iput v1, v10, Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;->width:I

    .line 234
    add-int/lit8 v4, v4, 0x1

    .line 235
    const/4 v2, 0x0

    .line 236
    new-instance v3, Ljava/util/ArrayList;

    .end local v3    # "curRowKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 237
    .restart local v3    # "curRowKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;>;"
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    new-instance v10, Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;

    invoke-direct {v10, v1, v8}, Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    const/4 v6, 0x1

    .line 240
    const/4 v7, 0x0

    .line 274
    :cond_a
    :goto_3
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    if-ne v5, v10, :cond_2

    .line 275
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_e

    .line 276
    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;

    .line 277
    iput p3, v10, Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;->width:I

    goto/16 :goto_2

    .line 241
    :cond_b
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/4 v11, 0x3

    if-ne v10, v11, :cond_a

    .line 242
    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;

    .line 243
    iput v1, v10, Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;->width:I

    .line 244
    const/4 v10, 0x1

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;

    .line 245
    iput v1, v10, Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;->width:I

    .line 246
    add-int/lit8 v4, v4, 0x1

    .line 247
    const/4 v10, 0x2

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;

    .line 248
    .restart local v9    # "thirdKey":Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;
    iput v1, v9, Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;->width:I

    .line 249
    new-instance v3, Ljava/util/ArrayList;

    .end local v3    # "curRowKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 250
    .restart local v3    # "curRowKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;>;"
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 252
    new-instance v10, Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;

    invoke-direct {v10, v1, v8}, Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 253
    const/4 v6, 0x0

    .line 254
    const/4 v7, 0x0

    .line 255
    add-int/lit8 v4, v4, 0x1

    .line 256
    const/4 v2, 0x0

    .line 257
    goto :goto_3

    .line 259
    .end local v9    # "thirdKey":Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;
    :cond_c
    new-instance v10, Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;

    invoke-direct {v10, v1, v8}, Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 260
    const/4 v6, 0x1

    .line 261
    const/4 v7, 0x0

    goto :goto_3

    .line 264
    :cond_d
    const/4 v7, 0x1

    .line 265
    new-instance v10, Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;

    invoke-direct {v10, v0, v8}, Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 266
    add-int/lit8 v2, v2, 0x1

    .line 267
    rem-int/lit8 v10, v2, 0x4

    if-nez v10, :cond_a

    .line 268
    add-int/lit8 v4, v4, 0x1

    .line 269
    const/4 v2, 0x0

    .line 270
    const/4 v6, 0x0

    .line 271
    const/4 v7, 0x0

    goto :goto_3

    .line 278
    :cond_e
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_f

    .line 279
    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;

    .line 280
    iput v1, v10, Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;->width:I

    .line 281
    const/4 v10, 0x1

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;

    .line 282
    iput v1, v10, Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;->width:I

    goto/16 :goto_2

    .line 283
    :cond_f
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/4 v11, 0x3

    if-ne v10, v11, :cond_2

    .line 284
    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;

    .line 285
    iput v1, v10, Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;->width:I

    .line 286
    const/4 v10, 0x1

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;

    .line 287
    iput v1, v10, Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;->width:I

    .line 288
    const/4 v10, 0x2

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;

    .line 289
    .restart local v9    # "thirdKey":Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;
    iput p3, v9, Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;->width:I

    .line 290
    new-instance v3, Ljava/util/ArrayList;

    .end local v3    # "curRowKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 291
    .restart local v3    # "curRowKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;>;"
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 292
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2
.end method

.method public setInputView(Lcom/nuance/swype/input/InputView;)V
    .locals 0
    .param p1, "view"    # Lcom/nuance/swype/input/InputView;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;->inputView:Lcom/nuance/swype/input/InputView;

    .line 85
    return-void
.end method

.method public setKeyBackground(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 301
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    .line 302
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
    .line 107
    .local p1, "aSymbolSourceList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;->symbolSourceList:Ljava/util/List;

    if-nez v1, :cond_1

    .line 108
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;->symbolSourceList:Ljava/util/List;

    .line 112
    :goto_0
    if-nez p1, :cond_2

    .line 118
    :cond_0
    return-void

    .line 110
    :cond_1
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;->symbolSourceList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    goto :goto_0

    .line 115
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 116
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;->symbolSourceList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
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
    .line 87
    .local p1, "aWordSourceList":Ljava/util/List;, "Ljava/util/List<Ljava/util/concurrent/atomic/AtomicInteger;>;"
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;->wordSourceList:Ljava/util/List;

    if-nez v1, :cond_1

    .line 88
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;->wordSourceList:Ljava/util/List;

    .line 92
    :goto_0
    if-nez p1, :cond_2

    .line 98
    :cond_0
    return-void

    .line 90
    :cond_1
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;->wordSourceList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    goto :goto_0

    .line 95
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 96
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;->wordSourceList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
