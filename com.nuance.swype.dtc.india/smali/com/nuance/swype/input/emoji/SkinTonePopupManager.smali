.class public Lcom/nuance/swype/input/emoji/SkinTonePopupManager;
.super Ljava/lang/Object;
.source "SkinTonePopupManager.java"


# static fields
.field private static final FINGER_MOVEMENT_VELOCITY:I = 0x1e

.field protected static final log:Lcom/nuance/swype/util/LogManager$Log;


# instance fields
.field private context:Landroid/content/Context;

.field private defaultSkinTone:Landroid/view/View;

.field private outLocation:[I

.field private parentView:Landroid/view/View;

.field private popupContainerView:Landroid/view/View;

.field private popupPos:Landroid/graphics/Point;

.field private popupRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private skinTonePosition:I

.field private triggerEmoji:Lcom/nuance/swype/input/emoji/EmojiInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-string/jumbo v0, "SkinTonePopupManager"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/emoji/SkinTonePopupManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Landroid/content/Context;)V
    .locals 1
    .param p1, "parentView"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/emoji/SkinTonePopupManager;->popupPos:Landroid/graphics/Point;

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swype/input/emoji/SkinTonePopupManager;->defaultSkinTone:Landroid/view/View;

    .line 30
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/nuance/swype/input/emoji/SkinTonePopupManager;->outLocation:[I

    .line 36
    iput-object p1, p0, Lcom/nuance/swype/input/emoji/SkinTonePopupManager;->parentView:Landroid/view/View;

    .line 37
    iput-object p2, p0, Lcom/nuance/swype/input/emoji/SkinTonePopupManager;->context:Landroid/content/Context;

    .line 38
    return-void
.end method

.method public static calcGravity(Landroid/view/View;Lcom/nuance/swype/input/emoji/EmojiInfo;)I
    .locals 8
    .param p0, "parentView"    # Landroid/view/View;
    .param p1, "popupEmoji"    # Lcom/nuance/swype/input/emoji/EmojiInfo;

    .prologue
    .line 42
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/lit8 v2, v3, 0x2

    .line 43
    .local v2, "xMiddle":I
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p1}, Lcom/nuance/swype/input/emoji/EmojiInfo;->getLeft()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p1}, Lcom/nuance/swype/input/emoji/EmojiInfo;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int v1, v3, v4

    .line 44
    .local v1, "xKey":I
    if-le v1, v2, :cond_0

    const v3, 0x800005

    .line 47
    :goto_0
    or-int/lit8 v0, v3, 0x50

    .line 48
    .local v0, "gravity":I
    sget-object v3, Lcom/nuance/swype/input/emoji/SkinTonePopupManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "calcGravity()"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, ": called  >>>>>>>>>> xMiddle:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " , gravity: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " , xKey:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-interface {v3, v4}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 49
    return v0

    .line 44
    .end local v0    # "gravity":I
    :cond_0
    const v3, 0x800003

    goto :goto_0
.end method

