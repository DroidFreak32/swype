.class public Lcom/nuance/swype/input/emoji/EmojiPageView;
.super Landroid/view/ViewGroup;
.source "EmojiPageView.java"

# interfaces
.implements Lcom/nuance/swype/input/emoji/EmojiSkinAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/input/emoji/EmojiPageView$Listener;,
        Lcom/nuance/swype/input/emoji/EmojiPageView$EmojiFeedback;,
        Lcom/nuance/swype/input/emoji/EmojiPageView$KeyMapper;
    }
.end annotation


# static fields
.field protected static final log:Lcom/nuance/swype/util/LogManager$Log;


# instance fields
.field private app:Lcom/nuance/swype/input/IMEApplication;

.field private cat:Lcom/nuance/swype/input/emoji/EmojiCategory;

.field private cell:Lcom/nuance/swype/input/emoji/EmojiGridCell;

.field private cells:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swype/input/emoji/EmojiGridCell;",
            ">;"
        }
    .end annotation
.end field

.field private drawDebug:Lcom/nuance/swype/util/DrawDebug;

.field private emojiCacheManager:Lcom/nuance/swype/input/emoji/EmojiCacheManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nuance/swype/input/emoji/EmojiCacheManager",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private emojis:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swype/input/emoji/Emoji;",
            ">;"
        }
    .end annotation
.end field

.field private fingerStateManager:Lcom/nuance/swype/input/emoji/finger/FingerStateManager;

.field private invalid:Landroid/graphics/Rect;

.field private isEmojiPressed:Z

.field private keyColor:Landroid/content/res/ColorStateList;

.field private listener:Lcom/nuance/swype/input/emoji/EmojiPageView$Listener;

.field mSelectionHighlight:Landroid/graphics/drawable/Drawable;

.field private pager:Lcom/nuance/swype/input/emoji/EmojiViewPager;

.field private params:Lcom/nuance/swype/input/emoji/EmojiGridParams;

.field private final points:[I

.field private popupEmojiSkinList:Lcom/nuance/swype/input/emoji/PopupEmojiSkinList;

.field private popupManager:Lcom/nuance/swype/input/emoji/util/PopupManager;

.field private skinToneList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swype/input/emoji/Emoji;",
            ">;"
        }
    .end annotation
.end field

