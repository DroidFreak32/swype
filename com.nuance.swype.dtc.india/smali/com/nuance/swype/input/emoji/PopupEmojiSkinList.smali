.class public Lcom/nuance/swype/input/emoji/PopupEmojiSkinList;
.super Landroid/widget/PopupWindow;
.source "PopupEmojiSkinList.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# static fields
.field private static final index:I = -0x1

.field protected static final log:Lcom/nuance/swype/util/LogManager$Log;


# instance fields
.field private billboardHeight:I

.field private context:Landroid/content/Context;

.field private displaySize:Landroid/graphics/Rect;

.field private enableEcl:Z

.field private inflater:Landroid/view/LayoutInflater;

.field private mAdapter:Lcom/nuance/swype/input/emoji/EmojiSkinAdapter;

.field private mParentView:Landroid/view/View;

.field private mRecyclerView:Lcom/nuance/swype/input/emoji/HorizontalSkinToneListView;

.field private mSkinToneContainer:Landroid/view/ViewGroup;

.field private pager:Landroid/view/View;

.field private popupPos:Landroid/graphics/Point;

.field private skinTonePopupMgr:Lcom/nuance/swype/input/emoji/SkinTonePopupManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-string/jumbo v0, "PopupEmojiSkinList"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/emoji/PopupEmojiSkinList;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/LayoutInflater;Landroid/view/View;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "inflater"    # Landroid/view/LayoutInflater;
    .param p3, "pager"    # Landroid/view/View;

    .prologue
    .line 57
    invoke-virtual {p2}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swype/input/emoji/PopupEmojiSkinList;->popupPos:Landroid/graphics/Point;

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swype/input/emoji/PopupEmojiSkinList;->enableEcl:Z

    .line 58
    iput-object p1, p0, Lcom/nuance/swype/input/emoji/PopupEmojiSkinList;->context:Landroid/content/Context;

    .line 59
    iput-object p3, p0, Lcom/nuance/swype/input/emoji/PopupEmojiSkinList;->pager:Landroid/view/View;

    .line 60
    iput-object p2, p0, Lcom/nuance/swype/input/emoji/PopupEmojiSkinList;->inflater:Landroid/view/LayoutInflater;

    .line 61
    invoke-direct {p0}, Lcom/nuance/swype/input/emoji/PopupEmojiSkinList;->setPopupEmojiList()V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/LayoutInflater;Landroid/view/View;ZI)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "inflater"    # Landroid/view/LayoutInflater;
    .param p3, "pager"    # Landroid/view/View;
    .param p4, "enableEcl"    # Z
    .param p5, "billboardHeight"    # I

    .prologue
    .line 46
    invoke-virtual {p2}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swype/input/emoji/PopupEmojiSkinList;->popupPos:Landroid/graphics/Point;

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swype/input/emoji/PopupEmojiSkinList;->enableEcl:Z

    .line 47
    iput-object p1, p0, Lcom/nuance/swype/input/emoji/PopupEmojiSkinList;->context:Landroid/content/Context;

    .line 48
    iput-object p3, p0, Lcom/nuance/swype/input/emoji/PopupEmojiSkinList;->pager:Landroid/view/View;

    .line 49
    iput-object p2, p0, Lcom/nuance/swype/input/emoji/PopupEmojiSkinList;->inflater:Landroid/view/LayoutInflater;

    .line 50
    iput-boolean p4, p0, Lcom/nuance/swype/input/emoji/PopupEmojiSkinList;->enableEcl:Z

    .line 51
    iput p5, p0, Lcom/nuance/swype/input/emoji/PopupEmojiSkinList;->billboardHeight:I

    .line 52
    invoke-direct {p0}, Lcom/nuance/swype/input/emoji/PopupEmojiSkinList;->setPopupEmojiList()V

    .line 53
    return-void
.end method