.method private distanceToView(ILandroid/view/View;)I
    .locals 3
    .param p1, "xKeyboard"    # I
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 206
    iget-object v1, p0, Lcom/nuance/swype/input/emoji/SkinTonePopupManager;->outLocation:[I

    invoke-virtual {p2, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 207
    iget-object v1, p0, Lcom/nuance/swype/input/emoji/SkinTonePopupManager;->outLocation:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sub-int v0, p1, v1

    .line 208
    .local v0, "distance":I
    if-gez v0, :cond_0

    .line 209
    neg-int v0, v0

    .line 211
    :cond_0
    return v0
.end method

.method private getXCoordinate()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 103
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/SkinTonePopupManager;->parentView:Landroid/view/View;

    iget-object v1, p0, Lcom/nuance/swype/input/emoji/SkinTonePopupManager;->outLocation:[I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 104
    invoke-direct {p0}, Lcom/nuance/swype/input/emoji/SkinTonePopupManager;->isRightDockMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/SkinTonePopupManager;->outLocation:[I

    aget v0, v0, v2

    iget-object v1, p0, Lcom/nuance/swype/input/emoji/SkinTonePopupManager;->parentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/nuance/swype/input/emoji/SkinTonePopupManager;->triggerEmoji:Lcom/nuance/swype/input/emoji/EmojiInfo;

    invoke-virtual {v1}, Lcom/nuance/swype/input/emoji/EmojiInfo;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/nuance/swype/input/emoji/SkinTonePopupManager;->triggerEmoji:Lcom/nuance/swype/input/emoji/EmojiInfo;

    invoke-virtual {v1}, Lcom/nuance/swype/input/emoji/EmojiInfo;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 107
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/SkinTonePopupManager;->outLocation:[I

    aget v0, v0, v2

    iget-object v1, p0, Lcom/nuance/swype/input/emoji/SkinTonePopupManager;->parentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method private isLandscapeRightDockMode()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 223
    iget-object v3, p0, Lcom/nuance/swype/input/emoji/SkinTonePopupManager;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 224
    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    move v0, v1

    .line 226
    .local v0, "landscape":Z
    :goto_0
    invoke-direct {p0}, Lcom/nuance/swype/input/emoji/SkinTonePopupManager;->isRightDockMode()Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    .line 229
    :goto_1
    return v1

    .end local v0    # "landscape":Z
    :cond_0
    move v0, v2

    .line 224
    goto :goto_0

    .restart local v0    # "landscape":Z
    :cond_1
    move v1, v2

    .line 229
    goto :goto_1
.end method

.method private isNotBoundWithKBLayout(I)Z
    .locals 2
    .param p1, "xPopup"    # I

    .prologue
    .line 95
    iget-object v1, p0, Lcom/nuance/swype/input/emoji/SkinTonePopupManager;->popupContainerView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int v0, p1, v1

    .line 96
    .local v0, "tWidth":I
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/input/emoji/SkinTonePopupManager;->parentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 97
    :cond_0
    const/4 v1, 0x1

    .line 99
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isRightDockMode()Z
    .locals 2

    .prologue
    .line 215
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/SkinTonePopupManager;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/UserPreferences;->getKeyboardDockingMode()Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    move-result-object v0

    .line 217
    sget-object v1, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->DOCK_RIGHT:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    if-ne v0, v1, :cond_0

    .line 218
    const/4 v0, 0x1

    .line 220
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected calcPopupKeyboardPos()Landroid/graphics/Point;
    .locals 10

    .prologue
    .line 63
    iget-object v5, p0, Lcom/nuance/swype/input/emoji/SkinTonePopupManager;->parentView:Landroid/view/View;

    iget-object v6, p0, Lcom/nuance/swype/input/emoji/SkinTonePopupManager;->triggerEmoji:Lcom/nuance/swype/input/emoji/EmojiInfo;

    invoke-static {v5, v6}, Lcom/nuance/swype/input/emoji/SkinTonePopupManager;->calcGravity(Landroid/view/View;Lcom/nuance/swype/input/emoji/EmojiInfo;)I

    move-result v5

    .line 64
    and-int/lit8 v0, v5, 0x7

    .line 66
    .local v0, "hGrav":I
    iget-object v5, p0, Lcom/nuance/swype/input/emoji/SkinTonePopupManager;->triggerEmoji:Lcom/nuance/swype/input/emoji/EmojiInfo;

    invoke-virtual {v5}, Lcom/nuance/swype/input/emoji/EmojiInfo;->getLeft()I

    move-result v1

    .line 67
    .local v1, "xKey":I
    iget-object v5, p0, Lcom/nuance/swype/input/emoji/SkinTonePopupManager;->triggerEmoji:Lcom/nuance/swype/input/emoji/EmojiInfo;

    invoke-virtual {v5}, Lcom/nuance/swype/input/emoji/EmojiInfo;->getTop()I

    move-result v5

    iget-object v6, p0, Lcom/nuance/swype/input/emoji/SkinTonePopupManager;->parentView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    add-int v3, v5, v6

    .line 68
    .local v3, "yKey":I
    sget-object v5, Lcom/nuance/swype/input/emoji/SkinTonePopupManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "calcPopupKeyboardPos()"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, ": called  >>>>>> xKey:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " ,yKey:: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-interface {v5, v6}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 71
    const v5, 0x800005

    if-eq v5, v0, :cond_0

    const/4 v5, 0x5

    if-ne v5, v0, :cond_2

    .line 73
    :cond_0
    iget-object v5, p0, Lcom/nuance/swype/input/emoji/SkinTonePopupManager;->triggerEmoji:Lcom/nuance/swype/input/emoji/EmojiInfo;

    invoke-virtual {v5}, Lcom/nuance/swype/input/emoji/EmojiInfo;->getWidth()I

    move-result v5

    add-int/2addr v5, v1

    iget-object v6, p0, Lcom/nuance/swype/input/emoji/SkinTonePopupManager;->popupContainerView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/nuance/swype/input/emoji/SkinTonePopupManager;->popupContainerView:Landroid/view/View;

    .line 74
    invoke-virtual {v6}, Landroid/view/View;->getPaddingRight()I

    move-result v6

    add-int v2, v5, v6

    .line 83
    .local v2, "xPopup":I
    :goto_0
    invoke-direct {p0, v2}, Lcom/nuance/swype/input/emoji/SkinTonePopupManager;->isNotBoundWithKBLayout(I)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-direct {p0}, Lcom/nuance/swype/input/emoji/SkinTonePopupManager;->isLandscapeRightDockMode()Z

    move-result v5

    if-nez v5, :cond_1

    .line 84
    invoke-direct {p0}, Lcom/nuance/swype/input/emoji/SkinTonePopupManager;->getXCoordinate()I

    move-result v2

    .line 87
    :cond_1
    iget-object v5, p0, Lcom/nuance/swype/input/emoji/SkinTonePopupManager;->popupContainerView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    sub-int v5, v3, v5

    iget-object v6, p0, Lcom/nuance/swype/input/emoji/SkinTonePopupManager;->popupContainerView:Landroid/view/View;

    .line 88
    invoke-virtual {v6}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    add-int v4, v5, v6

    .line 91
    .local v4, "yPopup":I
    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5, v2, v4}, Landroid/graphics/Point;-><init>(II)V

    return-object v5

    .line 79
    .end local v2    # "xPopup":I
    .end local v4    # "yPopup":I
    :cond_2
    iget-object v5, p0, Lcom/nuance/swype/input/emoji/SkinTonePopupManager;->popupContainerView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    sub-int v2, v1, v5

    .restart local v2    # "xPopup":I
    goto :goto_0
.end method

.method protected findNearestSkinTone(II)Landroid/view/View;
    .locals 7
    .param p1, "xKeyboard"    # I
    .param p2, "yKeyboard"    # I

    .prologue
    .line 185
    iget-object v2, p0, Lcom/nuance/swype/input/emoji/SkinTonePopupManager;->defaultSkinTone:Landroid/view/View;

    .line 186
    .local v2, "closestView":Landroid/view/View;
    const v5, 0x7fffffff

    .line 188
    .local v5, "minDistance":I
    iget-object v6, p0, Lcom/nuance/swype/input/emoji/SkinTonePopupManager;->popupRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v1

    .line 189
    .local v1, "childCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_1

    .line 190
    iget-object v6, p0, Lcom/nuance/swype/input/emoji/SkinTonePopupManager;->popupRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v6, v4}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 191
    .local v0, "child":Landroid/view/View;
    invoke-direct {p0, p1, v0}, Lcom/nuance/swype/input/emoji/SkinTonePopupManager;->distanceToView(ILandroid/view/View;)I

    move-result v3

    .line 192
    .local v3, "distance":I
    if-ge v3, v5, :cond_0

    .line 193
    move-object v2, v0

    .line 194
    move v5, v3

    .line 195
    invoke-virtual {p0, v4}, Lcom/nuance/swype/input/emoji/SkinTonePopupManager;->setSkinTonePosition(I)V

    .line 197
    :cond_0
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/view/View;->setPressed(Z)V

    .line 189
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 200
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "distance":I
    :cond_1
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Landroid/view/View;->setPressed(Z)V

    .line 201
    return-object v2
.end method

.method public getDefaultSkinTone()Landroid/view/View;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/SkinTonePopupManager;->defaultSkinTone:Landroid/view/View;

    return-object v0
.end method

.method public getSkinTonePosition()I
    .locals 1

    .prologue
    .line 180
    iget v0, p0, Lcom/nuance/swype/input/emoji/SkinTonePopupManager;->skinTonePosition:I

    return v0
.end method

.method public onMove(III)V
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "xOffset"    # I

    .prologue
    .line 153
    if-gez p3, :cond_0

    .line 154
    neg-int p3, p3

    .line 157
    :cond_0
    const/16 v2, 0x1e

    if-ge p3, v2, :cond_1

    .line 170
    :goto_0
    return-void

    .line 161
    :cond_1
    iget-object v2, p0, Lcom/nuance/swype/input/emoji/SkinTonePopupManager;->popupPos:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    sub-int v0, p1, v2

    .line 162
    .local v0, "xPopup":I
    iget-object v2, p0, Lcom/nuance/swype/input/emoji/SkinTonePopupManager;->popupPos:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    sub-int v1, p2, v2

    .line 164
    .local v1, "yPopup":I
    iget-object v2, p0, Lcom/nuance/swype/input/emoji/SkinTonePopupManager;->popupRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/nuance/swype/input/emoji/SkinTonePopupManager;->popupRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 165
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v2

    if-nez v2, :cond_2

    .line 166
    sget-object v2, Lcom/nuance/swype/input/emoji/SkinTonePopupManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "onMove: Popup keyboard not yet drawn. Ignoring move event."

    aput-object v5, v3, v4

    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    goto :goto_0

    .line 169
    :cond_2
    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/input/emoji/SkinTonePopupManager;->findNearestSkinTone(II)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/swype/input/emoji/SkinTonePopupManager;->defaultSkinTone:Landroid/view/View;

    goto :goto_0
.end method

.method public onMove(IIII)V
    .locals 8
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "xOffset"    # I
    .param p4, "yOffset"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 130
    sget-object v2, Lcom/nuance/swype/input/emoji/SkinTonePopupManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "onMove()"

    aput-object v4, v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "called >>>>>: x :: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " , y:: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " , xOffset"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " , yOffset::"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 132
    if-gez p3, :cond_0

    .line 133
    neg-int p3, p3

    .line 136
    :cond_0
    const/16 v2, 0x1e

    if-ge p3, v2, :cond_1

    .line 149
    :goto_0
    return-void

    .line 140
    :cond_1
    iget-object v2, p0, Lcom/nuance/swype/input/emoji/SkinTonePopupManager;->popupPos:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    sub-int v0, p1, v2

    .line 141
    .local v0, "xPopup":I
    iget-object v2, p0, Lcom/nuance/swype/input/emoji/SkinTonePopupManager;->popupPos:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    sub-int v1, p2, v2

    .line 143
    .local v1, "yPopup":I
    iget-object v2, p0, Lcom/nuance/swype/input/emoji/SkinTonePopupManager;->popupRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/nuance/swype/input/emoji/SkinTonePopupManager;->popupRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 144
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v2

    if-nez v2, :cond_2

    .line 145
    sget-object v2, Lcom/nuance/swype/input/emoji/SkinTonePopupManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v3, v7, [Ljava/lang/Object;

    const-string/jumbo v4, "onMove: Popup keyboard not yet drawn. Ignoring move event."

    aput-object v4, v3, v6

    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    goto :goto_0

    .line 148
    :cond_2
    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/input/emoji/SkinTonePopupManager;->findNearestSkinTone(II)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/swype/input/emoji/SkinTonePopupManager;->defaultSkinTone:Landroid/view/View;

    goto :goto_0
.end method

.method public preparePopup(Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Lcom/nuance/swype/input/emoji/EmojiInfo;)Landroid/graphics/Point;
    .locals 1
    .param p1, "popupContainerView"    # Landroid/view/View;
    .param p2, "popupRecyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p3, "triggerEmoji"    # Lcom/nuance/swype/input/emoji/EmojiInfo;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/nuance/swype/input/emoji/SkinTonePopupManager;->popupContainerView:Landroid/view/View;

    .line 55
    iput-object p2, p0, Lcom/nuance/swype/input/emoji/SkinTonePopupManager;->popupRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 56
    iput-object p3, p0, Lcom/nuance/swype/input/emoji/SkinTonePopupManager;->triggerEmoji:Lcom/nuance/swype/input/emoji/EmojiInfo;

    .line 57
    invoke-virtual {p0}, Lcom/nuance/swype/input/emoji/SkinTonePopupManager;->calcPopupKeyboardPos()Landroid/graphics/Point;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/emoji/SkinTonePopupManager;->popupPos:Landroid/graphics/Point;

    .line 58
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/SkinTonePopupManager;->popupPos:Landroid/graphics/Point;

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/emoji/SkinTonePopupManager;->toWindowPos(Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method public setSkinTonePosition(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 176
    iput p1, p0, Lcom/nuance/swype/input/emoji/SkinTonePopupManager;->skinTonePosition:I

    .line 177
    return-void
.end method

.method protected toWindowPos(Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 6
    .param p1, "pt"    # Landroid/graphics/Point;

    .prologue
    const/4 v5, 0x0

    .line 117
    const/4 v3, 0x2

    new-array v0, v3, [I

    .line 118
    .local v0, "winOffset":[I
    iget-object v3, p0, Lcom/nuance/swype/input/emoji/SkinTonePopupManager;->parentView:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 119
    iget v3, p1, Landroid/graphics/Point;->x:I

    aget v4, v0, v5

    add-int v1, v3, v4

    .line 120
    .local v1, "x":I
    iget v3, p1, Landroid/graphics/Point;->y:I

    const/4 v4, 0x1

    aget v4, v0, v4

    add-int v2, v3, v4

    .line 122
    .local v2, "y":I
    invoke-direct {p0, v1}, Lcom/nuance/swype/input/emoji/SkinTonePopupManager;->isNotBoundWithKBLayout(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lcom/nuance/swype/input/emoji/SkinTonePopupManager;->isLandscapeRightDockMode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 123
    aget v3, v0, v5

    iget-object v4, p0, Lcom/nuance/swype/input/emoji/SkinTonePopupManager;->triggerEmoji:Lcom/nuance/swype/input/emoji/EmojiInfo;

    invoke-virtual {v4}, Lcom/nuance/swype/input/emoji/EmojiInfo;->getWidth()I

    move-result v4

    add-int v1, v3, v4

    .line 126
    :cond_0
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    return-object v3
.end method
