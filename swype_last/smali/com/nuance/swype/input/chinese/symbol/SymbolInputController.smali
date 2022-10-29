.class public Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;
.super Ljava/lang/Object;
.source "SymbolInputController.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;
.implements Landroid/widget/TabHost$OnTabChangeListener;


# static fields
.field private static final MSG_PRESS_HOLD:I = 0x3e9

.field private static final enableAnimDefault:Z = true

.field private static final log:Lcom/nuance/swype/util/LogManager$Log;

.field private static final trace:Lcom/nuance/swype/util/LogManager$Trace;


# instance fields
.field private final actionKeyTouchHandler:Landroid/view/View$OnTouchListener;

.field private adapter:Lcom/nuance/swype/input/chinese/symbol/SymbolViewPagerAdapter;

.field private categoryList:Lcom/nuance/swype/input/chinese/symbol/SymbolCategoryList;

.field private context:Landroid/content/Context;

.field private deleteButton:Landroid/widget/ImageButton;

.field private hScrollView:Landroid/widget/HorizontalScrollView;

.field private handlerCallback:Landroid/os/Handler$Callback;

.field private inflater:Landroid/view/LayoutInflater;

.field private keyboardButton:Landroid/widget/ImageButton;

.field private longPressHoldTimeout:I

.field protected mRows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private pager:Lcom/nuance/swype/input/chinese/symbol/SymbolViewPager;

.field private final pressHoldHandler:Landroid/os/Handler;

.field private resetShowOnStartCallback:Lcom/nuance/swype/util/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nuance/swype/util/Callback",
            "<+",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private showOnStart:Z

.field private spaceButton:Landroid/widget/ImageButton;

.field private symbolInputView:Lcom/nuance/swype/input/chinese/symbol/SymbolInputView;

.field private tabHost:Landroid/widget/TabHost;

.field private textScale:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 55
    const-string/jumbo v0, "SymbolInputController"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->log:Lcom/nuance/swype/util/LogManager$Log;

    .line 57
    invoke-static {}, Lcom/nuance/swype/util/LogManager;->getTrace()Lcom/nuance/swype/util/LogManager$Trace;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->trace:Lcom/nuance/swype/util/LogManager$Trace;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->mRows:Ljava/util/List;

    .line 97
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->textScale:F

    .line 342
    new-instance v0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController$3;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController$3;-><init>(Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;)V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->actionKeyTouchHandler:Landroid/view/View$OnTouchListener;

    .line 386
    new-instance v0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController$4;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController$4;-><init>(Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;)V

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->handlerCallback:Landroid/os/Handler$Callback;

    .line 493
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->showOnStart:Z

    .line 499
    new-instance v0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController$5;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController$5;-><init>(Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;)V

    .line 500
    invoke-static {v0}, Lcom/nuance/swype/util/Callback;->create(Ljava/lang/Runnable;)Lcom/nuance/swype/util/Callback;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->resetShowOnStartCallback:Lcom/nuance/swype/util/Callback;

    .line 100
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->handlerCallback:Landroid/os/Handler$Callback;

    invoke-static {v0}, Lcom/nuance/android/util/WeakReferenceHandler;->create(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->pressHoldHandler:Landroid/os/Handler;

    .line 101
    return-void
.end method

.method static synthetic access$000(Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;)Landroid/widget/TabHost;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->tabHost:Landroid/widget/TabHost;

    return-object v0
.end method

.method static synthetic access$100(Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;)Lcom/nuance/swype/input/chinese/symbol/SymbolCategoryList;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->categoryList:Lcom/nuance/swype/input/chinese/symbol/SymbolCategoryList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;)Lcom/nuance/swype/input/chinese/symbol/SymbolViewPagerAdapter;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->adapter:Lcom/nuance/swype/input/chinese/symbol/SymbolViewPagerAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;)I
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;

    .prologue
    .line 53
    iget v0, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->longPressHoldTimeout:I

    return v0
.end method