.field private userPrefs:Lcom/nuance/swype/input/UserPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-string/jumbo v0, "EmojiPageView"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/emoji/EmojiPageView;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 101
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 299
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiPageView;->points:[I

    .line 355
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiPageView;->invalid:Landroid/graphics/Rect;

    .line 102
    invoke-static {p1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$attr;->emojiColor:I

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/IMEApplication;->getThemedColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiPageView;->keyColor:Landroid/content/res/ColorStateList;

    .line 103
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/emoji/EmojiPageView;->setWillNotDraw(Z)V

    .line 105
    return-void
.end method

.method private drawCells(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 358
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiPageView;->invalid:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiPageView;->params:Lcom/nuance/swype/input/emoji/EmojiGridParams;

    iget-object v0, v0, Lcom/nuance/swype/input/emoji/EmojiGridParams;->paint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/nuance/swype/input/emoji/EmojiPageView;->keyColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 361
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiPageView;->cells:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/emoji/EmojiGridCell;

    .line 363
    iget-object v2, p0, Lcom/nuance/swype/input/emoji/EmojiPageView;->drawDebug:Lcom/nuance/swype/util/DrawDebug;

    invoke-virtual {v0, p1, v2}, Lcom/nuance/swype/input/emoji/EmojiGridCell;->draw(Landroid/graphics/Canvas;Lcom/nuance/swype/util/DrawDebug;)V

    goto :goto_0

    .line 367
    :cond_0
    return-void
.end method

.method private getEmojiIndex(FF)I
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 327
    iget-object v1, p0, Lcom/nuance/swype/input/emoji/EmojiPageView;->params:Lcom/nuance/swype/input/emoji/EmojiGridParams;

    invoke-virtual {v1, p1, p2}, Lcom/nuance/swype/input/emoji/EmojiGridParams;->getCellIndex(FF)I

    move-result v0

    .line 328
    .local v0, "index":I
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/input/emoji/EmojiPageView;->emojis:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .end local v0    # "index":I
    :goto_0
    return v0

    .restart local v0    # "index":I
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private initSkinPopupView()V
    .locals 5

    .prologue
    .line 173
    invoke-virtual {p0}, Lcom/nuance/swype/input/emoji/EmojiPageView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    .line 174
    .local v0, "app":Lcom/nuance/swype/input/IMEApplication;
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/nuance/swype/input/IMEApplication;->getThemedLayoutInflater(Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 175
    .local v1, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getThemeLoader()Lcom/nuance/swype/plugin/ThemeLoader;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/nuance/swype/plugin/ThemeLoader;->setLayoutInflaterFactory(Landroid/view/LayoutInflater;)V

    .line 176
    new-instance v2, Lcom/nuance/swype/input/emoji/PopupEmojiSkinList;

    invoke-virtual {p0}, Lcom/nuance/swype/input/emoji/EmojiPageView;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/nuance/swype/input/emoji/EmojiPageView;->pager:Lcom/nuance/swype/input/emoji/EmojiViewPager;

    invoke-direct {v2, v3, v1, v4}, Lcom/nuance/swype/input/emoji/PopupEmojiSkinList;-><init>(Landroid/content/Context;Landroid/view/LayoutInflater;Landroid/view/View;)V

    iput-object v2, p0, Lcom/nuance/swype/input/emoji/EmojiPageView;->popupEmojiSkinList:Lcom/nuance/swype/input/emoji/PopupEmojiSkinList;

    .line 177
    return-void
.end method

.method private setSkinToneAdapter(Lcom/nuance/swype/input/emoji/EmojiGridCell;)V
    .locals 6
    .param p1, "cell"    # Lcom/nuance/swype/input/emoji/EmojiGridCell;

    .prologue
    .line 181
    invoke-virtual {p1}, Lcom/nuance/swype/input/emoji/EmojiGridCell;->getCellIndex()I

    move-result v4

    iget-object v5, p0, Lcom/nuance/swype/input/emoji/EmojiPageView;->emojis:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-gt v4, v5, :cond_0

    .line 182
    invoke-virtual {p1}, Lcom/nuance/swype/input/emoji/EmojiGridCell;->getEmoji()Lcom/nuance/swype/input/emoji/Emoji;

    move-result-object v1

    .line 183
    .local v1, "emoji":Lcom/nuance/swype/input/emoji/Emoji;
    if-nez v1, :cond_1

    .line 205
    .end local v1    # "emoji":Lcom/nuance/swype/input/emoji/Emoji;
    :cond_0
    :goto_0
    return-void

    .line 186
    .restart local v1    # "emoji":Lcom/nuance/swype/input/emoji/Emoji;
    :cond_1
    invoke-virtual {v1}, Lcom/nuance/swype/input/emoji/Emoji;->getEmojiSkinType()Lcom/nuance/swype/input/emoji/Emoji$SkinToneEnum;

    move-result-object v3

    .line 187
    .local v3, "skinToneEnum":Lcom/nuance/swype/input/emoji/Emoji$SkinToneEnum;
    const/4 v0, 0x0

    .line 188
    .local v0, "defaultSkinTone":I
    if-eqz v3, :cond_2

    .line 189
    invoke-virtual {v3}, Lcom/nuance/swype/input/emoji/Emoji$SkinToneEnum;->getSkinValue()I

    move-result v0

    .line 192
    :cond_2
    invoke-virtual {v1}, Lcom/nuance/swype/input/emoji/Emoji;->isSkinTone()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 193
    invoke-virtual {v1}, Lcom/nuance/swype/input/emoji/Emoji;->getParentEmoji()Lcom/nuance/swype/input/emoji/Emoji;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/input/emoji/Emoji;->getEmojiSkinToneList()Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/nuance/swype/input/emoji/EmojiPageView;->skinToneList:Ljava/util/List;

    .line 198
    :goto_1
    new-instance v2, Lcom/nuance/swype/input/emoji/EmojiInfo;

    invoke-direct {v2}, Lcom/nuance/swype/input/emoji/EmojiInfo;-><init>()V

    .line 199
    .local v2, "emojiInfo":Lcom/nuance/swype/input/emoji/EmojiInfo;
    invoke-virtual {p1}, Lcom/nuance/swype/input/emoji/EmojiGridCell;->getLeft()I

    move-result v4

    iput v4, v2, Lcom/nuance/swype/input/emoji/EmojiInfo;->xPos:I

    .line 200
    invoke-virtual {p1}, Lcom/nuance/swype/input/emoji/EmojiGridCell;->getTop()I

    move-result v4

    iput v4, v2, Lcom/nuance/swype/input/emoji/EmojiInfo;->yPos:I

    .line 201
    invoke-virtual {p1}, Lcom/nuance/swype/input/emoji/EmojiGridCell;->getWidth()I

    move-result v4

    iput v4, v2, Lcom/nuance/swype/input/emoji/EmojiInfo;->width:I

    .line 202
    invoke-virtual {p1}, Lcom/nuance/swype/input/emoji/EmojiGridCell;->getHeight()I

    move-result v4

    iput v4, v2, Lcom/nuance/swype/input/emoji/EmojiInfo;->height:I

    .line 203
    iget-object v4, p0, Lcom/nuance/swype/input/emoji/EmojiPageView;->popupEmojiSkinList:Lcom/nuance/swype/input/emoji/PopupEmojiSkinList;

    iget-object v5, p0, Lcom/nuance/swype/input/emoji/EmojiPageView;->skinToneList:Ljava/util/List;

    invoke-virtual {v4, v5, p0, v2, v0}, Lcom/nuance/swype/input/emoji/PopupEmojiSkinList;->setSkinToneAdapter(Ljava/util/List;Landroid/view/View;Lcom/nuance/swype/input/emoji/EmojiInfo;I)V

    goto :goto_0

    .line 195
    .end local v2    # "emojiInfo":Lcom/nuance/swype/input/emoji/EmojiInfo;
    :cond_3
    iget-object v4, p0, Lcom/nuance/swype/input/emoji/EmojiPageView;->emojis:Ljava/util/List;

    invoke-virtual {p1}, Lcom/nuance/swype/input/emoji/EmojiGridCell;->getCellIndex()I

    move-result v5

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nuance/swype/input/emoji/Emoji;

    invoke-virtual {v4}, Lcom/nuance/swype/input/emoji/Emoji;->getEmojiSkinToneList()Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/nuance/swype/input/emoji/EmojiPageView;->skinToneList:Ljava/util/List;

    goto :goto_1
.end method


# virtual methods
.method public dismissEmojiPopup()V
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiPageView;->popupEmojiSkinList:Lcom/nuance/swype/input/emoji/PopupEmojiSkinList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiPageView;->popupEmojiSkinList:Lcom/nuance/swype/input/emoji/PopupEmojiSkinList;

    invoke-virtual {v0}, Lcom/nuance/swype/input/emoji/PopupEmojiSkinList;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiPageView;->popupEmojiSkinList:Lcom/nuance/swype/input/emoji/PopupEmojiSkinList;

    invoke-virtual {v0}, Lcom/nuance/swype/input/emoji/PopupEmojiSkinList;->dismiss()V

    .line 221
    :cond_0
    return-void
.end method

.method drawEmojiBackground(Landroid/graphics/Canvas;IIII)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 424
    sub-int v0, p4, p2

    if-lez v0, :cond_0

    sub-int v0, p5, p3

    if-gtz v0, :cond_1

    .line 435
    :cond_0
    :goto_0
    return-void

    .line 429
    :cond_1
    sget-object v0, Lcom/nuance/swype/input/emoji/EmojiPageView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "drawSkinToneSelector()"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, " draw called ::  left:: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", top:: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "right :: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " , bottom :: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 431
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 432
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiPageView;->mSelectionHighlight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 433
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiPageView;->mSelectionHighlight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 434
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0
.end method

.method public drawEmojiSelector(Lcom/nuance/swype/input/emoji/EmojiGridCell;)V
    .locals 1
    .param p1, "cell"    # Lcom/nuance/swype/input/emoji/EmojiGridCell;

    .prologue
    .line 416
    invoke-virtual {p0}, Lcom/nuance/swype/input/emoji/EmojiPageView;->isEmojiPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 421
    :goto_0
    return-void

    .line 419
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/emoji/EmojiPageView;->setEmojiPressed(Z)V

    .line 420
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/emoji/EmojiPageView;->invalidate(Lcom/nuance/swype/input/emoji/EmojiGridCell;)V

    goto :goto_0
.end method

.method protected getCell(FF)Lcom/nuance/swype/input/emoji/EmojiGridCell;
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 337
    invoke-direct {p0, p1, p2}, Lcom/nuance/swype/input/emoji/EmojiPageView;->getEmojiIndex(FF)I

    move-result v0

    .line 338
    .local v0, "idx":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/input/emoji/EmojiPageView;->cells:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/emoji/EmojiGridCell;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDrawDebug()Lcom/nuance/swype/util/DrawDebug;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiPageView;->drawDebug:Lcom/nuance/swype/util/DrawDebug;

    return-object v0
.end method

.method public getEmojiText(FF)Ljava/lang/String;
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 332
    invoke-direct {p0, p1, p2}, Lcom/nuance/swype/input/emoji/EmojiPageView;->getEmojiIndex(FF)I

    move-result v0

    .line 333
    .local v0, "idx":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/input/emoji/EmojiPageView;->emojis:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/emoji/Emoji;

    invoke-virtual {v1}, Lcom/nuance/swype/input/emoji/Emoji;->getEmojiDisplayCode()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getParams()Lcom/nuance/swype/input/emoji/EmojiGridParams;
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiPageView;->params:Lcom/nuance/swype/input/emoji/EmojiGridParams;

    return-object v0
.end method

.method public getPopupManager()Lcom/nuance/swype/input/emoji/util/PopupManager;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiPageView;->popupManager:Lcom/nuance/swype/input/emoji/util/PopupManager;

    return-object v0
.end method

.method public init(Lcom/nuance/swype/view/OverlayView;Lcom/nuance/swype/input/emoji/EmojiCategory;Lcom/nuance/swype/input/emoji/EmojiGridParams;Lcom/nuance/swype/input/emoji/finger/FingerStateListener;Ljava/util/List;ILcom/nuance/swype/input/emoji/EmojiViewPager;)V
    .locals 6
    .param p1, "overlayView"    # Lcom/nuance/swype/view/OverlayView;
    .param p2, "cat"    # Lcom/nuance/swype/input/emoji/EmojiCategory;
    .param p3, "params"    # Lcom/nuance/swype/input/emoji/EmojiGridParams;
    .param p4, "fingerListener"    # Lcom/nuance/swype/input/emoji/finger/FingerStateListener;
    .param p6, "pageNumber"    # I
    .param p7, "pager"    # Lcom/nuance/swype/input/emoji/EmojiViewPager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nuance/swype/view/OverlayView;",
            "Lcom/nuance/swype/input/emoji/EmojiCategory;",
            "Lcom/nuance/swype/input/emoji/EmojiGridParams;",
            "Lcom/nuance/swype/input/emoji/finger/FingerStateListener;",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swype/input/emoji/Emoji;",
            ">;I",
            "Lcom/nuance/swype/input/emoji/EmojiViewPager;",
            ")V"
        }
    .end annotation

    .prologue
    .line 129
    .local p5, "items":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/emoji/Emoji;>;"
    iput-object p3, p0, Lcom/nuance/swype/input/emoji/EmojiPageView;->params:Lcom/nuance/swype/input/emoji/EmojiGridParams;

    .line 130
    iput-object p7, p0, Lcom/nuance/swype/input/emoji/EmojiPageView;->pager:Lcom/nuance/swype/input/emoji/EmojiViewPager;

    .line 131
    iput-object p2, p0, Lcom/nuance/swype/input/emoji/EmojiPageView;->cat:Lcom/nuance/swype/input/emoji/EmojiCategory;

    .line 132
    new-instance v3, Lcom/nuance/swype/input/emoji/util/PopupManager;

    invoke-direct {v3, p1, p0}, Lcom/nuance/swype/input/emoji/util/PopupManager;-><init>(Lcom/nuance/swype/view/OverlayView;Landroid/view/View;)V

    iput-object v3, p0, Lcom/nuance/swype/input/emoji/EmojiPageView;->popupManager:Lcom/nuance/swype/input/emoji/util/PopupManager;

    .line 133
    invoke-virtual {p0}, Lcom/nuance/swype/input/emoji/EmojiPageView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/nuance/swype/input/emoji/EmojiCacheManager;->from(Landroid/content/Context;)Lcom/nuance/swype/input/emoji/EmojiCacheManager;

    move-result-object v3

    iput-object v3, p0, Lcom/nuance/swype/input/emoji/EmojiPageView;->emojiCacheManager:Lcom/nuance/swype/input/emoji/EmojiCacheManager;

    .line 134
    invoke-virtual {p0}, Lcom/nuance/swype/input/emoji/EmojiPageView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/UserPreferences;->getLongPressDelay()I

    move-result v2

    .line 135
    .local v2, "holdTimeout":I
    invoke-virtual {p0}, Lcom/nuance/swype/input/emoji/EmojiPageView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/nuance/swype/input/emoji/finger/FingerState$Params;->createDefault(Landroid/content/Context;)Lcom/nuance/swype/input/emoji/finger/FingerState$Params;

    move-result-object v0

    .line 136
    .local v0, "defaults":Lcom/nuance/swype/input/emoji/finger/FingerState$Params;
    new-instance v3, Lcom/nuance/swype/input/emoji/finger/FingerState$Params$Builder;

    invoke-direct {v3, v0}, Lcom/nuance/swype/input/emoji/finger/FingerState$Params$Builder;-><init>(Lcom/nuance/swype/input/emoji/finger/FingerState$Params;)V

    const/4 v4, 0x0

    .line 137
    invoke-virtual {v3, v4}, Lcom/nuance/swype/input/emoji/finger/FingerState$Params$Builder;->setTrackVelocity(Z)Lcom/nuance/swype/input/emoji/finger/FingerState$Params$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/nuance/swype/input/emoji/finger/FingerState$Params$Builder;->setHoldTimeout(I)Lcom/nuance/swype/input/emoji/finger/FingerState$Params$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/emoji/finger/FingerState$Params$Builder;->build()Lcom/nuance/swype/input/emoji/finger/FingerState$Params;

    move-result-object v1

    .line 139
    .local v1, "fingerParams":Lcom/nuance/swype/input/emoji/finger/FingerState$Params;
    new-instance v3, Lcom/nuance/swype/input/emoji/finger/FingerStateManager;

    invoke-virtual {p0}, Lcom/nuance/swype/input/emoji/EmojiPageView;->getContext()Landroid/content/Context;

    move-result-object v4

    new-instance v5, Lcom/nuance/swype/input/emoji/EmojiPageView$KeyMapper;

    invoke-direct {v5, p0}, Lcom/nuance/swype/input/emoji/EmojiPageView$KeyMapper;-><init>(Lcom/nuance/swype/input/emoji/EmojiPageView;)V

    invoke-direct {v3, v4, v1, p4, v5}, Lcom/nuance/swype/input/emoji/finger/FingerStateManager;-><init>(Landroid/content/Context;Lcom/nuance/swype/input/emoji/finger/FingerState$Params;Lcom/nuance/swype/input/emoji/finger/FingerStateListener;Lcom/nuance/swype/input/emoji/finger/Fingerable$FingerableMapper;)V

    iput-object v3, p0, Lcom/nuance/swype/input/emoji/EmojiPageView;->fingerStateManager:Lcom/nuance/swype/input/emoji/finger/FingerStateManager;

    .line 144
    invoke-virtual {p0, p5, p2, p6}, Lcom/nuance/swype/input/emoji/EmojiPageView;->setItems(Ljava/util/List;Lcom/nuance/swype/input/emoji/EmojiCategory;I)V

    .line 145
    invoke-direct {p0}, Lcom/nuance/swype/input/emoji/EmojiPageView;->initSkinPopupView()V

    .line 146
    invoke-virtual {p0}, Lcom/nuance/swype/input/emoji/EmojiPageView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/nuance/swype/input/emoji/EmojiPageView;->userPrefs:Lcom/nuance/swype/input/UserPreferences;

    .line 147
    invoke-virtual {p0}, Lcom/nuance/swype/input/emoji/EmojiPageView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v3

    iput-object v3, p0, Lcom/nuance/swype/input/emoji/EmojiPageView;->app:Lcom/nuance/swype/input/IMEApplication;

    .line 148
    iget-object v3, p0, Lcom/nuance/swype/input/emoji/EmojiPageView;->app:Lcom/nuance/swype/input/IMEApplication;

    sget v4, Lcom/nuance/swype/input/R$attr;->emojiSelectorBackgroundPressed:I

    invoke-virtual {v3, v4}, Lcom/nuance/swype/input/IMEApplication;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/nuance/swype/input/emoji/EmojiPageView;->mSelectionHighlight:Landroid/graphics/drawable/Drawable;

    .line 150
    return-void
.end method

.method protected intersects(Landroid/graphics/Rect;Lcom/nuance/swype/input/emoji/EmojiGridCell;)Z
    .locals 4
    .param p1, "area"    # Landroid/graphics/Rect;
    .param p2, "cell"    # Lcom/nuance/swype/input/emoji/EmojiGridCell;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 342
    iget-object v2, p0, Lcom/nuance/swype/input/emoji/EmojiPageView;->points:[I

    invoke-virtual {p2, v2}, Lcom/nuance/swype/input/emoji/EmojiGridCell;->getTransformedBounds([I)V

    .line 343
    iget-object v2, p0, Lcom/nuance/swype/input/emoji/EmojiPageView;->points:[I

    aget v2, v2, v1

    iget v3, p1, Landroid/graphics/Rect;->right:I

    if-ge v2, v3, :cond_0

    iget-object v2, p0, Lcom/nuance/swype/input/emoji/EmojiPageView;->points:[I

    const/4 v3, 0x2

    aget v2, v2, v3

    iget v3, p1, Landroid/graphics/Rect;->left:I

    if-gt v2, v3, :cond_2

    :cond_0
    move v0, v1

    .line 349
    :cond_1
    :goto_0
    return v0

    .line 346
    :cond_2
    iget-object v2, p0, Lcom/nuance/swype/input/emoji/EmojiPageView;->points:[I

    aget v2, v2, v0

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    if-ge v2, v3, :cond_3

    iget-object v2, p0, Lcom/nuance/swype/input/emoji/EmojiPageView;->points:[I

    const/4 v3, 0x3

    aget v2, v2, v3

    iget v3, p1, Landroid/graphics/Rect;->top:I

    if-gt v2, v3, :cond_1

    :cond_3
    move v0, v1

    .line 347
    goto :goto_0
.end method

.method protected invalidate(Lcom/nuance/swype/input/emoji/EmojiGridCell;)V
    .locals 4
    .param p1, "cell"    # Lcom/nuance/swype/input/emoji/EmojiGridCell;

    .prologue
    .line 304
    sget-object v0, Lcom/nuance/swype/input/emoji/EmojiPageView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "EmojiPageView(): invalidate :: called  : >>>>>> "

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 305
    iput-object p1, p0, Lcom/nuance/swype/input/emoji/EmojiPageView;->cell:Lcom/nuance/swype/input/emoji/EmojiGridCell;

    .line 307
    invoke-virtual {p0}, Lcom/nuance/swype/input/emoji/EmojiPageView;->invalidate()V

    .line 314
    return-void
.end method

.method public isEmojiPressed()Z
    .locals 1

    .prologue
    .line 437
    iget-boolean v0, p0, Lcom/nuance/swype/input/emoji/EmojiPageView;->isEmojiPressed:Z

    return v0
.end method

.method protected notifyFeedback(Lcom/nuance/swype/input/emoji/EmojiGridCell;Lcom/nuance/swype/input/emoji/EmojiPageView$EmojiFeedback;)V
    .locals 2
    .param p1, "cell"    # Lcom/nuance/swype/input/emoji/EmojiGridCell;
    .param p2, "feedback"    # Lcom/nuance/swype/input/emoji/EmojiPageView$EmojiFeedback;

    .prologue
    .line 259
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiPageView;->listener:Lcom/nuance/swype/input/emoji/EmojiPageView$Listener;

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiPageView;->listener:Lcom/nuance/swype/input/emoji/EmojiPageView$Listener;

    invoke-virtual {p1}, Lcom/nuance/swype/input/emoji/EmojiGridCell;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/nuance/swype/input/emoji/EmojiPageView$Listener;->playFeedback(Ljava/lang/String;Lcom/nuance/swype/input/emoji/EmojiPageView$EmojiFeedback;)V

    .line 262
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 386
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 388
    invoke-virtual {p0}, Lcom/nuance/swype/input/emoji/EmojiPageView;->dismissEmojiPopup()V

    .line 389
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiPageView;->popupManager:Lcom/nuance/swype/input/emoji/util/PopupManager;

    invoke-virtual {v0}, Lcom/nuance/swype/input/emoji/util/PopupManager;->hideAll()V

    .line 390
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v4, 0x1

    .line 285
    sget-object v0, Lcom/nuance/swype/input/emoji/EmojiPageView;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "EmojiPageView(): onDraw :: called  : >>>>>> "

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 286
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->save(I)I

    .line 287
    invoke-virtual {p0}, Lcom/nuance/swype/input/emoji/EmojiPageView;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/nuance/swype/input/emoji/EmojiPageView;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 288
    invoke-virtual {p0}, Lcom/nuance/swype/input/emoji/EmojiPageView;->isEmojiPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiPageView;->cell:Lcom/nuance/swype/input/emoji/EmojiGridCell;

    invoke-virtual {v0}, Lcom/nuance/swype/input/emoji/EmojiGridCell;->getLeft()I

    move-result v2

    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiPageView;->cell:Lcom/nuance/swype/input/emoji/EmojiGridCell;

    invoke-virtual {v0}, Lcom/nuance/swype/input/emoji/EmojiGridCell;->getTop()I

    move-result v3

    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiPageView;->cell:Lcom/nuance/swype/input/emoji/EmojiGridCell;

    invoke-virtual {v0}, Lcom/nuance/swype/input/emoji/EmojiGridCell;->getRight()I

    move-result v4

    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiPageView;->cell:Lcom/nuance/swype/input/emoji/EmojiGridCell;

    invoke-virtual {v0}, Lcom/nuance/swype/input/emoji/EmojiGridCell;->getBottom()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/nuance/swype/input/emoji/EmojiPageView;->drawEmojiBackground(Landroid/graphics/Canvas;IIII)V

    .line 292
    :cond_0
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/emoji/EmojiPageView;->drawCells(Landroid/graphics/Canvas;)V

    .line 293
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 294
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiPageView;->drawDebug:Lcom/nuance/swype/util/DrawDebug;

    if-eqz v0, :cond_1

    .line 295
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiPageView;->drawDebug:Lcom/nuance/swype/util/DrawDebug;

    invoke-virtual {p0}, Lcom/nuance/swype/input/emoji/EmojiPageView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/nuance/swype/input/emoji/EmojiPageView;->getHeight()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/nuance/swype/util/DrawDebug;->drawBorderOutline$1be95c50(Landroid/graphics/Canvas;II)V

    .line 297
    :cond_1
    return-void
.end method

.method public onItemClick(Landroid/view/View;IZ)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "isLongClick"    # Z

    .prologue
    .line 393
    invoke-virtual {p0, p2}, Lcom/nuance/swype/input/emoji/EmojiPageView;->setSelectedSkinTone(I)V

    .line 394
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 372
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 377
    invoke-virtual {p0}, Lcom/nuance/swype/input/emoji/EmojiPageView;->getSuggestedMinimumWidth()I

    move-result v1

    .line 378
    .local v1, "minWidth":I
    invoke-virtual {p0}, Lcom/nuance/swype/input/emoji/EmojiPageView;->getSuggestedMinimumHeight()I

    move-result v0

    .line 380
    .local v0, "minHeight":I
    invoke-static {v1, p1}, Lcom/nuance/swype/util/ViewUtil;->getDefaultSizePreferMin(II)I

    move-result v2

    .line 381
    invoke-static {v0, p2}, Lcom/nuance/swype/util/ViewUtil;->getDefaultSizePreferMin(II)I

    move-result v3

    .line 380
    invoke-virtual {p0, v2, v3}, Lcom/nuance/swype/input/emoji/EmojiPageView;->setMeasuredDimension(II)V

    .line 382
    return-void
.end method

.method public onPageScrollStateChanged(Z)V
    .locals 4
    .param p1, "isStart"    # Z

    .prologue
    .line 112
    sget-object v0, Lcom/nuance/swype/input/emoji/EmojiPageView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "onPageScrollStateChanged(): is start: "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 113
    if-eqz p1, :cond_0

    .line 114
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiPageView;->popupManager:Lcom/nuance/swype/input/emoji/util/PopupManager;

    invoke-virtual {v0}, Lcom/nuance/swype/input/emoji/util/PopupManager;->hideAll()V

    .line 116
    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "pos"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 120
    return-void
.end method

.method public setCurrentSkinTone(Lcom/nuance/swype/input/emoji/EmojiGridCell;)V
    .locals 2
    .param p1, "cell"    # Lcom/nuance/swype/input/emoji/EmojiGridCell;

    .prologue
    .line 208
    iget-object v1, p0, Lcom/nuance/swype/input/emoji/EmojiPageView;->popupEmojiSkinList:Lcom/nuance/swype/input/emoji/PopupEmojiSkinList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/input/emoji/EmojiPageView;->popupEmojiSkinList:Lcom/nuance/swype/input/emoji/PopupEmojiSkinList;

    invoke-virtual {v1}, Lcom/nuance/swype/input/emoji/PopupEmojiSkinList;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 209
    iget-object v1, p0, Lcom/nuance/swype/input/emoji/EmojiPageView;->popupEmojiSkinList:Lcom/nuance/swype/input/emoji/PopupEmojiSkinList;

    invoke-virtual {v1}, Lcom/nuance/swype/input/emoji/PopupEmojiSkinList;->getDefaultSkinTonePopupView()V

    .line 215
    :goto_0
    return-void

    .line 211
    :cond_0
    invoke-virtual {p1}, Lcom/nuance/swype/input/emoji/EmojiGridCell;->getEmoji()Lcom/nuance/swype/input/emoji/Emoji;

    move-result-object v0

    .line 212
    .local v0, "emoji":Lcom/nuance/swype/input/emoji/Emoji;
    invoke-virtual {p0}, Lcom/nuance/swype/input/emoji/EmojiPageView;->dismissEmojiPopup()V

    .line 213
    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/emoji/EmojiPageView;->setDefaultEmoji(Lcom/nuance/swype/input/emoji/Emoji;)V

    goto :goto_0
.end method

.method public setDefaultEmoji(Lcom/nuance/swype/input/emoji/Emoji;)V
    .locals 1
    .param p1, "emoji"    # Lcom/nuance/swype/input/emoji/Emoji;

    .prologue
    .line 225
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiPageView;->listener:Lcom/nuance/swype/input/emoji/EmojiPageView$Listener;

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiPageView;->listener:Lcom/nuance/swype/input/emoji/EmojiPageView$Listener;

    invoke-interface {v0, p1}, Lcom/nuance/swype/input/emoji/EmojiPageView$Listener;->onSelect(Lcom/nuance/swype/input/emoji/Emoji;)V

    .line 227
    invoke-virtual {p0}, Lcom/nuance/swype/input/emoji/EmojiPageView;->invalidate()V

    .line 229
    :cond_0
    return-void
.end method

.method public setEmojiPressed(Z)V
    .locals 0
    .param p1, "emojiPressed"    # Z

    .prologue
    .line 441
    iput-boolean p1, p0, Lcom/nuance/swype/input/emoji/EmojiPageView;->isEmojiPressed:Z

    .line 442
    return-void
.end method

.method public setItems(Ljava/util/List;Lcom/nuance/swype/input/emoji/EmojiCategory;I)V
    .locals 7
    .param p2, "cat"    # Lcom/nuance/swype/input/emoji/EmojiCategory;
    .param p3, "pageNumber"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swype/input/emoji/Emoji;",
            ">;",
            "Lcom/nuance/swype/input/emoji/EmojiCategory;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 241
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/emoji/Emoji;>;"
    iget-object v2, p0, Lcom/nuance/swype/input/emoji/EmojiPageView;->params:Lcom/nuance/swype/input/emoji/EmojiGridParams;

    iget v2, v2, Lcom/nuance/swype/input/emoji/EmojiGridParams;->cellCount:I

    mul-int v1, p3, v2

    .line 242
    .local v1, "firstIndex":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-le v1, v2, :cond_0

    .line 243
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Bad page number: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 245
    :cond_0
    iget-object v2, p0, Lcom/nuance/swype/input/emoji/EmojiPageView;->params:Lcom/nuance/swype/input/emoji/EmojiGridParams;

    iget v2, v2, Lcom/nuance/swype/input/emoji/EmojiGridParams;->cellCount:I

    add-int/2addr v2, v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 246
    .local v0, "endIndex":I
    invoke-interface {p1, v1, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/swype/input/emoji/EmojiPageView;->emojis:Ljava/util/List;

    .line 248
    iget-object v2, p0, Lcom/nuance/swype/input/emoji/EmojiPageView;->params:Lcom/nuance/swype/input/emoji/EmojiGridParams;

    invoke-virtual {p0}, Lcom/nuance/swype/input/emoji/EmojiPageView;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/nuance/swype/input/emoji/EmojiPageView;->emojis:Ljava/util/List;

    invoke-virtual {v2, v3, p0, p2, v4}, Lcom/nuance/swype/input/emoji/EmojiGridParams;->createCells(Landroid/content/Context;Lcom/nuance/swype/input/emoji/EmojiPageView;Lcom/nuance/swype/input/emoji/EmojiCategory;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/swype/input/emoji/EmojiPageView;->cells:Ljava/util/List;

    .line 249
    sget-object v2, Lcom/nuance/swype/input/emoji/EmojiPageView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "EmojiPageView()"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string/jumbo v5, " setItems : called :: emojis.size() "

    aput-object v5, v3, v4

    const/4 v4, 0x2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/nuance/swype/input/emoji/EmojiPageView;->emojis:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " , cells count:: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/nuance/swype/input/emoji/EmojiPageView;->cells:Ljava/util/List;

    .line 250
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " , pageNumber : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 249
    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 251
    invoke-virtual {p0}, Lcom/nuance/swype/input/emoji/EmojiPageView;->invalidate()V

    .line 253
    return-void
.end method

.method public setListener(Lcom/nuance/swype/input/emoji/EmojiPageView$Listener;)V
    .locals 0
    .param p1, "listener"    # Lcom/nuance/swype/input/emoji/EmojiPageView$Listener;

    .prologue
    .line 279
    iput-object p1, p0, Lcom/nuance/swype/input/emoji/EmojiPageView;->listener:Lcom/nuance/swype/input/emoji/EmojiPageView$Listener;

    .line 280
    return-void
.end method

.method public setSelectedSkinTone(I)V
    .locals 7
    .param p1, "position"    # I

    .prologue
    .line 396
    invoke-virtual {p0}, Lcom/nuance/swype/input/emoji/EmojiPageView;->dismissEmojiPopup()V

    .line 397
    iget-object v3, p0, Lcom/nuance/swype/input/emoji/EmojiPageView;->skinToneList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/emoji/Emoji;

    .line 398
    .local v0, "emoji":Lcom/nuance/swype/input/emoji/Emoji;
    if-eqz v0, :cond_0

    .line 399
    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/emoji/EmojiPageView;->setDefaultEmoji(Lcom/nuance/swype/input/emoji/Emoji;)V

    .line 400
    iget-object v3, p0, Lcom/nuance/swype/input/emoji/EmojiPageView;->cat:Lcom/nuance/swype/input/emoji/EmojiCategory;

    invoke-virtual {v3}, Lcom/nuance/swype/input/emoji/EmojiCategory;->isRecentCategory()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 413
    :cond_0
    :goto_0
    return-void

    .line 403
    :cond_1
    invoke-virtual {v0}, Lcom/nuance/swype/input/emoji/Emoji;->getEmojiCode()Ljava/lang/String;

    move-result-object v1

    .line 404
    .local v1, "emojiCode":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/nuance/swype/input/emoji/Emoji;->getEmojiSkinType()Lcom/nuance/swype/input/emoji/Emoji$SkinToneEnum;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 405
    invoke-virtual {v0}, Lcom/nuance/swype/input/emoji/Emoji;->getEmojiSkinType()Lcom/nuance/swype/input/emoji/Emoji$SkinToneEnum;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/emoji/Emoji$SkinToneEnum;->getSkinValue()I

    move-result v2

    .line 406
    .local v2, "skinToneValue":I
    iget-object v3, p0, Lcom/nuance/swype/input/emoji/EmojiPageView;->emojiCacheManager:Lcom/nuance/swype/input/emoji/EmojiCacheManager;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lcom/nuance/swype/input/emoji/EmojiCacheManager;->addObjectToCache(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 407
    iget-object v3, p0, Lcom/nuance/swype/input/emoji/EmojiPageView;->userPrefs:Lcom/nuance/swype/input/UserPreferences;

    invoke-virtual {v3, v1, v2}, Lcom/nuance/swype/input/UserPreferences;->setCachedEmojiSkinTone(Ljava/lang/String;I)V

    .line 410
    .end local v2    # "skinToneValue":I
    :cond_2
    iget-object v3, p0, Lcom/nuance/swype/input/emoji/EmojiPageView;->params:Lcom/nuance/swype/input/emoji/EmojiGridParams;

    invoke-virtual {p0}, Lcom/nuance/swype/input/emoji/EmojiPageView;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/nuance/swype/input/emoji/EmojiPageView;->cat:Lcom/nuance/swype/input/emoji/EmojiCategory;

    iget-object v6, p0, Lcom/nuance/swype/input/emoji/EmojiPageView;->emojis:Ljava/util/List;

    invoke-virtual {v3, v4, p0, v5, v6}, Lcom/nuance/swype/input/emoji/EmojiGridParams;->createCells(Landroid/content/Context;Lcom/nuance/swype/input/emoji/EmojiPageView;Lcom/nuance/swype/input/emoji/EmojiCategory;Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/nuance/swype/input/emoji/EmojiPageView;->cells:Ljava/util/List;

    .line 411
    invoke-virtual {p0}, Lcom/nuance/swype/input/emoji/EmojiPageView;->postInvalidate()V

    goto :goto_0
.end method

.method public setTouchable(Z)V
    .locals 1
    .param p1, "enableTouch"    # Z

    .prologue
    .line 233
    if-nez p1, :cond_0

    .line 234
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiPageView;->fingerStateManager:Lcom/nuance/swype/input/emoji/finger/FingerStateManager;

    invoke-virtual {v0}, Lcom/nuance/swype/input/emoji/finger/FingerStateManager;->cancelAll()V

    .line 236
    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiPageView;->fingerStateManager:Lcom/nuance/swype/input/emoji/finger/FingerStateManager;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/emoji/EmojiPageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 237
    return-void

    .line 236
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showSkinTonePopup(Lcom/nuance/swype/input/emoji/EmojiGridCell;)V
    .locals 4
    .param p1, "cell"    # Lcom/nuance/swype/input/emoji/EmojiGridCell;

    .prologue
    .line 153
    sget-object v0, Lcom/nuance/swype/input/emoji/EmojiPageView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "showEmojiPopupWindow(): called  >>>>>>>>>>"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 154
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiPageView;->popupEmojiSkinList:Lcom/nuance/swype/input/emoji/PopupEmojiSkinList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiPageView;->popupEmojiSkinList:Lcom/nuance/swype/input/emoji/PopupEmojiSkinList;

    invoke-virtual {v0}, Lcom/nuance/swype/input/emoji/PopupEmojiSkinList;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    :goto_0
    return-void

    .line 157
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/emoji/EmojiPageView;->dismissEmojiPopup()V

    .line 158
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/emoji/EmojiPageView;->setSkinToneAdapter(Lcom/nuance/swype/input/emoji/EmojiGridCell;)V

    goto :goto_0
.end method

.method protected touchMoveHandle(Lcom/nuance/swype/input/emoji/finger/Fingerable;Lcom/nuance/swype/input/emoji/finger/FingerInfo;)Z
    .locals 6
    .param p1, "object"    # Lcom/nuance/swype/input/emoji/finger/Fingerable;
    .param p2, "pt"    # Lcom/nuance/swype/input/emoji/finger/FingerInfo;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 162
    sget-object v2, Lcom/nuance/swype/input/emoji/EmojiPageView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "touchMoveHandleBySlideSelectPopup()"

    aput-object v4, v3, v1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "called >>>>>: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 163
    iget-object v2, p0, Lcom/nuance/swype/input/emoji/EmojiPageView;->popupEmojiSkinList:Lcom/nuance/swype/input/emoji/PopupEmojiSkinList;

    if-eqz v2, :cond_0

    .line 164
    iget-object v1, p0, Lcom/nuance/swype/input/emoji/EmojiPageView;->popupEmojiSkinList:Lcom/nuance/swype/input/emoji/PopupEmojiSkinList;

    invoke-interface {p2}, Lcom/nuance/swype/input/emoji/finger/FingerInfo;->getPosX()F

    move-result v2

    float-to-int v2, v2

    invoke-interface {p2}, Lcom/nuance/swype/input/emoji/finger/FingerInfo;->getPosY()F

    move-result v3

    float-to-int v3, v3

    invoke-interface {p2}, Lcom/nuance/swype/input/emoji/finger/FingerInfo;->getOffsetX()F

    move-result v4

    float-to-int v4, v4

    invoke-interface {p2}, Lcom/nuance/swype/input/emoji/finger/FingerInfo;->getOffsetY()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/nuance/swype/input/emoji/PopupEmojiSkinList;->touchMoveHandleBySkinPopup(IIII)V

    .line 167
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method