.method private getDisplaySize()Landroid/graphics/Rect;
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/PopupEmojiSkinList;->displaySize:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/PopupEmojiSkinList;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/IMEApplication;->getDisplayRectSize(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/emoji/PopupEmojiSkinList;->displaySize:Landroid/graphics/Rect;

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/PopupEmojiSkinList;->displaySize:Landroid/graphics/Rect;

    return-object v0
.end method

.method private initPopupView()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x2

    .line 119
    sget-object v0, Lcom/nuance/swype/input/emoji/PopupEmojiSkinList;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v1, v5, [Ljava/lang/Object;

    const-string/jumbo v2, "initSkinPopupView(): called  >>>>>>>>>>"

    aput-object v2, v1, v4

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 120
    invoke-virtual {p0, v3, v3}, Lcom/nuance/swype/input/emoji/PopupEmojiSkinList;->setWindowLayoutMode(II)V

    .line 121
    invoke-virtual {p0, v5}, Lcom/nuance/swype/input/emoji/PopupEmojiSkinList;->setOutsideTouchable(Z)V

    .line 122
    invoke-virtual {p0, v3}, Lcom/nuance/swype/input/emoji/PopupEmojiSkinList;->setWidth(I)V

    .line 123
    invoke-virtual {p0, v3}, Lcom/nuance/swype/input/emoji/PopupEmojiSkinList;->setHeight(I)V

    .line 124
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/emoji/PopupEmojiSkinList;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 125
    invoke-virtual {p0, v4}, Lcom/nuance/swype/input/emoji/PopupEmojiSkinList;->setClippingEnabled(Z)V

    .line 126
    return-void
.end method

.method private setPopupEmojiList()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    const/high16 v5, -0x80000000

    .line 65
    iget-object v1, p0, Lcom/nuance/swype/input/emoji/PopupEmojiSkinList;->inflater:Landroid/view/LayoutInflater;

    sget v2, Lcom/nuance/swype/input/R$layout;->skintone_popup_dialog:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/nuance/swype/input/emoji/PopupEmojiSkinList;->mSkinToneContainer:Landroid/view/ViewGroup;

    .line 66
    iget-object v1, p0, Lcom/nuance/swype/input/emoji/PopupEmojiSkinList;->mSkinToneContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/emoji/PopupEmojiSkinList;->setContentView(Landroid/view/View;)V

    .line 67
    iget-object v1, p0, Lcom/nuance/swype/input/emoji/PopupEmojiSkinList;->mSkinToneContainer:Landroid/view/ViewGroup;

    sget v2, Lcom/nuance/swype/input/R$id;->recycler_view:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/emoji/HorizontalSkinToneListView;

    iput-object v1, p0, Lcom/nuance/swype/input/emoji/PopupEmojiSkinList;->mRecyclerView:Lcom/nuance/swype/input/emoji/HorizontalSkinToneListView;

    .line 68
    iget-object v1, p0, Lcom/nuance/swype/input/emoji/PopupEmojiSkinList;->mRecyclerView:Lcom/nuance/swype/input/emoji/HorizontalSkinToneListView;

    invoke-virtual {v1, v6}, Lcom/nuance/swype/input/emoji/HorizontalSkinToneListView;->setHasFixedSize(Z)V

    .line 69
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v1, p0, Lcom/nuance/swype/input/emoji/PopupEmojiSkinList;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 70
    .local v0, "linearLayoutManager":Landroid/support/v7/widget/LinearLayoutManager;
    invoke-virtual {v0, v4}, Landroid/support/v7/widget/LinearLayoutManager;->setOrientation(I)V

    .line 71
    iget-object v1, p0, Lcom/nuance/swype/input/emoji/PopupEmojiSkinList;->mRecyclerView:Lcom/nuance/swype/input/emoji/HorizontalSkinToneListView;

    invoke-virtual {v1, v0}, Lcom/nuance/swype/input/emoji/HorizontalSkinToneListView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 73
    sget-object v1, Lcom/nuance/swype/input/emoji/PopupEmojiSkinList;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "PopupEmojiSkinList()"

    aput-object v3, v2, v4

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, ": called  >>>>>>>>>> width:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/nuance/swype/input/emoji/PopupEmojiSkinList;->getScreenWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " , "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/nuance/swype/input/emoji/PopupEmojiSkinList;->getScreenHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 74
    iget-object v1, p0, Lcom/nuance/swype/input/emoji/PopupEmojiSkinList;->mSkinToneContainer:Landroid/view/ViewGroup;

    .line 75
    invoke-virtual {p0}, Lcom/nuance/swype/input/emoji/PopupEmojiSkinList;->getScreenWidth()I

    move-result v2

    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 76
    invoke-virtual {p0}, Lcom/nuance/swype/input/emoji/PopupEmojiSkinList;->getScreenHeight()I

    move-result v3

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x4

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 74
    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->measure(II)V

    .line 79
    invoke-direct {p0}, Lcom/nuance/swype/input/emoji/PopupEmojiSkinList;->initPopupView()V

    .line 80
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 0

    .prologue
    .line 138
    invoke-super {p0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 139
    return-void
.end method

.method public getDefaultSkinTonePopupView()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 106
    iget-object v2, p0, Lcom/nuance/swype/input/emoji/PopupEmojiSkinList;->skinTonePopupMgr:Lcom/nuance/swype/input/emoji/SkinTonePopupManager;

    invoke-virtual {v2}, Lcom/nuance/swype/input/emoji/SkinTonePopupManager;->getDefaultSkinTone()Landroid/view/View;

    move-result-object v0

    .line 107
    .local v0, "currentSkinTone":Landroid/view/View;
    iget-object v2, p0, Lcom/nuance/swype/input/emoji/PopupEmojiSkinList;->mRecyclerView:Lcom/nuance/swype/input/emoji/HorizontalSkinToneListView;

    invoke-virtual {v2, v0}, Lcom/nuance/swype/input/emoji/HorizontalSkinToneListView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v1

    .line 108
    .local v1, "position":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 109
    iget-object v2, p0, Lcom/nuance/swype/input/emoji/PopupEmojiSkinList;->skinTonePopupMgr:Lcom/nuance/swype/input/emoji/SkinTonePopupManager;

    invoke-virtual {v2}, Lcom/nuance/swype/input/emoji/SkinTonePopupManager;->getSkinTonePosition()I

    move-result v1

    .line 111
    :cond_0
    iget-object v2, p0, Lcom/nuance/swype/input/emoji/PopupEmojiSkinList;->mParentView:Landroid/view/View;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/nuance/swype/input/emoji/PopupEmojiSkinList;->mParentView:Landroid/view/View;

    instance-of v2, v2, Lcom/nuance/swype/input/emoji/EmojiSkinAdapter$OnItemClickListener;

    if-eqz v2, :cond_1

    .line 112
    sget-object v2, Lcom/nuance/swype/input/emoji/PopupEmojiSkinList;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "setDefaultSkinTone()"

    aput-object v4, v3, v7

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, ": called  >>>>>>>>>> :: position="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " , currentSkinTone:: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 113
    iget-object v2, p0, Lcom/nuance/swype/input/emoji/PopupEmojiSkinList;->mParentView:Landroid/view/View;

    check-cast v2, Lcom/nuance/swype/input/emoji/EmojiSkinAdapter$OnItemClickListener;

    invoke-interface {v2, v0, v1, v7}, Lcom/nuance/swype/input/emoji/EmojiSkinAdapter$OnItemClickListener;->onItemClick(Landroid/view/View;IZ)V

    .line 116
    :cond_1
    return-void
.end method

.method protected getScreenHeight()I
    .locals 1

    .prologue
    .line 156
    invoke-direct {p0}, Lcom/nuance/swype/input/emoji/PopupEmojiSkinList;->getDisplaySize()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    return v0
.end method

.method protected getScreenWidth()I
    .locals 1

    .prologue
    .line 152
    invoke-direct {p0}, Lcom/nuance/swype/input/emoji/PopupEmojiSkinList;->getDisplaySize()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 146
    sget-object v0, Lcom/nuance/swype/input/emoji/PopupEmojiSkinList;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "onTouch(): called  >>>>>>>>>>"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 147
    return v4
.end method

.method public setSkinToneAdapter(Ljava/util/List;Landroid/view/View;Lcom/nuance/swype/input/emoji/EmojiInfo;I)V
    .locals 7
    .param p2, "mParentView"    # Landroid/view/View;
    .param p3, "cell"    # Lcom/nuance/swype/input/emoji/EmojiInfo;
    .param p4, "defaultSkinTone"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swype/input/emoji/Emoji;",
            ">;",
            "Landroid/view/View;",
            "Lcom/nuance/swype/input/emoji/EmojiInfo;",
            "I)V"
        }
    .end annotation

    .prologue
    .local p1, "emojisList":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/emoji/Emoji;>;"
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 82
    sget-object v0, Lcom/nuance/swype/input/emoji/PopupEmojiSkinList;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v1, v6, [Ljava/lang/Object;

    const-string/jumbo v2, "setSkinToneAdapter()"

    aput-object v2, v1, v4

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, ": called  >>>>>>>>>>"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 83
    new-instance v0, Lcom/nuance/swype/input/emoji/EmojiSkinAdapter;

    iget-object v1, p0, Lcom/nuance/swype/input/emoji/PopupEmojiSkinList;->context:Landroid/content/Context;

    invoke-direct {v0, v1, p1, p2}, Lcom/nuance/swype/input/emoji/EmojiSkinAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Landroid/view/View;)V

    iput-object v0, p0, Lcom/nuance/swype/input/emoji/PopupEmojiSkinList;->mAdapter:Lcom/nuance/swype/input/emoji/EmojiSkinAdapter;

    .line 84
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/PopupEmojiSkinList;->mAdapter:Lcom/nuance/swype/input/emoji/EmojiSkinAdapter;

    invoke-virtual {v0, p4}, Lcom/nuance/swype/input/emoji/EmojiSkinAdapter;->setDefaultSkinTone(I)V

    .line 85
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/PopupEmojiSkinList;->mRecyclerView:Lcom/nuance/swype/input/emoji/HorizontalSkinToneListView;

    iget-object v1, p0, Lcom/nuance/swype/input/emoji/PopupEmojiSkinList;->mAdapter:Lcom/nuance/swype/input/emoji/EmojiSkinAdapter;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/emoji/HorizontalSkinToneListView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 87
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/PopupEmojiSkinList;->skinTonePopupMgr:Lcom/nuance/swype/input/emoji/SkinTonePopupManager;

    if-nez v0, :cond_0

    .line 88
    new-instance v0, Lcom/nuance/swype/input/emoji/SkinTonePopupManager;

    iget-object v1, p0, Lcom/nuance/swype/input/emoji/PopupEmojiSkinList;->pager:Landroid/view/View;

    iget-object v2, p0, Lcom/nuance/swype/input/emoji/PopupEmojiSkinList;->context:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/nuance/swype/input/emoji/SkinTonePopupManager;-><init>(Landroid/view/View;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nuance/swype/input/emoji/PopupEmojiSkinList;->skinTonePopupMgr:Lcom/nuance/swype/input/emoji/SkinTonePopupManager;

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/PopupEmojiSkinList;->skinTonePopupMgr:Lcom/nuance/swype/input/emoji/SkinTonePopupManager;

    iget-object v1, p0, Lcom/nuance/swype/input/emoji/PopupEmojiSkinList;->mSkinToneContainer:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/nuance/swype/input/emoji/PopupEmojiSkinList;->mRecyclerView:Lcom/nuance/swype/input/emoji/HorizontalSkinToneListView;

    invoke-virtual {v0, v1, v2, p3}, Lcom/nuance/swype/input/emoji/SkinTonePopupManager;->preparePopup(Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Lcom/nuance/swype/input/emoji/EmojiInfo;)Landroid/graphics/Point;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/emoji/PopupEmojiSkinList;->popupPos:Landroid/graphics/Point;

    .line 92
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/PopupEmojiSkinList;->popupPos:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/nuance/swype/input/emoji/PopupEmojiSkinList;->popupPos:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget v2, p0, Lcom/nuance/swype/input/emoji/PopupEmojiSkinList;->billboardHeight:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 94
    iget-boolean v0, p0, Lcom/nuance/swype/input/emoji/PopupEmojiSkinList;->enableEcl:Z

    if-nez v0, :cond_1

    .line 95
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/PopupEmojiSkinList;->popupPos:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/nuance/swype/input/emoji/PopupEmojiSkinList;->popupPos:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget-object v2, p0, Lcom/nuance/swype/input/emoji/PopupEmojiSkinList;->pager:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 98
    :cond_1
    sget-object v0, Lcom/nuance/swype/input/emoji/PopupEmojiSkinList;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v1, v6, [Ljava/lang/Object;

    const-string/jumbo v2, "showPopupKeyboardHelper()"

    aput-object v2, v1, v4

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, ": called  >>>>>>>>>> :: pos="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/nuance/swype/input/emoji/PopupEmojiSkinList;->popupPos:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " , y:: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/swype/input/emoji/PopupEmojiSkinList;->popupPos:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 99
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 100
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/PopupEmojiSkinList;->popupPos:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/nuance/swype/input/emoji/PopupEmojiSkinList;->popupPos:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, p2, v4, v0, v1}, Lcom/nuance/swype/input/emoji/PopupEmojiSkinList;->showAtLocation(Landroid/view/View;III)V

    .line 102
    :cond_2
    iput-object p2, p0, Lcom/nuance/swype/input/emoji/PopupEmojiSkinList;->mParentView:Landroid/view/View;

    .line 103
    return-void
.end method

.method public showAtLocation(Landroid/view/View;III)V
    .locals 5
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "gravity"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I

    .prologue
    .line 132
    sget-object v0, Lcom/nuance/swype/input/emoji/PopupEmojiSkinList;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "initSkinPopupView(): called  >>>>>>>>>> :: x=="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " , y=="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 133
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 134
    return-void
.end method

.method public touchMoveHandleBySkinPopup(III)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "xOffset"    # I

    .prologue
    .line 172
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/PopupEmojiSkinList;->skinTonePopupMgr:Lcom/nuance/swype/input/emoji/SkinTonePopupManager;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/PopupEmojiSkinList;->skinTonePopupMgr:Lcom/nuance/swype/input/emoji/SkinTonePopupManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/nuance/swype/input/emoji/SkinTonePopupManager;->onMove(III)V

    .line 174
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/PopupEmojiSkinList;->skinTonePopupMgr:Lcom/nuance/swype/input/emoji/SkinTonePopupManager;

    iget-object v1, p0, Lcom/nuance/swype/input/emoji/PopupEmojiSkinList;->mAdapter:Lcom/nuance/swype/input/emoji/EmojiSkinAdapter;

    invoke-virtual {v1}, Lcom/nuance/swype/input/emoji/EmojiSkinAdapter;->getSkinTonePosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/emoji/SkinTonePopupManager;->setSkinTonePosition(I)V

    .line 176
    :cond_0
    return-void
.end method

.method public touchMoveHandleBySkinPopup(IIII)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "xOffset"    # I
    .param p4, "yOffset"    # I

    .prologue
    .line 166
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/PopupEmojiSkinList;->skinTonePopupMgr:Lcom/nuance/swype/input/emoji/SkinTonePopupManager;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/PopupEmojiSkinList;->skinTonePopupMgr:Lcom/nuance/swype/input/emoji/SkinTonePopupManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/nuance/swype/input/emoji/SkinTonePopupManager;->onMove(IIII)V

    .line 168
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/PopupEmojiSkinList;->skinTonePopupMgr:Lcom/nuance/swype/input/emoji/SkinTonePopupManager;

    iget-object v1, p0, Lcom/nuance/swype/input/emoji/PopupEmojiSkinList;->mAdapter:Lcom/nuance/swype/input/emoji/EmojiSkinAdapter;

    invoke-virtual {v1}, Lcom/nuance/swype/input/emoji/EmojiSkinAdapter;->getSkinTonePosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/emoji/SkinTonePopupManager;->setSkinTonePosition(I)V

    .line 170
    :cond_0
    return-void
.end method