.method static synthetic access$400(Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->pressHoldHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600()Lcom/nuance/swype/util/LogManager$Log;
    .registers 1

    .prologue
    .line 53
    sget-object v0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-object v0
.end method

.method static synthetic access$702(Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->showOnStart:Z

    return p1
.end method

.method private createAdapter()V
    .registers 18

    .prologue
    .line 155
    new-instance v2, Lcom/nuance/swype/input/chinese/symbol/SymbolViewPagerAdapter;

    invoke-direct {v2}, Lcom/nuance/swype/input/chinese/symbol/SymbolViewPagerAdapter;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->adapter:Lcom/nuance/swype/input/chinese/symbol/SymbolViewPagerAdapter;

    .line 156
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->pager:Lcom/nuance/swype/input/chinese/symbol/SymbolViewPager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->adapter:Lcom/nuance/swype/input/chinese/symbol/SymbolViewPagerAdapter;

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/chinese/symbol/SymbolViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 157
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->categoryList:Lcom/nuance/swype/input/chinese/symbol/SymbolCategoryList;

    invoke-virtual {v2}, Lcom/nuance/swype/input/chinese/symbol/SymbolCategoryList;->getAllCategories()Ljava/util/List;

    move-result-object v2

    .line 158
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_20
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f3

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/nuance/swype/input/emoji/AbstractCategory;

    .line 159
    .local v9, "category":Lcom/nuance/swype/input/emoji/AbstractCategory;
    invoke-virtual {v9}, Lcom/nuance/swype/input/emoji/AbstractCategory;->getName()Ljava/lang/String;

    move-result-object v15

    .line 164
    .local v15, "tag":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/nuance/swype/input/R$string;->chinese_symbol_recent:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_92

    .line 166
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->inflater:Landroid/view/LayoutInflater;

    sget v3, Lcom/nuance/swype/input/R$layout;->symbol_view_recent:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->pager:Lcom/nuance/swype/input/chinese/symbol/SymbolViewPager;

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/FrameLayout;

    .line 167
    .local v11, "flv":Landroid/widget/FrameLayout;
    sget v2, Lcom/nuance/swype/input/R$id;->symbol_keyboardViewEx_recent:I

    invoke-virtual {v11, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;

    .line 193
    .local v13, "keyboardViewEx":Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;
    :goto_5d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v2

    .line 194
    invoke-virtual {v2}, Lcom/nuance/swype/input/IMEApplication;->getIME()Lcom/nuance/swype/input/IME;

    move-result-object v12

    .line 195
    .local v12, "ime":Lcom/nuance/swype/input/IME;
    invoke-virtual {v12}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v2

    invoke-virtual {v13, v2}, Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;->setInputView(Lcom/nuance/swype/input/InputView;)V

    .line 197
    sget v2, Lcom/nuance/swype/input/R$drawable;->emoji_key_action:I

    invoke-virtual {v13, v2}, Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;->setKeyBackground(I)V

    .line 199
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 201
    .local v10, "csList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    invoke-virtual {v9}, Lcom/nuance/swype/input/emoji/AbstractCategory;->getItemList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_82
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_17c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 202
    .local v14, "str":Ljava/lang/String;
    invoke-interface {v10, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_82

    .line 168
    .end local v10    # "csList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    .end local v11    # "flv":Landroid/widget/FrameLayout;
    .end local v12    # "ime":Lcom/nuance/swype/input/IME;
    .end local v13    # "keyboardViewEx":Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;
    .end local v14    # "str":Ljava/lang/String;
    :cond_92
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/nuance/swype/input/R$string;->chinese_symbol_english:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_161

    .line 172
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/nuance/swype/input/R$string;->chinese_symbol_chinese_symbols:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d4

    .line 174
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->inflater:Landroid/view/LayoutInflater;

    sget v3, Lcom/nuance/swype/input/R$layout;->symbol_view_chinese_symbols:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->pager:Lcom/nuance/swype/input/chinese/symbol/SymbolViewPager;

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/FrameLayout;

    .line 175
    .restart local v11    # "flv":Landroid/widget/FrameLayout;
    sget v2, Lcom/nuance/swype/input/R$id;->symbol_keyboardViewEx_chinese_symbols:I

    invoke-virtual {v11, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;

    .restart local v13    # "keyboardViewEx":Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;
    goto :goto_5d

    .line 176
    .end local v11    # "flv":Landroid/widget/FrameLayout;
    .end local v13    # "keyboardViewEx":Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;
    :cond_d4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/nuance/swype/input/R$string;->chinese_symbol_emotions:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_103

    .line 178
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->inflater:Landroid/view/LayoutInflater;

    sget v3, Lcom/nuance/swype/input/R$layout;->symbol_view_emotions:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->pager:Lcom/nuance/swype/input/chinese/symbol/SymbolViewPager;

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/FrameLayout;

    .line 179
    .restart local v11    # "flv":Landroid/widget/FrameLayout;
    sget v2, Lcom/nuance/swype/input/R$id;->symbol_keyboardViewEx_emotions:I

    invoke-virtual {v11, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;

    .restart local v13    # "keyboardViewEx":Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;
    goto/16 :goto_5d

    .line 180
    .end local v11    # "flv":Landroid/widget/FrameLayout;
    .end local v13    # "keyboardViewEx":Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;
    :cond_103
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/nuance/swype/input/R$string;->chinese_symbol_network:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_132

    .line 182
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->inflater:Landroid/view/LayoutInflater;

    sget v3, Lcom/nuance/swype/input/R$layout;->symbol_view_network:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->pager:Lcom/nuance/swype/input/chinese/symbol/SymbolViewPager;

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/FrameLayout;

    .line 183
    .restart local v11    # "flv":Landroid/widget/FrameLayout;
    sget v2, Lcom/nuance/swype/input/R$id;->symbol_keyboardViewEx_network:I

    invoke-virtual {v11, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;

    .restart local v13    # "keyboardViewEx":Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;
    goto/16 :goto_5d

    .line 184
    .end local v11    # "flv":Landroid/widget/FrameLayout;
    .end local v13    # "keyboardViewEx":Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;
    :cond_132
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/nuance/swype/input/R$string;->chinese_symbol_picture:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_161

    .line 186
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->inflater:Landroid/view/LayoutInflater;

    sget v3, Lcom/nuance/swype/input/R$layout;->symbol_view_picture:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->pager:Lcom/nuance/swype/input/chinese/symbol/SymbolViewPager;

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/FrameLayout;

    .line 187
    .restart local v11    # "flv":Landroid/widget/FrameLayout;
    sget v2, Lcom/nuance/swype/input/R$id;->symbol_keyboardViewEx_picture:I

    invoke-virtual {v11, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;

    .restart local v13    # "keyboardViewEx":Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;
    goto/16 :goto_5d

    .line 189
    .end local v11    # "flv":Landroid/widget/FrameLayout;
    .end local v13    # "keyboardViewEx":Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;
    :cond_161
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->inflater:Landroid/view/LayoutInflater;

    sget v3, Lcom/nuance/swype/input/R$layout;->symbol_view_english:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->pager:Lcom/nuance/swype/input/chinese/symbol/SymbolViewPager;

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/FrameLayout;

    .line 190
    .restart local v11    # "flv":Landroid/widget/FrameLayout;
    sget v2, Lcom/nuance/swype/input/R$id;->symbol_keyboardViewEx_english:I

    invoke-virtual {v11, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;

    .restart local v13    # "keyboardViewEx":Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;
    goto/16 :goto_5d

    .line 204
    .restart local v10    # "csList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    .restart local v12    # "ime":Lcom/nuance/swype/input/IME;
    :cond_17c
    invoke-virtual {v13, v10}, Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;->setSymbolSource(Ljava/util/List;)V

    .line 205
    const/4 v2, 0x0

    invoke-virtual {v13, v2}, Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;->setDoubleBuffered(Z)V

    .line 206
    invoke-virtual {v12}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/InputView;->getMeasuredWidth()I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v2}, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->setGridCandidates(Ljava/util/List;I)V

    .line 207
    invoke-virtual {v12}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/InputView;->getMeasuredWidth()I

    move-result v2

    mul-int/lit8 v2, v2, 0x1

    div-int/lit8 v6, v2, 0x2

    .line 208
    .local v6, "height":I
    new-instance v1, Lcom/nuance/swype/input/KeyboardEx;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->context:Landroid/content/Context;

    sget v3, Lcom/nuance/swype/input/R$xml;->kbd_chinese_symbol_template:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->mRows:Ljava/util/List;

    .line 209
    invoke-virtual {v12}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/input/InputView;->getMeasuredWidth()I

    move-result v5

    .line 210
    invoke-virtual {v12}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nuance/swype/input/InputView;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nuance/swype/input/KeyboardEx;->getKeyboardDockMode()Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    move-result-object v7

    const/4 v8, 0x1

    invoke-direct/range {v1 .. v8}, Lcom/nuance/swype/input/KeyboardEx;-><init>(Landroid/content/Context;ILjava/util/List;IILcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;Z)V

    .line 211
    .local v1, "keyboard":Lcom/nuance/swype/input/KeyboardEx;
    invoke-virtual {v13, v1}, Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;->setKeyboard(Lcom/nuance/swype/input/KeyboardEx;)V

    .line 212
    invoke-virtual {v13, v12}, Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;->setIme(Lcom/nuance/swype/input/IME;)V

    .line 214
    new-instance v2, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v12}, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController$1;-><init>(Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;Lcom/nuance/swype/input/IME;)V

    invoke-virtual {v13, v2}, Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;->setOnKeyboardActionListener(Lcom/nuance/swype/input/KeyboardViewEx$OnKeyboardActionListener;)V

    .line 234
    sget-object v2, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "createAdapter...tag: "

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v15, v3, v4

    const/4 v4, 0x2

    const-string/jumbo v5, "...view: "

    aput-object v5, v3, v4

    const/4 v4, 0x3

    aput-object v11, v3, v4

    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 235
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->adapter:Lcom/nuance/swype/input/chinese/symbol/SymbolViewPagerAdapter;

    invoke-virtual {v2, v11}, Lcom/nuance/swype/input/chinese/symbol/SymbolViewPagerAdapter;->addView(Landroid/view/View;)I

    goto/16 :goto_20

    .line 237
    .end local v1    # "keyboard":Lcom/nuance/swype/input/KeyboardEx;
    .end local v6    # "height":I
    .end local v9    # "category":Lcom/nuance/swype/input/emoji/AbstractCategory;
    .end local v10    # "csList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    .end local v11    # "flv":Landroid/widget/FrameLayout;
    .end local v12    # "ime":Lcom/nuance/swype/input/IME;
    .end local v13    # "keyboardViewEx":Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;
    .end local v15    # "tag":Ljava/lang/String;
    :cond_1f3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->adapter:Lcom/nuance/swype/input/chinese/symbol/SymbolViewPagerAdapter;

    invoke-virtual {v2}, Lcom/nuance/swype/input/chinese/symbol/SymbolViewPagerAdapter;->notifyDataSetChanged()V

    .line 241
    return-void
.end method

.method private createView()V
    .registers 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .prologue
    .line 121
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->symbolInputView:Lcom/nuance/swype/input/chinese/symbol/SymbolInputView;

    if-eqz v4, :cond_5

    .line 149
    :goto_4
    return-void

    .line 125
    :cond_5
    sget-object v4, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "createView(): inflating symbol input view..."

    aput-object v7, v5, v6

    invoke-interface {v4, v5}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 128
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    .line 129
    .local v0, "app":Lcom/nuance/swype/input/IMEApplication;
    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getIME()Lcom/nuance/swype/input/IME;

    move-result-object v3

    .line 130
    .local v3, "ime":Lcom/nuance/swype/input/IME;
    invoke-virtual {v3}, Lcom/nuance/swype/input/IME;->getInputContainerView()Lcom/nuance/swype/input/view/InputContainerView;

    move-result-object v2

    .line 131
    .local v2, "containerView":Lcom/nuance/swype/input/view/InputContainerView;
    if-eqz v2, :cond_26

    .line 133
    invoke-virtual {v2}, Lcom/nuance/swype/input/view/InputContainerView;->detachOverlayView()V

    .line 136
    :cond_26
    invoke-virtual {v3}, Lcom/nuance/swype/input/IME;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/nuance/swype/input/IMEApplication;->getThemedLayoutInflater(Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;

    move-result-object v4

    iput-object v4, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->inflater:Landroid/view/LayoutInflater;

    .line 137
    invoke-static {v3}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/input/IMEApplication;->getThemeLoader()Lcom/nuance/swype/plugin/ThemeLoader;

    move-result-object v4

    iget-object v5, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->inflater:Landroid/view/LayoutInflater;

    invoke-virtual {v4, v5}, Lcom/nuance/swype/plugin/ThemeLoader;->setLayoutInflaterFactory(Landroid/view/LayoutInflater;)V

    .line 138
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->inflater:Landroid/view/LayoutInflater;

    sget v5, Lcom/nuance/swype/input/R$layout;->symbol_input_view:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/nuance/swype/input/chinese/symbol/SymbolInputView;

    iput-object v4, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->symbolInputView:Lcom/nuance/swype/input/chinese/symbol/SymbolInputView;

    .line 139
    sget v4, Lcom/nuance/swype/input/R$attr;->emojiBackground:I

    invoke-virtual {v0, v4}, Lcom/nuance/swype/input/IMEApplication;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 140
    .local v1, "background":Landroid/graphics/drawable/Drawable;
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->symbolInputView:Lcom/nuance/swype/input/chinese/symbol/SymbolInputView;

    invoke-static {v4, v1}, Lcom/nuance/android/compat/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 141
    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getThemeLoader()Lcom/nuance/swype/plugin/ThemeLoader;

    move-result-object v4

    iget-object v5, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->symbolInputView:Lcom/nuance/swype/input/chinese/symbol/SymbolInputView;

    invoke-virtual {v4, v5}, Lcom/nuance/swype/plugin/ThemeLoader;->applyTheme(Landroid/view/View;)V

    .line 142
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->symbolInputView:Lcom/nuance/swype/input/chinese/symbol/SymbolInputView;

    sget v5, Lcom/nuance/swype/input/R$id;->symbol_input_view_pager:I

    invoke-virtual {v4, v5}, Lcom/nuance/swype/input/chinese/symbol/SymbolInputView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/nuance/swype/input/chinese/symbol/SymbolViewPager;

    iput-object v4, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->pager:Lcom/nuance/swype/input/chinese/symbol/SymbolViewPager;

    .line 143
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->pager:Lcom/nuance/swype/input/chinese/symbol/SymbolViewPager;

    invoke-virtual {v4, p0}, Lcom/nuance/swype/input/chinese/symbol/SymbolViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 144
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->initActionKeys()V

    .line 145
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->initCategoryTabs()V

    .line 146
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->createAdapter()V

    .line 147
    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getThemeLoader()Lcom/nuance/swype/plugin/ThemeLoader;

    move-result-object v4

    iget-object v5, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->pager:Lcom/nuance/swype/input/chinese/symbol/SymbolViewPager;

    invoke-virtual {v4, v5}, Lcom/nuance/swype/plugin/ThemeLoader;->applyTheme(Landroid/view/View;)V

    goto :goto_4
.end method

.method private hideView(Z)Z
    .registers 9
    .param p1, "enableAnim"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 466
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->symbolInputView:Lcom/nuance/swype/input/chinese/symbol/SymbolInputView;

    if-nez v3, :cond_8

    .line 489
    :goto_7
    return v1

    .line 469
    :cond_8
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->categoryList:Lcom/nuance/swype/input/chinese/symbol/SymbolCategoryList;

    if-eqz v3, :cond_1d

    iget-object v3, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->categoryList:Lcom/nuance/swype/input/chinese/symbol/SymbolCategoryList;

    invoke-virtual {v3}, Lcom/nuance/swype/input/chinese/symbol/SymbolCategoryList;->getRecentCat()Lcom/nuance/swype/input/chinese/symbol/SymbolCategoryRecents;

    move-result-object v3

    if-eqz v3, :cond_1d

    .line 470
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->categoryList:Lcom/nuance/swype/input/chinese/symbol/SymbolCategoryList;

    invoke-virtual {v3}, Lcom/nuance/swype/input/chinese/symbol/SymbolCategoryList;->getRecentCat()Lcom/nuance/swype/input/chinese/symbol/SymbolCategoryRecents;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/chinese/symbol/SymbolCategoryRecents;->commit()Z

    .line 472
    :cond_1d
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->symbolInputView:Lcom/nuance/swype/input/chinese/symbol/SymbolInputView;

    invoke-virtual {v3}, Lcom/nuance/swype/input/chinese/symbol/SymbolInputView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    if-nez v3, :cond_34

    .line 474
    sget-object v3, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v4, "hideView(): can\'t hide detached view"

    aput-object v4, v2, v1

    invoke-interface {v3, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 475
    iput-object v6, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->symbolInputView:Lcom/nuance/swype/input/chinese/symbol/SymbolInputView;

    goto :goto_7

    .line 478
    :cond_34
    sget-object v3, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v4, v2, [Ljava/lang/Object;

    const-string/jumbo v5, "hideView(): hiding ui..."

    aput-object v5, v4, v1

    invoke-interface {v3, v4}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 479
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/IMEApplication;->getIME()Lcom/nuance/swype/input/IME;

    move-result-object v3

    .line 480
    invoke-virtual {v3, v6, p1}, Lcom/nuance/swype/input/IME;->setCoverView(Landroid/view/View;Z)V

    .line 481
    invoke-direct {p0, v1}, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->onViewActiveStateChanged(Z)V

    .line 482
    iput-object v6, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->symbolInputView:Lcom/nuance/swype/input/chinese/symbol/SymbolInputView;

    .line 484
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/nuance/swype/stats/UsageManager;->from(Landroid/content/Context;)Lcom/nuance/swype/stats/UsageManager;

    move-result-object v0

    .line 485
    .local v0, "usageMgr":Lcom/nuance/swype/stats/UsageManager;
    if-eqz v0, :cond_75

    .line 486
    invoke-virtual {v0}, Lcom/nuance/swype/stats/UsageManager;->getKeyboardUsageScribe()Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;

    move-result-object v1

    sget-object v3, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_EMOJI:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    iget-object v4, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->context:Landroid/content/Context;

    .line 487
    invoke-static {v4}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/input/IMEApplication;->getIME()Lcom/nuance/swype/input/IME;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/input/InputView;->getKeyboardLayer()Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    move-result-object v4

    .line 486
    invoke-interface {v1, v3, v4}, Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;->recordKeyboardLayerChange(Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;)V

    :cond_75
    move v1, v2

    .line 489
    goto :goto_7
.end method

.method private initActionKeys()V
    .registers 3

    .prologue
    .line 309
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->symbolInputView:Lcom/nuance/swype/input/chinese/symbol/SymbolInputView;

    sget v1, Lcom/nuance/swype/input/R$id;->emoji_input_view_keyboard_key:I

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/chinese/symbol/SymbolInputView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->keyboardButton:Landroid/widget/ImageButton;

    .line 310
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->keyboardButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController$2;

    invoke-direct {v1, p0}, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController$2;-><init>(Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 317
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->keyboardButton:Landroid/widget/ImageButton;

    sget v1, Lcom/nuance/swype/input/R$drawable;->emoji_key_action:I

    invoke-direct {p0, v0, v1}, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->setButtonBackground(Landroid/view/View;I)V

    .line 318
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->keyboardButton:Landroid/widget/ImageButton;

    sget v1, Lcom/nuance/swype/input/R$attr;->emojiIconKeyboard:I

    invoke-direct {p0, v0, v1}, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->setButtonIcon(Landroid/widget/ImageButton;I)V

    .line 321
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->symbolInputView:Lcom/nuance/swype/input/chinese/symbol/SymbolInputView;

    sget v1, Lcom/nuance/swype/input/R$id;->emoji_input_view_space_key:I

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/chinese/symbol/SymbolInputView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->spaceButton:Landroid/widget/ImageButton;

    .line 322
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->spaceButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->actionKeyTouchHandler:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 323
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->spaceButton:Landroid/widget/ImageButton;

    sget v1, Lcom/nuance/swype/input/R$drawable;->emoji_key_space:I

    invoke-direct {p0, v0, v1}, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->setButtonBackground(Landroid/view/View;I)V

    .line 326
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->symbolInputView:Lcom/nuance/swype/input/chinese/symbol/SymbolInputView;

    sget v1, Lcom/nuance/swype/input/R$id;->emoji_input_view_delete_key:I

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/chinese/symbol/SymbolInputView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->deleteButton:Landroid/widget/ImageButton;

    .line 327
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->deleteButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->actionKeyTouchHandler:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 328
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->deleteButton:Landroid/widget/ImageButton;

    sget v1, Lcom/nuance/swype/input/R$drawable;->emoji_key_action:I

    invoke-direct {p0, v0, v1}, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->setButtonBackground(Landroid/view/View;I)V

    .line 329
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->deleteButton:Landroid/widget/ImageButton;

    sget v1, Lcom/nuance/swype/input/R$attr;->emojiIconDelete:I

    invoke-direct {p0, v0, v1}, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->setButtonIcon(Landroid/widget/ImageButton;I)V

    .line 330
    return-void
.end method

.method private initCategoryTabs()V
    .registers 11
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .prologue
    .line 285
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->symbolInputView:Lcom/nuance/swype/input/chinese/symbol/SymbolInputView;

    sget v7, Lcom/nuance/swype/input/R$id;->emoji_input_view_categories:I

    invoke-virtual {v6, v7}, Lcom/nuance/swype/input/chinese/symbol/SymbolInputView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TabHost;

    iput-object v6, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->tabHost:Landroid/widget/TabHost;

    .line 286
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v6}, Landroid/widget/TabHost;->setup()V

    .line 287
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->context:Landroid/content/Context;

    invoke-static {v6}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    .line 288
    .local v0, "app":Lcom/nuance/swype/input/IMEApplication;
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->context:Landroid/content/Context;

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/nuance/swype/input/IMEApplication;->getThemedLayoutInflater(Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;

    move-result-object v6

    iput-object v6, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->inflater:Landroid/view/LayoutInflater;

    .line 289
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->symbolInputView:Lcom/nuance/swype/input/chinese/symbol/SymbolInputView;

    sget v7, Lcom/nuance/swype/input/R$id;->horizontalScrollView:I

    invoke-virtual {v6, v7}, Lcom/nuance/swype/input/chinese/symbol/SymbolInputView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/HorizontalScrollView;

    iput-object v6, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->hScrollView:Landroid/widget/HorizontalScrollView;

    .line 291
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->categoryList:Lcom/nuance/swype/input/chinese/symbol/SymbolCategoryList;

    invoke-virtual {v6}, Lcom/nuance/swype/input/chinese/symbol/SymbolCategoryList;->getAllCategories()Ljava/util/List;

    move-result-object v6

    .line 292
    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_39
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_88

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/emoji/AbstractCategory;

    .line 293
    .local v1, "category":Lcom/nuance/swype/input/emoji/AbstractCategory;
    iget-object v7, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v1}, Lcom/nuance/swype/input/emoji/AbstractCategory;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    .line 294
    .local v4, "tabSpec":Landroid/widget/TabHost$TabSpec;
    sget v7, Lcom/nuance/swype/input/R$id;->emoji_input_view_empty_view:I

    invoke-virtual {v4, v7}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    .line 295
    iget-object v7, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->inflater:Landroid/view/LayoutInflater;

    sget v8, Lcom/nuance/swype/input/R$layout;->symbol_category_item:I

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 296
    .local v5, "view":Landroid/widget/ImageView;
    iget-object v7, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->context:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/nuance/swype/input/emoji/AbstractCategory;->getIconRes()I

    move-result v8

    invoke-static {v7, v8}, Lcom/nuance/swype/view/TintDrawableCompat;->createTintDrawable(Landroid/content/Context;I)Lcom/nuance/swype/view/TintDrawable;

    move-result-object v3

    .line 297
    .local v3, "drawable":Lcom/nuance/swype/view/TintDrawable;
    invoke-virtual {v5}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/nuance/swype/input/R$color;->color_emoji_category_icon:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 299
    .local v2, "color":Landroid/content/res/ColorStateList;
    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v2, v7}, Lcom/nuance/swype/view/TintDrawable;->setTintParams(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)V

    .line 300
    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 301
    invoke-virtual {v4, v5}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    .line 302
    iget-object v7, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v7, v4}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    goto :goto_39

    .line 304
    .end local v1    # "category":Lcom/nuance/swype/input/emoji/AbstractCategory;
    .end local v2    # "color":Landroid/content/res/ColorStateList;
    .end local v3    # "drawable":Lcom/nuance/swype/view/TintDrawable;
    .end local v4    # "tabSpec":Landroid/widget/TabHost$TabSpec;
    .end local v5    # "view":Landroid/widget/ImageView;
    :cond_88
    iget-object v6, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v6, p0}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 305
    return-void
.end method

.method private onViewActiveStateChanged(Z)V
    .registers 4
    .param p1, "isShowing"    # Z

    .prologue
    .line 581
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getIME()Lcom/nuance/swype/input/IME;

    move-result-object v1

    .line 582
    invoke-virtual {v1}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v0

    .line 583
    .local v0, "inputView":Lcom/nuance/swype/input/InputView;
    if-eqz v0, :cond_2a

    .line 585
    if-nez p1, :cond_2b

    const/4 v1, 0x1

    :goto_13
    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/InputView;->requestAutospaceOverrideTo(Z)V

    .line 586
    if-nez p1, :cond_2d

    .line 588
    instance-of v1, v0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    if-eqz v1, :cond_21

    .line 589
    sget-object v1, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_TEXT:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/InputView;->setKeyboardLayer(Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;)V

    .line 591
    :cond_21
    instance-of v1, v0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;

    if-eqz v1, :cond_2a

    .line 592
    sget-object v1, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_TEXT:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/InputView;->setKeyboardLayer(Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;)V

    .line 604
    :cond_2a
    :goto_2a
    return-void

    .line 585
    :cond_2b
    const/4 v1, 0x0

    goto :goto_13

    .line 595
    :cond_2d
    instance-of v1, v0, Lcom/nuance/swype/input/chinese/ChineseFSHandWritingInputView;

    if-eqz v1, :cond_36

    .line 596
    sget-object v1, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_SYMBOLS:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/InputView;->setKeyboardLayer(Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;)V

    .line 598
    :cond_36
    instance-of v1, v0, Lcom/nuance/swype/input/korean/KoreanHandWritingInputView;

    if-eqz v1, :cond_2a

    .line 599
    sget-object v1, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_EDIT:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/InputView;->setKeyboardLayer(Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;)V

    goto :goto_2a
.end method

.method private setButtonBackground(Landroid/view/View;I)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "resId"    # I

    .prologue
    .line 333
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 334
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    invoke-static {p1, v0}, Lcom/nuance/android/compat/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 335
    return-void
.end method

.method private setButtonIcon(Landroid/widget/ImageButton;I)V
    .registers 5
    .param p1, "view"    # Landroid/widget/ImageButton;
    .param p2, "attrId"    # I

    .prologue
    .line 338
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/nuance/swype/input/IMEApplication;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 339
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 340
    return-void
.end method

.method private showView(ZZ)Z
    .registers 8
    .param p1, "enableAnim"    # Z
    .param p2, "resetState"    # Z

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 449
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->symbolInputView:Lcom/nuance/swype/input/chinese/symbol/SymbolInputView;

    if-eqz v2, :cond_1e

    .line 450
    iget-object v2, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->symbolInputView:Lcom/nuance/swype/input/chinese/symbol/SymbolInputView;

    invoke-virtual {v2}, Lcom/nuance/swype/input/chinese/symbol/SymbolInputView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-eqz v2, :cond_f

    .line 462
    :goto_e
    return v0

    .line 454
    :cond_f
    sget-object v2, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v3, v1, [Ljava/lang/Object;

    const-string/jumbo v4, "showView(): current symbol input view is detached (re-creating)"

    aput-object v4, v3, v0

    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 455
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->symbolInputView:Lcom/nuance/swype/input/chinese/symbol/SymbolInputView;

    .line 457
    :cond_1e
    sget-object v2, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v3, v1, [Ljava/lang/Object;

    const-string/jumbo v4, "showView(): showing ui..."

    aput-object v4, v3, v0

    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 458
    invoke-direct {p0}, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->createView()V

    .line 459
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->tabHost:Landroid/widget/TabHost;

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->categoryList:Lcom/nuance/swype/input/chinese/symbol/SymbolCategoryList;

    invoke-virtual {v2}, Lcom/nuance/swype/input/chinese/symbol/SymbolCategoryList;->getDefaultCategory()Lcom/nuance/swype/input/emoji/AbstractCategory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/emoji/AbstractCategory;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 460
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getIME()Lcom/nuance/swype/input/IME;

    move-result-object v0

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->symbolInputView:Lcom/nuance/swype/input/chinese/symbol/SymbolInputView;

    invoke-virtual {v0, v2, p1}, Lcom/nuance/swype/input/IME;->setCoverView(Landroid/view/View;Z)V

    .line 461
    invoke-direct {p0, v1}, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->onViewActiveStateChanged(Z)V

    move v0, v1

    .line 462
    goto :goto_e
.end method


# virtual methods
.method protected handleKey(I)V
    .registers 4
    .param p1, "keycode"    # I

    .prologue
    const/4 v1, 0x0

    .line 409
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getIME()Lcom/nuance/swype/input/IME;

    move-result-object v0

    .line 410
    invoke-virtual {v0}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v0

    invoke-virtual {v0, p1, v1, v1}, Lcom/nuance/swype/input/InputView;->handleKey(IZI)Z

    .line 411
    return-void
.end method

.method protected handleLongPressOnKey(I)V
    .registers 2
    .param p1, "actionKey"    # I

    .prologue
    .line 414
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->handleKey(I)V

    .line 415
    return-void
.end method

.method public hide()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 444
    sget-object v0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "hide(): isActive: "

    aput-object v3, v1, v2

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->isActive()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 445
    invoke-direct {p0, v4}, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->hideView(Z)Z

    .line 446
    return-void
.end method

.method public isActive()Z
    .registers 2

    .prologue
    .line 577
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->symbolInputView:Lcom/nuance/swype/input/chinese/symbol/SymbolInputView;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public onConfigChanged(Z)V
    .registers 7
    .param p1, "isOrientationChange"    # Z

    .prologue
    .line 527
    sget-object v0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "onConfigChanged(): is or: "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "; active: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->isActive()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 528
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->resetShowOnStartCallback:Lcom/nuance/swype/util/Callback;

    invoke-virtual {v0}, Lcom/nuance/swype/util/Callback;->stop()V

    .line 529
    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->isActive()Z

    move-result v0

    iput-boolean v0, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->showOnStart:Z

    .line 530
    return-void
.end method

.method public onFinishInputView(Z)V
    .registers 2
    .param p1, "finishing"    # Z

    .prologue
    .line 513
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .registers 2
    .param p1, "arg0"    # I

    .prologue
    .line 751
    return-void
.end method

.method public onPageScrolled(IFI)V
    .registers 13
    .param p1, "arg0"    # I
    .param p2, "arg1"    # F
    .param p3, "arg2"    # I

    .prologue
    .line 755
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->pager:Lcom/nuance/swype/input/chinese/symbol/SymbolViewPager;

    invoke-virtual {v5}, Lcom/nuance/swype/input/chinese/symbol/SymbolViewPager;->getCurrentItem()I

    move-result v2

    .line 756
    .local v2, "pos":I
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v5}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v3

    .line 757
    .local v3, "preTabPosition":I
    sget-object v5, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "onPageScrolled...pos: "

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string/jumbo v8, "...preTabPosition: "

    aput-object v8, v6, v7

    const/4 v7, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-interface {v5, v6}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 758
    if-eq v2, v3, :cond_3e

    const/4 v1, 0x1

    .line 759
    .local v1, "pageChanged":Z
    :goto_31
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v5}, Landroid/widget/TabHost;->getCurrentTabView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v4

    .line 760
    .local v4, "width":I
    if-gtz v4, :cond_40

    .line 781
    :cond_3d
    :goto_3d
    return-void

    .line 758
    .end local v1    # "pageChanged":Z
    .end local v4    # "width":I
    :cond_3e
    const/4 v1, 0x0

    goto :goto_31

    .line 763
    .restart local v1    # "pageChanged":Z
    .restart local v4    # "width":I
    :cond_40
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->context:Landroid/content/Context;

    invoke-static {v5}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/input/IMEApplication;->getDisplayWidth()I

    move-result v5

    .line 764
    div-int v0, v5, v4

    .line 765
    .local v0, "availableTabCount":I
    sget-object v5, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "onPageScrolled...tab width:  "

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string/jumbo v8, "...availableTabCount: "

    aput-object v8, v6, v7

    const/4 v7, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x4

    const-string/jumbo v8, "...mTabHost.getTabWidget().getChildCount(): "

    aput-object v8, v6, v7

    const/4 v7, 0x5

    iget-object v8, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->tabHost:Landroid/widget/TabHost;

    .line 766
    invoke-virtual {v8}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TabWidget;->getChildCount()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    .line 765
    invoke-interface {v5, v6}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 768
    if-ge v3, v2, :cond_9d

    add-int/lit8 v5, v0, -0x1

    if-lt v3, v5, :cond_9d

    .line 769
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->hScrollView:Landroid/widget/HorizontalScrollView;

    if-eqz v5, :cond_95

    .line 770
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->hScrollView:Landroid/widget/HorizontalScrollView;

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Landroid/widget/HorizontalScrollView;->scrollBy(II)V

    .line 778
    :cond_95
    :goto_95
    if-eqz v1, :cond_3d

    .line 779
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v5, v2}, Landroid/widget/TabHost;->setCurrentTab(I)V

    goto :goto_3d

    .line 772
    :cond_9d
    if-le v3, v2, :cond_95

    iget-object v5, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v5}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TabWidget;->getChildCount()I

    move-result v5

    sub-int/2addr v5, v0

    if-gt v3, v5, :cond_95

    .line 773
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->hScrollView:Landroid/widget/HorizontalScrollView;

    if-eqz v5, :cond_95

    .line 774
    iget-object v5, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->hScrollView:Landroid/widget/HorizontalScrollView;

    neg-int v6, v4

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/widget/HorizontalScrollView;->scrollBy(II)V

    goto :goto_95
.end method

.method public onPageSelected(I)V
    .registers 2
    .param p1, "arg0"    # I

    .prologue
    .line 786
    return-void
.end method

.method public onStartInputView(Z)V
    .registers 7
    .param p1, "restarting"    # Z

    .prologue
    const/4 v4, 0x0

    .line 533
    sget-object v0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "onStartInputView(): show on start: "

    aput-object v2, v1, v4

    const/4 v2, 0x1

    iget-boolean v3, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->showOnStart:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "; restarting: "

    aput-object v3, v1, v2

    const/4 v2, 0x3

    .line 534
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    .line 533
    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 535
    iget-boolean v0, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->showOnStart:Z

    if-eqz v0, :cond_31

    .line 537
    invoke-direct {p0, v4, v4}, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->showView(ZZ)Z

    .line 540
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->resetShowOnStartCallback:Lcom/nuance/swype/util/Callback;

    invoke-virtual {v0}, Lcom/nuance/swype/util/Callback;->start()V

    .line 545
    :cond_30
    :goto_30
    return-void

    .line 541
    :cond_31
    if-nez p1, :cond_30

    .line 543
    invoke-direct {p0, v4}, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->hideView(Z)Z

    goto :goto_30
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .registers 11
    .param p1, "tabId"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 550
    sget-object v3, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v4, v8, [Ljava/lang/Object;

    const-string/jumbo v5, "onTabChanged(): tabId: "

    aput-object v5, v4, v6

    aput-object p1, v4, v7

    invoke-interface {v3, v4}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 551
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->categoryList:Lcom/nuance/swype/input/chinese/symbol/SymbolCategoryList;

    if-nez v3, :cond_16

    .line 571
    :goto_15
    return-void

    .line 554
    :cond_16
    const/4 v1, 0x0

    .line 555
    .local v1, "cur":I
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->categoryList:Lcom/nuance/swype/input/chinese/symbol/SymbolCategoryList;

    invoke-virtual {v3}, Lcom/nuance/swype/input/chinese/symbol/SymbolCategoryList;->getAllCategories()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_21
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/emoji/AbstractCategory;

    .line 556
    .local v0, "cat":Lcom/nuance/swype/input/emoji/AbstractCategory;
    invoke-virtual {v0}, Lcom/nuance/swype/input/emoji/AbstractCategory;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3a

    .line 559
    add-int/lit8 v1, v1, 0x1

    .line 560
    goto :goto_21

    .line 561
    .end local v0    # "cat":Lcom/nuance/swype/input/emoji/AbstractCategory;
    :cond_3a
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->pager:Lcom/nuance/swype/input/chinese/symbol/SymbolViewPager;

    invoke-virtual {v3}, Lcom/nuance/swype/input/chinese/symbol/SymbolViewPager;->getCurrentItem()I

    move-result v2

    .line 562
    .local v2, "old":I
    if-eq v1, v2, :cond_47

    .line 563
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->pager:Lcom/nuance/swype/input/chinese/symbol/SymbolViewPager;

    invoke-virtual {v3, v1, v6}, Lcom/nuance/swype/input/chinese/symbol/SymbolViewPager;->setCurrentItem(IZ)V

    .line 566
    :cond_47
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->categoryList:Lcom/nuance/swype/input/chinese/symbol/SymbolCategoryList;

    invoke-virtual {v3}, Lcom/nuance/swype/input/chinese/symbol/SymbolCategoryList;->getRecentCat()Lcom/nuance/swype/input/chinese/symbol/SymbolCategoryRecents;

    move-result-object v3

    if-eqz v3, :cond_58

    .line 567
    iget-object v3, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->categoryList:Lcom/nuance/swype/input/chinese/symbol/SymbolCategoryList;

    invoke-virtual {v3}, Lcom/nuance/swype/input/chinese/symbol/SymbolCategoryList;->getRecentCat()Lcom/nuance/swype/input/chinese/symbol/SymbolCategoryRecents;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/chinese/symbol/SymbolCategoryRecents;->commit()Z

    .line 570
    :cond_58
    sget-object v3, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "onTabChanged(): old: "

    aput-object v5, v4, v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    const-string/jumbo v5, "; cur: "

    aput-object v5, v4, v8

    const/4 v5, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-interface {v3, v4}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    goto :goto_15
.end method

.method protected playKeyFeedback(I)V
    .registers 4
    .param p1, "keycode"    # I

    .prologue
    .line 417
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getIME()Lcom/nuance/swype/input/IME;

    move-result-object v0

    .line 418
    .local v0, "ime":Lcom/nuance/swype/input/IME;
    invoke-virtual {v0}, Lcom/nuance/swype/input/IME;->vibrate()V

    .line 419
    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/IME;->playKeyClick(I)V

    .line 420
    return-void
.end method

.method public refreshDynamicPages()V
    .registers 18

    .prologue
    .line 248
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->adapter:Lcom/nuance/swype/input/chinese/symbol/SymbolViewPagerAdapter;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/chinese/symbol/SymbolViewPagerAdapter;->getView(I)Landroid/view/View;

    move-result-object v16

    .line 249
    .local v16, "view":Landroid/view/View;
    sget v2, Lcom/nuance/swype/input/R$id;->symbol_keyboardViewEx_recent:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;

    .line 250
    .local v13, "keyboardViewEx":Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->categoryList:Lcom/nuance/swype/input/chinese/symbol/SymbolCategoryList;

    invoke-virtual {v2}, Lcom/nuance/swype/input/chinese/symbol/SymbolCategoryList;->getAllCategories()Ljava/util/List;

    move-result-object v9

    .line 251
    .local v9, "categories":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/nuance/swype/input/emoji/AbstractCategory;>;"
    const/4 v14, 0x0

    .line 252
    .local v14, "recentCat":Lcom/nuance/swype/input/emoji/AbstractCategory;
    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_20
    :goto_20
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_46

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/nuance/swype/input/emoji/AbstractCategory;

    .line 253
    .local v10, "category":Lcom/nuance/swype/input/emoji/AbstractCategory;
    invoke-virtual {v10}, Lcom/nuance/swype/input/emoji/AbstractCategory;->getName()Ljava/lang/String;

    move-result-object v3

    .line 254
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/nuance/swype/input/R$string;->chinese_symbol_recent:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 255
    move-object v14, v10

    goto :goto_20

    .line 258
    .end local v10    # "category":Lcom/nuance/swype/input/emoji/AbstractCategory;
    :cond_46
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 260
    .local v11, "csList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    invoke-virtual {v14}, Lcom/nuance/swype/input/emoji/AbstractCategory;->getItemList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_53
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_63

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 261
    .local v15, "str":Ljava/lang/String;
    invoke-interface {v11, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_53

    .line 263
    .end local v15    # "str":Ljava/lang/String;
    :cond_63
    invoke-virtual {v13, v11}, Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;->setSymbolSource(Ljava/util/List;)V

    .line 264
    const/4 v2, 0x0

    invoke-virtual {v13, v2}, Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;->setDoubleBuffered(Z)V

    .line 265
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v2

    .line 266
    invoke-virtual {v2}, Lcom/nuance/swype/input/IMEApplication;->getIME()Lcom/nuance/swype/input/IME;

    move-result-object v12

    .line 267
    .local v12, "ime":Lcom/nuance/swype/input/IME;
    invoke-virtual {v12}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/InputView;->getMeasuredWidth()I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v2}, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->setGridCandidates(Ljava/util/List;I)V

    .line 270
    invoke-virtual {v12}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/InputView;->getMeasuredWidth()I

    move-result v2

    mul-int/lit8 v2, v2, 0x1

    div-int/lit8 v6, v2, 0x2

    .line 272
    .local v6, "height":I
    new-instance v1, Lcom/nuance/swype/input/KeyboardEx;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->context:Landroid/content/Context;

    sget v3, Lcom/nuance/swype/input/R$xml;->kbd_chinese_symbol_template:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->mRows:Ljava/util/List;

    .line 273
    invoke-virtual {v12}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nuance/swype/input/InputView;->getMeasuredWidth()I

    move-result v5

    .line 274
    invoke-virtual {v12}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nuance/swype/input/InputView;->getKeyboard()Lcom/nuance/swype/input/KeyboardEx;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nuance/swype/input/KeyboardEx;->getKeyboardDockMode()Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    move-result-object v7

    const/4 v8, 0x1

    invoke-direct/range {v1 .. v8}, Lcom/nuance/swype/input/KeyboardEx;-><init>(Landroid/content/Context;ILjava/util/List;IILcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;Z)V

    .line 275
    .local v1, "keyboard":Lcom/nuance/swype/input/KeyboardEx;
    invoke-virtual {v13, v1}, Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;->setKeyboard(Lcom/nuance/swype/input/KeyboardEx;)V

    .line 277
    invoke-virtual {v13}, Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;->removeAllPendingActions()V

    .line 279
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->invalidate()V

    .line 280
    invoke-virtual {v13}, Lcom/nuance/swype/input/chinese/ChineseKeyboardViewEx;->invalidate()V

    .line 281
    return-void
.end method

.method protected sendPressHoldMessage(II)V
    .registers 7
    .param p1, "delay"    # I
    .param p2, "actionKey"    # I

    .prologue
    .line 381
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->pressHoldHandler:Landroid/os/Handler;

    const/16 v2, 0x3e9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 382
    .local v0, "msg":Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 383
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->pressHoldHandler:Landroid/os/Handler;

    int-to-long v2, p1

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 384
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->context:Landroid/content/Context;

    .line 110
    iget-object v4, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/nuance/swype/input/R$integer;->short_press_timeout_ms:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->longPressHoldTimeout:I

    .line 111
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/nuance/swype/input/R$integer;->emoji_recent_list_max:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 112
    .local v1, "maxSize":I
    new-instance v3, Lcom/nuance/swype/input/emoji/MoveToFirstStrategy;

    invoke-direct {v3, p1, v1}, Lcom/nuance/swype/input/emoji/MoveToFirstStrategy;-><init>(Landroid/content/Context;I)V

    .line 113
    .local v3, "strategy":Lcom/nuance/swype/input/emoji/MoveToFirstStrategy;
    new-instance v0, Lcom/nuance/swype/input/chinese/symbol/MoveToFirstStrategySymbolDecorator;

    invoke-direct {v0, v3}, Lcom/nuance/swype/input/chinese/symbol/MoveToFirstStrategySymbolDecorator;-><init>(Lcom/nuance/swype/input/emoji/MoveToFirstStrategy;)V

    .line 115
    .local v0, "decorator":Lcom/nuance/swype/input/chinese/symbol/MoveToFirstStrategySymbolDecorator;
    new-instance v2, Lcom/nuance/swype/input/emoji/RecentListManager;

    invoke-direct {v2, v0}, Lcom/nuance/swype/input/emoji/RecentListManager;-><init>(Lcom/nuance/swype/input/emoji/RecentListOrderingStrategy;)V

    .line 116
    .local v2, "recentListManager":Lcom/nuance/swype/input/emoji/RecentListManager;
    new-instance v4, Lcom/nuance/swype/input/chinese/symbol/SymbolCategoryList;

    invoke-direct {v4, p1, v2}, Lcom/nuance/swype/input/chinese/symbol/SymbolCategoryList;-><init>(Landroid/content/Context;Lcom/nuance/swype/input/emoji/RecentListManager;)V

    iput-object v4, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->categoryList:Lcom/nuance/swype/input/chinese/symbol/SymbolCategoryList;

    .line 117
    return-void
.end method

.method public setGridCandidates(Ljava/util/List;I)V
    .registers 28
    .param p2, "keyboardWidth"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 613
    .local p1, "aLableList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    if-eqz p1, :cond_4

    if-nez p2, :cond_5

    .line 746
    :cond_4
    return-void

    .line 616
    :cond_5
    sget-object v21, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/16 v22, 0x4

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const-string/jumbo v24, "setGridCandidates...aLableList: "

    aput-object v24, v22, v23

    const/16 v23, 0x1

    aput-object p1, v22, v23

    const/16 v23, 0x2

    const-string/jumbo v24, "...keyboardWidth: "

    aput-object v24, v22, v23

    const/16 v23, 0x3

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-interface/range {v21 .. v22}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 619
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->context:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/nuance/swype/input/IMEApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    sget v22, Lcom/nuance/swype/input/R$dimen;->key_text_size:I

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v20

    .line 621
    .local v20, "textSize":I
    new-instance v16, Landroid/graphics/Paint;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Paint;-><init>()V

    .line 622
    .local v16, "paint":Landroid/graphics/Paint;
    sget-object v21, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 623
    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 624
    sget-object v21, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 625
    div-int/lit8 v21, v20, 0x3

    add-int/lit8 v15, v21, 0x1

    .line 627
    .local v15, "paddingWidth":I
    const/4 v7, 0x0

    .line 628
    .local v7, "curRowWidth":I
    const/4 v6, 0x0

    .line 629
    .local v6, "curRowNumber":I
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 630
    .local v18, "rowKeyWidth":Ljava/util/List;, "Ljava/util/List<Ljava/util/ArrayList<Ljava/lang/Integer;>;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->mRows:Ljava/util/List;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->clear()V

    .line 631
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_78
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v21

    move/from16 v0, v21

    if-ge v9, v0, :cond_4

    .line 634
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v21

    move/from16 v0, v21

    if-le v0, v6, :cond_96

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->mRows:Ljava/util/List;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v21

    move/from16 v0, v21

    if-gt v0, v6, :cond_eb

    .line 635
    :cond_96
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 636
    .local v5, "curRowKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->mRows:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 637
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 638
    .local v4, "curRowKeyWidth":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 645
    :goto_b0
    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/CharSequence;

    invoke-interface/range {v21 .. v21}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v19

    .line 646
    .local v19, "str":Ljava/lang/String;
    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v21

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    add-int/lit8 v21, v21, 0x2

    mul-int/lit8 v22, v15, 0x2

    add-int v11, v21, v22

    .line 647
    .local v11, "keyWidth":I
    mul-int/lit8 v21, v15, 0x2

    add-int v21, v21, v20

    move/from16 v0, v21

    if-ge v11, v0, :cond_db

    .line 648
    mul-int/lit8 v21, v15, 0x2

    add-int v11, v20, v21

    .line 652
    :cond_db
    div-int/lit8 v13, p2, 0x4

    .line 653
    .local v13, "minWidth":I
    move v3, v13

    .line 655
    .local v3, "baseColumnWidth":I
    mul-int/lit8 v21, v13, 0x4

    sub-int v8, p2, v21

    .line 656
    .local v8, "deviation":I
    :goto_e2
    if-le v11, v13, :cond_104

    .line 657
    if-le v13, v3, :cond_102

    mul-int/lit8 v21, v3, 0x2

    add-int v13, v13, v21

    :goto_ea
    goto :goto_e2

    .line 640
    .end local v3    # "baseColumnWidth":I
    .end local v4    # "curRowKeyWidth":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v5    # "curRowKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;>;"
    .end local v8    # "deviation":I
    .end local v11    # "keyWidth":I
    .end local v13    # "minWidth":I
    .end local v19    # "str":Ljava/lang/String;
    :cond_eb
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->mRows:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 641
    .restart local v5    # "curRowKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;>;"
    move-object/from16 v0, v18

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .restart local v4    # "curRowKeyWidth":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    goto :goto_b0

    .line 657
    .restart local v3    # "baseColumnWidth":I
    .restart local v8    # "deviation":I
    .restart local v11    # "keyWidth":I
    .restart local v13    # "minWidth":I
    .restart local v19    # "str":Ljava/lang/String;
    :cond_102
    add-int/2addr v13, v3

    goto :goto_ea

    .line 660
    :cond_104
    move/from16 v0, p2

    if-ge v13, v0, :cond_13f

    move v11, v13

    .line 663
    :goto_109
    add-int v21, v7, v11

    sub-int v22, p2, v8

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_1b1

    .line 665
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v21

    if-nez v21, :cond_11f

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v21

    if-eqz v21, :cond_142

    .line 666
    :cond_11f
    new-instance v21, Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;

    move-object/from16 v0, v21

    move/from16 v1, p2

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;-><init>(ILjava/lang/CharSequence;)V

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 667
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 695
    :goto_138
    const/4 v7, 0x0

    .line 696
    add-int/lit8 v6, v6, 0x1

    .line 631
    :goto_13b
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_78

    :cond_13f
    move/from16 v11, p2

    .line 660
    goto :goto_109

    .line 669
    :cond_142
    sub-int v17, p2, v7

    .line 671
    .local v17, "remainingWidth":I
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_145
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v21

    move/from16 v0, v21

    if-ge v10, v0, :cond_187

    .line 672
    if-lez v17, :cond_187

    move/from16 v0, v17

    if-eq v0, v8, :cond_187

    .line 676
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Integer;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v21

    div-int v21, v21, v3

    rem-int/lit8 v21, v21, 0x2

    if-eqz v21, :cond_184

    .line 677
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Integer;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v21

    add-int v14, v21, v3

    .line 678
    .local v14, "newKeyWidth":I
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v4, v10, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 679
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;

    move-object/from16 v0, v21

    iput v14, v0, Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;->width:I

    .line 680
    sub-int v17, v17, v3

    .line 671
    .end local v14    # "newKeyWidth":I
    :cond_184
    add-int/lit8 v10, v10, 0x1

    goto :goto_145

    .line 685
    :cond_187
    if-lez v17, :cond_1ae

    .line 686
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v21

    add-int/lit8 v12, v21, -0x1

    .line 687
    .local v12, "lastIndex":I
    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Integer;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v21

    add-int v14, v21, v17

    .line 689
    .restart local v14    # "newKeyWidth":I
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v4, v12, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 690
    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;

    move-object/from16 v0, v21

    iput v14, v0, Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;->width:I

    .line 692
    .end local v12    # "lastIndex":I
    .end local v14    # "newKeyWidth":I
    :cond_1ae
    add-int/lit8 v9, v9, -0x1

    goto :goto_138

    .line 699
    .end local v10    # "j":I
    .end local v17    # "remainingWidth":I
    :cond_1b1
    add-int v21, v7, v11

    sub-int v22, p2, v8

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_25f

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v21

    if-lez v21, :cond_25f

    .line 700
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v21

    rem-int/lit8 v21, v21, 0x2

    if-nez v21, :cond_25f

    .line 701
    move/from16 v17, v11

    .line 703
    .restart local v17    # "remainingWidth":I
    const/4 v10, 0x0

    .restart local v10    # "j":I
    :goto_1cc
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v21

    move/from16 v0, v21

    if-ge v10, v0, :cond_20a

    .line 704
    if-lez v17, :cond_20a

    .line 708
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Integer;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v21

    div-int v21, v21, v3

    rem-int/lit8 v21, v21, 0x2

    if-eqz v21, :cond_207

    .line 709
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Integer;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v21

    add-int v14, v21, v3

    .line 710
    .restart local v14    # "newKeyWidth":I
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v4, v10, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 711
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;

    move-object/from16 v0, v21

    iput v14, v0, Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;->width:I

    .line 712
    sub-int v17, v17, v3

    .line 703
    .end local v14    # "newKeyWidth":I
    :cond_207
    add-int/lit8 v10, v10, 0x1

    goto :goto_1cc

    .line 717
    :cond_20a
    if-lez v17, :cond_231

    .line 718
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v21

    add-int/lit8 v12, v21, -0x1

    .line 719
    .restart local v12    # "lastIndex":I
    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Integer;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v21

    add-int v14, v21, v17

    .line 721
    .restart local v14    # "newKeyWidth":I
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v4, v12, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 722
    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;

    move-object/from16 v0, v21

    iput v14, v0, Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;->width:I

    .line 726
    .end local v12    # "lastIndex":I
    .end local v14    # "newKeyWidth":I
    :cond_231
    if-lez v8, :cond_258

    .line 727
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v21

    add-int/lit8 v12, v21, -0x1

    .line 728
    .restart local v12    # "lastIndex":I
    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Integer;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v21

    add-int v14, v21, v8

    .line 730
    .restart local v14    # "newKeyWidth":I
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v4, v12, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 731
    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;

    move-object/from16 v0, v21

    iput v14, v0, Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;->width:I

    .line 734
    .end local v12    # "lastIndex":I
    .end local v14    # "newKeyWidth":I
    :cond_258
    add-int/lit8 v9, v9, -0x1

    .line 735
    const/4 v7, 0x0

    .line 736
    add-int/lit8 v6, v6, 0x1

    .line 738
    goto/16 :goto_13b

    .line 739
    .end local v10    # "j":I
    .end local v17    # "remainingWidth":I
    :cond_25f
    add-int/2addr v7, v11

    .line 740
    new-instance v21, Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-direct {v0, v11, v1}, Lcom/nuance/swype/input/KeyboardEx$GridKeyInfo;-><init>(ILjava/lang/CharSequence;)V

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 741
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_13b
.end method

.method public setTextScale(F)V
    .registers 2
    .param p1, "scale"    # F

    .prologue
    .line 423
    iput p1, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->textScale:F

    .line 424
    return-void
.end method

.method public show()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 430
    iget-object v1, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/nuance/swype/stats/UsageManager;->from(Landroid/content/Context;)Lcom/nuance/swype/stats/UsageManager;

    move-result-object v0

    .line 431
    .local v0, "usageMgr":Lcom/nuance/swype/stats/UsageManager;
    if-eqz v0, :cond_24

    .line 432
    invoke-virtual {v0}, Lcom/nuance/swype/stats/UsageManager;->getKeyboardUsageScribe()Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/IMEApplication;->getIME()Lcom/nuance/swype/input/IME;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/InputView;->getKeyboardLayer()Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    move-result-object v2

    sget-object v3, Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;->KEYBOARD_SYMBOLS:Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;

    invoke-interface {v1, v2, v3}, Lcom/nuance/swype/stats/UsageManager$KeyboardUsageScribe;->recordKeyboardLayerChange(Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;Lcom/nuance/swype/input/KeyboardEx$KeyboardLayerType;)V

    .line 436
    :cond_24
    sget-object v1, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "show(): isActive: "

    aput-object v4, v2, v3

    invoke-virtual {p0}, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->isActive()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x2

    const-string/jumbo v4, "; text scale: "

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget v4, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->textScale:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 437
    invoke-direct {p0, v5, v5}, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->showView(ZZ)Z

    .line 438
    return-void
.end method
