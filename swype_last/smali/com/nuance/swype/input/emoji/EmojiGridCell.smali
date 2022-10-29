.class public Lcom/nuance/swype/input/emoji/EmojiGridCell;
.super Ljava/lang/Object;
.source "EmojiGridCell.java"

# interfaces
.implements Lcom/nuance/swype/input/emoji/finger/FingerStateListener;
.implements Lcom/nuance/swype/input/emoji/finger/Fingerable;
.implements Lcom/nuance/swype/input/emoji/util/PressStateAnimator$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/input/emoji/EmojiGridCell$EmojiPopupView;,
        Lcom/nuance/swype/input/emoji/EmojiGridCell$TextBitmap;
    }
.end annotation


# static fields
.field private static final boundsCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private static final enablePreScale:Z = true

.field protected static final log:Lcom/nuance/swype/util/LogManager$Log;

.field private static final trace:Lcom/nuance/swype/util/LogManager$Trace;


# instance fields
.field private final animationState:Lcom/nuance/swype/input/emoji/util/AnimationState;

.field private bounds:Landroid/graphics/Rect;

.field private final cellIndex:I

.field emoji:Lcom/nuance/swype/input/emoji/Emoji;

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

.field private enablePopupView:Z

.field private final parent:Lcom/nuance/swype/input/emoji/EmojiPageView;

.field private popupView:Lcom/nuance/swype/input/emoji/EmojiGridCell$EmojiPopupView;

.field private preScalePopupView:Z

.field private pressAnimator:Lcom/nuance/swype/input/emoji/util/PressStateAnimator;

.field private pressState:Lcom/nuance/swype/input/emoji/finger/FingerInfo$PressState;

.field private text:Ljava/lang/String;

.field private final xCell:I

.field private xOriginOffset:I

.field private final xPos:I

.field private final yCell:I

.field private final yPos:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 52
    const-string/jumbo v0, "EmojiGridCell"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/emoji/EmojiGridCell;->log:Lcom/nuance/swype/util/LogManager$Log;

    .line 54
    invoke-static {}, Lcom/nuance/swype/util/LogManager;->getTrace()Lcom/nuance/swype/util/LogManager$Trace;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/emoji/EmojiGridCell;->trace:Lcom/nuance/swype/util/LogManager$Trace;

    .line 1021
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 221
    sput-object v0, Lcom/nuance/swype/input/emoji/EmojiGridCell;->boundsCache:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/nuance/swype/input/emoji/EmojiPageView;Lcom/nuance/swype/input/emoji/EmojiCategory;Lcom/nuance/swype/input/emoji/Emoji;III)V
    .registers 20
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Lcom/nuance/swype/input/emoji/EmojiPageView;
    .param p3, "cat"    # Lcom/nuance/swype/input/emoji/EmojiCategory;
    .param p4, "emoji"    # Lcom/nuance/swype/input/emoji/Emoji;
    .param p5, "cellIndex"    # I
    .param p6, "xCell"    # I
    .param p7, "yCell"    # I

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0xb

    if-lt v9, v10, :cond_bd

    const/4 v9, 0x1

    :goto_a
    iput-boolean v9, p0, Lcom/nuance/swype/input/emoji/EmojiGridCell;->enablePopupView:Z

    .line 92
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/nuance/swype/input/emoji/EmojiGridCell;->preScalePopupView:Z

    .line 716
    sget-object v9, Lcom/nuance/swype/input/emoji/finger/FingerInfo$PressState;->UNPRESSED:Lcom/nuance/swype/input/emoji/finger/FingerInfo$PressState;

    iput-object v9, p0, Lcom/nuance/swype/input/emoji/EmojiGridCell;->pressState:Lcom/nuance/swype/input/emoji/finger/FingerInfo$PressState;

    .line 112
    invoke-virtual {p2}, Lcom/nuance/swype/input/emoji/EmojiPageView;->getParams()Lcom/nuance/swype/input/emoji/EmojiGridParams;

    move-result-object v6

    .line 113
    .local v6, "grid":Lcom/nuance/swype/input/emoji/EmojiGridParams;
    iget-object v9, v6, Lcom/nuance/swype/input/emoji/EmojiGridParams;->widthData:Lcom/nuance/swype/input/emoji/EmojiGridParams$DimensionData;

    iget v8, v9, Lcom/nuance/swype/input/emoji/EmojiGridParams$DimensionData;->cellSize:I

    .line 114
    .local v8, "width":I
    iget-object v9, v6, Lcom/nuance/swype/input/emoji/EmojiGridParams;->heightData:Lcom/nuance/swype/input/emoji/EmojiGridParams$DimensionData;

    iget v7, v9, Lcom/nuance/swype/input/emoji/EmojiGridParams$DimensionData;->cellSize:I

    .line 116
    .local v7, "height":I
    iput-object p2, p0, Lcom/nuance/swype/input/emoji/EmojiGridCell;->parent:Lcom/nuance/swype/input/emoji/EmojiPageView;

    .line 117
    move/from16 v0, p5

    iput v0, p0, Lcom/nuance/swype/input/emoji/EmojiGridCell;->cellIndex:I

    .line 118
    move/from16 v0, p6

    iput v0, p0, Lcom/nuance/swype/input/emoji/EmojiGridCell;->xCell:I

    .line 119
    move/from16 v0, p7

    iput v0, p0, Lcom/nuance/swype/input/emoji/EmojiGridCell;->yCell:I

    .line 121
    iget-object v9, v6, Lcom/nuance/swype/input/emoji/EmojiGridParams;->widthData:Lcom/nuance/swype/input/emoji/EmojiGridParams$DimensionData;

    iget v9, v9, Lcom/nuance/swype/input/emoji/EmojiGridParams$DimensionData;->margin:I

    add-int v2, v9, v8

    .line 122
    .local v2, "advanceWidth":I
    mul-int v9, p6, v2

    iget-object v10, v6, Lcom/nuance/swype/input/emoji/EmojiGridParams;->widthData:Lcom/nuance/swype/input/emoji/EmojiGridParams$DimensionData;

    iget v10, v10, Lcom/nuance/swype/input/emoji/EmojiGridParams$DimensionData;->margin:I

    add-int/2addr v9, v10

    iput v9, p0, Lcom/nuance/swype/input/emoji/EmojiGridCell;->xPos:I

    .line 123
    iget-object v9, v6, Lcom/nuance/swype/input/emoji/EmojiGridParams;->heightData:Lcom/nuance/swype/input/emoji/EmojiGridParams$DimensionData;

    iget v9, v9, Lcom/nuance/swype/input/emoji/EmojiGridParams$DimensionData;->margin:I

    add-int v1, v9, v7

    .line 124
    .local v1, "advanceHeight":I
    mul-int v9, p7, v1

    iget-object v10, v6, Lcom/nuance/swype/input/emoji/EmojiGridParams;->heightData:Lcom/nuance/swype/input/emoji/EmojiGridParams$DimensionData;

    iget v10, v10, Lcom/nuance/swype/input/emoji/EmojiGridParams$DimensionData;->margin:I

    add-int/2addr v9, v10

    iput v9, p0, Lcom/nuance/swype/input/emoji/EmojiGridCell;->yPos:I

    .line 126
    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiGridCell;->emoji:Lcom/nuance/swype/input/emoji/Emoji;

    .line 127
    invoke-virtual/range {p4 .. p4}, Lcom/nuance/swype/input/emoji/Emoji;->getEmojiDisplayCode()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/nuance/swype/input/emoji/EmojiGridCell;->text:Ljava/lang/String;

    .line 128
    invoke-static {p1}, Lcom/nuance/swype/input/emoji/EmojiCacheManager;->from(Landroid/content/Context;)Lcom/nuance/swype/input/emoji/EmojiCacheManager;

    move-result-object v9

    iput-object v9, p0, Lcom/nuance/swype/input/emoji/EmojiGridCell;->emojiCacheManager:Lcom/nuance/swype/input/emoji/EmojiCacheManager;

    .line 130
    invoke-virtual/range {p4 .. p4}, Lcom/nuance/swype/input/emoji/Emoji;->isSkinToneSupport()Z

    move-result v9

    if-eqz v9, :cond_71

    invoke-virtual {p3}, Lcom/nuance/swype/input/emoji/EmojiCategory;->isRecentCategory()Z

    move-result v9

    if-nez v9, :cond_71

    .line 131
    move-object/from16 v0, p4

    invoke-direct {p0, p2, v0}, Lcom/nuance/swype/input/emoji/EmojiGridCell;->getDefaultSkinToneCode(Lcom/nuance/swype/input/emoji/EmojiPageView;Lcom/nuance/swype/input/emoji/Emoji;)Ljava/lang/String;

    move-result-object v4

    .line 132
    .local v4, "code":Ljava/lang/String;
    if-eqz v4, :cond_71

    .line 133
    iput-object v4, p0, Lcom/nuance/swype/input/emoji/EmojiGridCell;->text:Ljava/lang/String;

    .line 135
    .end local v4    # "code":Ljava/lang/String;
    :cond_71
    invoke-virtual {p2}, Lcom/nuance/swype/input/emoji/EmojiPageView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v9

    invoke-virtual {v9}, Lcom/nuance/swype/input/UserPreferences;->getShowPressDownPreview()Z

    move-result v9

    iput-boolean v9, p0, Lcom/nuance/swype/input/emoji/EmojiGridCell;->enablePopupView:Z

    .line 138
    new-instance v9, Lcom/nuance/swype/input/emoji/util/AnimationState;

    div-int/lit8 v10, v8, 0x2

    div-int/lit8 v11, v7, 0x2

    invoke-direct {v9, v10, v11}, Lcom/nuance/swype/input/emoji/util/AnimationState;-><init>(II)V

    iput-object v9, p0, Lcom/nuance/swype/input/emoji/EmojiGridCell;->animationState:Lcom/nuance/swype/input/emoji/util/AnimationState;

    .line 142
    const/4 v5, 0x0

    .line 143
    .local v5, "dy":I
    iget-boolean v9, p0, Lcom/nuance/swype/input/emoji/EmojiGridCell;->enablePopupView:Z

    if-eqz v9, :cond_95

    .line 144
    neg-int v9, v7

    int-to-float v9, v9

    const/high16 v10, 0x40000000    # 2.0f

    mul-float/2addr v9, v10

    float-to-int v5, v9

    .line 146
    :cond_95
    new-instance v3, Lcom/nuance/swype/input/emoji/util/PressStateAnimator$Builder;

    iget-object v9, p0, Lcom/nuance/swype/input/emoji/EmojiGridCell;->animationState:Lcom/nuance/swype/input/emoji/util/AnimationState;

    invoke-direct {v3, p0, v9}, Lcom/nuance/swype/input/emoji/util/PressStateAnimator$Builder;-><init>(Lcom/nuance/swype/input/emoji/util/PressStateAnimator$Listener;Lcom/nuance/swype/input/emoji/util/AnimationState;)V

    .line 147
    .local v3, "builder":Lcom/nuance/swype/input/emoji/util/PressStateAnimator$Builder;
    iget-boolean v9, p0, Lcom/nuance/swype/input/emoji/EmojiGridCell;->enablePopupView:Z

    invoke-virtual {v3, v9}, Lcom/nuance/swype/input/emoji/util/PressStateAnimator$Builder;->setEnableShortPressPopup(Z)Lcom/nuance/swype/input/emoji/util/PressStateAnimator$Builder;

    move-result-object v9

    .line 148
    invoke-virtual {v9, v8, v7}, Lcom/nuance/swype/input/emoji/util/PressStateAnimator$Builder;->setSize(II)Lcom/nuance/swype/input/emoji/util/PressStateAnimator$Builder;

    move-result-object v9

    iget v10, p0, Lcom/nuance/swype/input/emoji/EmojiGridCell;->xPos:I

    iget v11, p0, Lcom/nuance/swype/input/emoji/EmojiGridCell;->yPos:I

    .line 149
    invoke-virtual {v9, v10, v11}, Lcom/nuance/swype/input/emoji/util/PressStateAnimator$Builder;->startAt(II)Lcom/nuance/swype/input/emoji/util/PressStateAnimator$Builder;

    move-result-object v9

    const/4 v10, 0x0

    .line 150
    invoke-virtual {v9, v10, v5}, Lcom/nuance/swype/input/emoji/util/PressStateAnimator$Builder;->movePopupBy(II)Lcom/nuance/swype/input/emoji/util/PressStateAnimator$Builder;

    move-result-object v9

    .line 151
    invoke-virtual {v9}, Lcom/nuance/swype/input/emoji/util/PressStateAnimator$Builder;->create()Lcom/nuance/swype/input/emoji/util/PressStateAnimator;

    move-result-object v9

    iput-object v9, p0, Lcom/nuance/swype/input/emoji/EmojiGridCell;->pressAnimator:Lcom/nuance/swype/input/emoji/util/PressStateAnimator;

    .line 153
    invoke-direct {p0}, Lcom/nuance/swype/input/emoji/EmojiGridCell;->measureText()V

    .line 155
    return-void

    .line 87
    .end local v1    # "advanceHeight":I
    .end local v2    # "advanceWidth":I
    .end local v3    # "builder":Lcom/nuance/swype/input/emoji/util/PressStateAnimator$Builder;
    .end local v5    # "dy":I
    .end local v6    # "grid":Lcom/nuance/swype/input/emoji/EmojiGridParams;
    .end local v7    # "height":I
    .end local v8    # "width":I
    :cond_bd
    const/4 v9, 0x0

    goto/16 :goto_a
.end method

.method static synthetic access$000(Lcom/nuance/swype/input/emoji/EmojiGridCell;)Lcom/nuance/swype/input/emoji/finger/FingerInfo$PressState;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/emoji/EmojiGridCell;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiGridCell;->pressState:Lcom/nuance/swype/input/emoji/finger/FingerInfo$PressState;

    return-object v0
.end method

.method static synthetic access$100(Lcom/nuance/swype/input/emoji/EmojiGridCell;)Lcom/nuance/swype/input/emoji/EmojiPageView;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/emoji/EmojiGridCell;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiGridCell;->parent:Lcom/nuance/swype/input/emoji/EmojiPageView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/nuance/swype/input/emoji/EmojiGridCell;)I
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/emoji/EmojiGridCell;

    .prologue
    .line 50
    iget v0, p0, Lcom/nuance/swype/input/emoji/EmojiGridCell;->yPos:I

    return v0
.end method

.method static synthetic access$200(Lcom/nuance/swype/input/emoji/EmojiGridCell;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/emoji/EmojiGridCell;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiGridCell;->text:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/nuance/swype/input/emoji/EmojiGridCell;)Lcom/nuance/swype/input/emoji/util/PressStateAnimator;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/emoji/EmojiGridCell;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiGridCell;->pressAnimator:Lcom/nuance/swype/input/emoji/util/PressStateAnimator;

    return-object v0
.end method

.method static synthetic access$400(Lcom/nuance/swype/input/emoji/EmojiGridCell;)Z
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/emoji/EmojiGridCell;

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/nuance/swype/input/emoji/EmojiGridCell;->preScalePopupView:Z

    return v0
.end method

.method static synthetic access$500(Lcom/nuance/swype/input/emoji/EmojiGridCell;)Landroid/graphics/Rect;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/emoji/EmojiGridCell;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiGridCell;->bounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$600(Lcom/nuance/swype/input/emoji/EmojiGridCell;Landroid/graphics/Canvas;Lcom/nuance/swype/input/emoji/EmojiGridCell$TextBitmap;Lcom/nuance/swype/util/DrawDebug;)V
    .registers 4
    .param p0, "x0"    # Lcom/nuance/swype/input/emoji/EmojiGridCell;
    .param p1, "x1"    # Landroid/graphics/Canvas;
    .param p2, "x2"    # Lcom/nuance/swype/input/emoji/EmojiGridCell$TextBitmap;
    .param p3, "x3"    # Lcom/nuance/swype/util/DrawDebug;

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/nuance/swype/input/emoji/EmojiGridCell;->drawContent(Landroid/graphics/Canvas;Lcom/nuance/swype/input/emoji/EmojiGridCell$TextBitmap;Lcom/nuance/swype/util/DrawDebug;)V

    return-void
.end method

.method static synthetic access$700(Lcom/nuance/swype/input/emoji/EmojiGridCell;)V
    .registers 1
    .param p0, "x0"    # Lcom/nuance/swype/input/emoji/EmojiGridCell;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/nuance/swype/input/emoji/EmojiGridCell;->stopPopupMode()V

    return-void
.end method

.method static synthetic access$800(Lcom/nuance/swype/input/emoji/EmojiGridCell;)Lcom/nuance/swype/input/emoji/EmojiGridCell$EmojiPopupView;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/emoji/EmojiGridCell;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiGridCell;->popupView:Lcom/nuance/swype/input/emoji/EmojiGridCell$EmojiPopupView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/nuance/swype/input/emoji/EmojiGridCell;)I
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/emoji/EmojiGridCell;

    .prologue
    .line 50
    iget v0, p0, Lcom/nuance/swype/input/emoji/EmojiGridCell;->xPos:I

    return v0
.end method

.method private confineAnimationEndPosition()[I
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 296
    iget-object v1, p0, Lcom/nuance/swype/input/emoji/EmojiGridCell;->pressAnimator:Lcom/nuance/swype/input/emoji/util/PressStateAnimator;

    invoke-virtual {v1, v2, v2}, Lcom/nuance/swype/input/emoji/util/PressStateAnimator;->adjustEndDelta(II)V

    .line 297
    iget-object v1, p0, Lcom/nuance/swype/input/emoji/EmojiGridCell;->pressAnimator:Lcom/nuance/swype/input/emoji/util/PressStateAnimator;

    invoke-virtual {v1}, Lcom/nuance/swype/input/emoji/util/PressStateAnimator;->getEndBounds()[I

    move-result-object v0

    .line 298
    .local v0, "bounds":[I
    iget v1, p0, Lcom/nuance/swype/input/emoji/EmojiGridCell;->xPos:I

    iget v2, p0, Lcom/nuance/swype/input/emoji/EmojiGridCell;->yPos:I

    invoke-static {v0, v1, v2}, Lcom/nuance/swype/input/emoji/util/Util;->adjustRect([III)V

    .line 299
    invoke-direct {p0, v0}, Lcom/nuance/swype/input/emoji/EmojiGridCell;->confineAnimationEndPosition([I)[I

    move-result-object v1

    return-object v1
.end method

.method private confineAnimationEndPosition(Landroid/view/View;)[I
    .registers 9
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    .line 309
    iget-object v5, p0, Lcom/nuance/swype/input/emoji/EmojiGridCell;->pressAnimator:Lcom/nuance/swype/input/emoji/util/PressStateAnimator;

    invoke-virtual {v5, v6, v6}, Lcom/nuance/swype/input/emoji/util/PressStateAnimator;->adjustEndDelta(II)V

    .line 311
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    .line 312
    .local v2, "leftPad":I
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    .line 313
    .local v4, "topPad":I
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    .line 314
    .local v3, "rightPad":I
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    .line 317
    .local v0, "botPad":I
    iget-object v5, p0, Lcom/nuance/swype/input/emoji/EmojiGridCell;->pressAnimator:Lcom/nuance/swype/input/emoji/util/PressStateAnimator;

    invoke-virtual {v5, v2, v4, v3, v0}, Lcom/nuance/swype/input/emoji/util/PressStateAnimator;->getEndBounds(IIII)[I

    move-result-object v1

    .line 320
    .local v1, "bounds":[I
    iget v5, p0, Lcom/nuance/swype/input/emoji/EmojiGridCell;->xPos:I

    sub-int/2addr v5, v2

    iget v6, p0, Lcom/nuance/swype/input/emoji/EmojiGridCell;->yPos:I

    sub-int/2addr v6, v4

    invoke-static {v1, v5, v6}, Lcom/nuance/swype/input/emoji/util/Util;->adjustRect([III)V

    .line 322
    invoke-direct {p0, v1}, Lcom/nuance/swype/input/emoji/EmojiGridCell;->confineAnimationEndPosition([I)[I

    move-result-object v5

    return-object v5
.end method

.method private confineAnimationEndPosition([I)[I
    .registers 12
    .param p1, "bounds"    # [I

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 362
    aget v3, p1, v7

    aget v4, p1, v8

    invoke-static {v3, v4}, Lcom/nuance/swype/util/CoordUtils;->newInstance(II)[I

    move-result-object v2

    .line 364
    .local v2, "pos":[I
    iget-object v3, p0, Lcom/nuance/swype/input/emoji/EmojiGridCell;->parent:Lcom/nuance/swype/input/emoji/EmojiPageView;

    invoke-virtual {v3}, Lcom/nuance/swype/input/emoji/EmojiPageView;->getPopupManager()Lcom/nuance/swype/input/emoji/util/PopupManager;

    move-result-object v3

    aget v4, p1, v9

    aget v5, p1, v7

    sub-int/2addr v4, v5

    const/4 v5, 0x3

    aget v5, p1, v5

    aget v6, p1, v8

    sub-int/2addr v5, v6

    invoke-virtual {v3, v2, v4, v5, v9}, Lcom/nuance/swype/input/emoji/util/PopupManager;->confineContentToOverlay([IIII)V

    .line 367
    aget v3, v2, v7

    aget v4, p1, v7

    sub-int v0, v3, v4

    .line 368
    .local v0, "dx":I
    aget v3, v2, v8

    aget v4, p1, v8

    sub-int v1, v3, v4

    .line 370
    .local v1, "dy":I
    iget-object v3, p0, Lcom/nuance/swype/input/emoji/EmojiGridCell;->pressAnimator:Lcom/nuance/swype/input/emoji/util/PressStateAnimator;

    invoke-virtual {v3, v0, v1}, Lcom/nuance/swype/input/emoji/util/PressStateAnimator;->adjustEndDelta(II)V

    .line 372
    return-object p1
.end method

.method private drawContent(Landroid/graphics/Canvas;Lcom/nuance/swype/input/emoji/EmojiGridCell$TextBitmap;Lcom/nuance/swype/util/DrawDebug;)V
    .registers 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "textBitmap"    # Lcom/nuance/swype/input/emoji/EmojiGridCell$TextBitmap;
    .param p3, "drawDebug"    # Lcom/nuance/swype/util/DrawDebug;

    .prologue
    .line 688
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiGridCell;->parent:Lcom/nuance/swype/input/emoji/EmojiPageView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/emoji/EmojiPageView;->getParams()Lcom/nuance/swype/input/emoji/EmojiGridParams;

    move-result-object v6

    .line 690
    .local v6, "params":Lcom/nuance/swype/input/emoji/EmojiGridParams;
    if-eqz p2, :cond_30

    .line 691
    iget v0, p0, Lcom/nuance/swype/input/emoji/EmojiGridCell;->xOriginOffset:I

    iget v1, v6, Lcom/nuance/swype/input/emoji/EmojiGridParams;->baselineOffset:I

    invoke-virtual {p2, p1, v0, v1}, Lcom/nuance/swype/input/emoji/EmojiGridCell$TextBitmap;->draw(Landroid/graphics/Canvas;II)V

    .line 695
    :goto_f
    if-eqz p3, :cond_2f

    .line 696
    invoke-virtual {p0}, Lcom/nuance/swype/input/emoji/EmojiGridCell;->getWidth()I

    move-result v2

    .line 697
    invoke-virtual {p0}, Lcom/nuance/swype/input/emoji/EmojiGridCell;->getHeight()I

    move-result v3

    iget v0, p0, Lcom/nuance/swype/input/emoji/EmojiGridCell;->xOriginOffset:I

    int-to-float v4, v0

    iget v0, v6, Lcom/nuance/swype/input/emoji/EmojiGridParams;->baselineOffset:I

    int-to-float v5, v0

    move-object v0, p3

    move-object v1, p1

    .line 696
    invoke-virtual/range {v0 .. v5}, Lcom/nuance/swype/util/DrawDebug;->drawOriginLines$38ef7fb0(Landroid/graphics/Canvas;IIFF)V

    .line 700
    invoke-virtual {p0}, Lcom/nuance/swype/input/emoji/EmojiGridCell;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/nuance/swype/input/emoji/EmojiGridCell;->getHeight()I

    move-result v1

    invoke-virtual {p3, p1, v0, v1}, Lcom/nuance/swype/util/DrawDebug;->drawBorderOutline$1be95c50(Landroid/graphics/Canvas;II)V

    .line 702
    :cond_2f
    return-void

    .line 693
    :cond_30
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiGridCell;->text:Ljava/lang/String;

    iget v1, p0, Lcom/nuance/swype/input/emoji/EmojiGridCell;->xOriginOffset:I

    int-to-float v1, v1

    iget v2, v6, Lcom/nuance/swype/input/emoji/EmojiGridParams;->baselineOffset:I

    int-to-float v2, v2

    iget-object v3, v6, Lcom/nuance/swype/input/emoji/EmojiGridParams;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_f
.end method

.method private drawSkinToneIndicator(Landroid/graphics/Canvas;)V
    .registers 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 704
    iget-object v5, p0, Lcom/nuance/swype/input/emoji/EmojiGridCell;->parent:Lcom/nuance/swype/input/emoji/EmojiPageView;

    invoke-virtual {v5}, Lcom/nuance/swype/input/emoji/EmojiPageView;->getParams()Lcom/nuance/swype/input/emoji/EmojiGridParams;

    move-result-object v2

    .line 705
    .local v2, "params":Lcom/nuance/swype/input/emoji/EmojiGridParams;
    iget-object v5, p0, Lcom/nuance/swype/input/emoji/EmojiGridCell;->bounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    neg-int v4, v5

    .line 706
    .local v4, "y":I
    iget-object v5, v2, Lcom/nuance/swype/input/emoji/EmojiGridParams;->widthData:Lcom/nuance/swype/input/emoji/EmojiGridParams$DimensionData;

    iget v5, v5, Lcom/nuance/swype/input/emoji/EmojiGridParams$DimensionData;->cellSize:I

    div-int/lit8 v3, v5, 0x2

    .line 707
    .local v3, "width":I
    iget-object v5, v2, Lcom/nuance/swype/input/emoji/EmojiGridParams;->heightData:Lcom/nuance/swype/input/emoji/EmojiGridParams$DimensionData;

    iget v5, v5, Lcom/nuance/swype/input/emoji/EmojiGridParams$DimensionData;->padding:I

    div-int/lit8 v1, v5, 0x2

    .line 708
    .local v1, "height":I
    const/4 v5, 0x1

    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->save(I)I

    .line 709
    invoke-virtual {p0}, Lcom/nuance/swype/input/emoji/EmojiGridCell;->getLeft()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0}, Lcom/nuance/swype/input/emoji/EmojiGridCell;->getTop()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 710
    iget-object v5, p0, Lcom/nuance/swype/input/emoji/EmojiGridCell;->parent:Lcom/nuance/swype/input/emoji/EmojiPageView;

    invoke-virtual {v5}, Lcom/nuance/swype/input/emoji/EmojiPageView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 711
    sget v6, Lcom/nuance/swype/input/R$drawable;->emoji_icon_skins:I

    invoke-static {v5, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 712
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget v5, p0, Lcom/nuance/swype/input/emoji/EmojiGridCell;->xOriginOffset:I

    add-int/2addr v5, v3

    int-to-float v5, v5

    iget v6, v2, Lcom/nuance/swype/input/emoji/EmojiGridParams;->baselineOffset:I

    sub-int/2addr v6, v4

    sub-int/2addr v6, v1

    int-to-float v6, v6

    iget-object v7, v2, Lcom/nuance/swype/input/emoji/EmojiGridParams;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 713
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 714
    return-void
.end method

.method private getCache(Ljava/lang/String;)Landroid/graphics/Rect;
    .registers 3
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 224
    sget-object v0, Lcom/nuance/swype/input/emoji/EmojiGridCell;->boundsCache:Ljava/util/HashMap;

    if-eqz v0, :cond_d

    sget-object v0, Lcom/nuance/swype/input/emoji/EmojiGridCell;->boundsCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    :goto_c
    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method private getDefaultSkinToneCode(Lcom/nuance/swype/input/emoji/EmojiPageView;Lcom/nuance/swype/input/emoji/Emoji;)Ljava/lang/String;
    .registers 5
    .param p1, "parent"    # Lcom/nuance/swype/input/emoji/EmojiPageView;
    .param p2, "emoji"    # Lcom/nuance/swype/input/emoji/Emoji;

    .prologue
    .line 158
    invoke-virtual {p1}, Lcom/nuance/swype/input/emoji/EmojiPageView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/input/emoji/EmojiGridCell;->emojiCacheManager:Lcom/nuance/swype/input/emoji/EmojiCacheManager;

    invoke-static {v0, p2, v1}, Lcom/nuance/swype/input/emoji/EmojiLoader;->getDefaultSkinToneCode(Landroid/content/Context;Lcom/nuance/swype/input/emoji/Emoji;Lcom/nuance/swype/input/emoji/EmojiCacheManager;)Lcom/nuance/swype/input/emoji/Emoji;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiGridCell;->emoji:Lcom/nuance/swype/input/emoji/Emoji;

    .line 159
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiGridCell;->emoji:Lcom/nuance/swype/input/emoji/Emoji;

    if-nez v0, :cond_12

    .line 160
    const/4 v0, 0x0

    .line 162
    :goto_11
    return-object v0

    :cond_12
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiGridCell;->emoji:Lcom/nuance/swype/input/emoji/Emoji;

    invoke-virtual {v0}, Lcom/nuance/swype/input/emoji/Emoji;->getEmojiDisplayCode()Ljava/lang/String;

    move-result-object v0

    goto :goto_11
.end method

.method private getPopupViewContentArea()[I
    .registers 5

    .prologue
    .line 344
    iget-boolean v0, p0, Lcom/nuance/swype/input/emoji/EmojiGridCell;->preScalePopupView:Z

    if-eqz v0, :cond_f

    .line 346
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiGridCell;->pressAnimator:Lcom/nuance/swype/input/emoji/util/PressStateAnimator;

    invoke-virtual {v0}, Lcom/nuance/swype/input/emoji/util/PressStateAnimator;->getScaleEnd()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/emoji/EmojiGridCell;->getScaledBounds(F)[I

    move-result-object v0

    .line 349
    :goto_e
    return-object v0

    :cond_f
    invoke-virtual {p0}, Lcom/nuance/swype/input/emoji/EmojiGridCell;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/nuance/swype/input/emoji/EmojiGridCell;->getTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/nuance/swype/input/emoji/EmojiGridCell;->getRight()I

    move-result v2

    invoke-virtual {p0}, Lcom/nuance/swype/input/emoji/EmojiGridCell;->getBottom()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/nuance/swype/input/emoji/util/Util;->allocRect(IIII)[I

    move-result-object v0

    goto :goto_e
.end method

.method private getScaledBounds(F)[I
    .registers 8
    .param p1, "scale"    # F

    .prologue
    .line 330
    invoke-virtual {p0}, Lcom/nuance/swype/input/emoji/EmojiGridCell;->getLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/nuance/swype/input/emoji/EmojiGridCell;->getTop()I

    move-result v3

    invoke-virtual {p0}, Lcom/nuance/swype/input/emoji/EmojiGridCell;->getRight()I

    move-result v4

    invoke-virtual {p0}, Lcom/nuance/swype/input/emoji/EmojiGridCell;->getBottom()I

    move-result v5

    invoke-static {v2, v3, v4, v5}, Lcom/nuance/swype/input/emoji/util/Util;->allocRectF(IIII)[F

    move-result-object v0

    .line 333
    .local v0, "cellRect":[F
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 334
    .local v1, "mat":Landroid/graphics/Matrix;
    invoke-virtual {p0}, Lcom/nuance/swype/input/emoji/EmojiGridCell;->getCenterX()F

    move-result v2

    invoke-virtual {p0}, Lcom/nuance/swype/input/emoji/EmojiGridCell;->getCenterY()F

    move-result v3

    invoke-virtual {v1, p1, p1, v2, v3}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 335
    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 337
    invoke-static {v0}, Lcom/nuance/swype/input/emoji/util/Util;->allocRect([F)[I

    move-result-object v2

    return-object v2
.end method

.method private measureText()V
    .registers 7

    .prologue
    .line 234
    iget-object v1, p0, Lcom/nuance/swype/input/emoji/EmojiGridCell;->bounds:Landroid/graphics/Rect;

    if-eqz v1, :cond_5

    .line 248
    :goto_4
    return-void

    .line 238
    :cond_5
    iget-object v1, p0, Lcom/nuance/swype/input/emoji/EmojiGridCell;->parent:Lcom/nuance/swype/input/emoji/EmojiPageView;

    invoke-virtual {v1}, Lcom/nuance/swype/input/emoji/EmojiPageView;->getParams()Lcom/nuance/swype/input/emoji/EmojiGridParams;

    move-result-object v0

    .line 240
    .local v0, "params":Lcom/nuance/swype/input/emoji/EmojiGridParams;
    iget-object v1, p0, Lcom/nuance/swype/input/emoji/EmojiGridCell;->bounds:Landroid/graphics/Rect;

    if-nez v1, :cond_2d

    .line 241
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/nuance/swype/input/emoji/EmojiGridCell;->bounds:Landroid/graphics/Rect;

    .line 242
    iget-object v1, v0, Lcom/nuance/swype/input/emoji/EmojiGridParams;->paint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/nuance/swype/input/emoji/EmojiGridCell;->text:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/nuance/swype/input/emoji/EmojiGridCell;->text:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    iget-object v5, p0, Lcom/nuance/swype/input/emoji/EmojiGridCell;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 243
    iget-object v1, p0, Lcom/nuance/swype/input/emoji/EmojiGridCell;->text:Ljava/lang/String;

    iget-object v2, p0, Lcom/nuance/swype/input/emoji/EmojiGridCell;->bounds:Landroid/graphics/Rect;

    invoke-direct {p0, v1, v2}, Lcom/nuance/swype/input/emoji/EmojiGridCell;->putCache(Ljava/lang/String;Landroid/graphics/Rect;)V

    .line 246
    :cond_2d
    iget-object v1, p0, Lcom/nuance/swype/input/emoji/EmojiGridCell;->bounds:Landroid/graphics/Rect;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/input/emoji/EmojiGridParams;->getXOriginOffset(Landroid/graphics/Rect;I)I

    move-result v1

    iput v1, p0, Lcom/nuance/swype/input/emoji/EmojiGridCell;->xOriginOffset:I

    goto :goto_4
.end method

.method private putCache(Ljava/lang/String;Landroid/graphics/Rect;)V
    .registers 4
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 228
    sget-object v0, Lcom/nuance/swype/input/emoji/EmojiGridCell;->boundsCache:Ljava/util/HashMap;

    if-eqz v0, :cond_9

    .line 229
    sget-object v0, Lcom/nuance/swype/input/emoji/EmojiGridCell;->boundsCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    :cond_9
    return-void
.end method

.method private setPreScaleMode(Z)V
    .registers 7
    .param p1, "preScale"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 387
    iget-boolean v0, p0, Lcom/nuance/swype/input/emoji/EmojiGridCell;->enablePopupView:Z

    if-nez v0, :cond_7

    .line 405
    :cond_6
    :goto_6
    return-void

    .line 391
    :cond_7
    sget-object v0, Lcom/nuance/swype/input/emoji/EmojiGridCell;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "setPreScaleMode(): pre-scale active: "

    aput-object v2, v1, v3

    iget-boolean v2, p0, Lcom/nuance/swype/input/emoji/EmojiGridCell;->preScalePopupView:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 392
    if-eqz p1, :cond_34

    .line 393
    iget-boolean v0, p0, Lcom/nuance/swype/input/emoji/EmojiGridCell;->preScalePopupView:Z

    if-nez v0, :cond_6

    .line 394
    sget-object v0, Lcom/nuance/swype/input/emoji/EmojiGridCell;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v1, v4, [Ljava/lang/Object;

    const-string/jumbo v2, "setPreScaleMode(): pre-scale ON"

    aput-object v2, v1, v3

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 395
    iput-boolean v4, p0, Lcom/nuance/swype/input/emoji/EmojiGridCell;->preScalePopupView:Z

    .line 396
    invoke-direct {p0}, Lcom/nuance/swype/input/emoji/EmojiGridCell;->showPopupView()V

    goto :goto_6

    .line 399
    :cond_34
    iget-boolean v0, p0, Lcom/nuance/swype/input/emoji/EmojiGridCell;->preScalePopupView:Z

    if-eqz v0, :cond_6

    .line 400
    sget-object v0, Lcom/nuance/swype/input/emoji/EmojiGridCell;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v1, v4, [Ljava/lang/Object;

    const-string/jumbo v2, "setPreScaleMode(): pre-scale OFF"

    aput-object v2, v1, v3

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 401
    iput-boolean v3, p0, Lcom/nuance/swype/input/emoji/EmojiGridCell;->preScalePopupView:Z

    .line 402
    invoke-direct {p0}, Lcom/nuance/swype/input/emoji/EmojiGridCell;->showPopupView()V

    goto :goto_6
.end method

.method private setPressState(Lcom/nuance/swype/input/emoji/finger/FingerInfo$PressState;)V
    .registers 6
    .param p1, "state"    # Lcom/nuance/swype/input/emoji/finger/FingerInfo$PressState;

    .prologue
    .line 719
    sget-object v0, Lcom/nuance/swype/input/emoji/EmojiGridCell;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "setPressState(): "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p0, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "; state: "

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p1, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 721
    iput-object p1, p0, Lcom/nuance/swype/input/emoji/EmojiGridCell;->pressState:Lcom/nuance/swype/input/emoji/finger/FingerInfo$PressState;

    .line 722
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiGridCell;->pressState:Lcom/nuance/swype/input/emoji/finger/FingerInfo$PressState;

    sget-object v1, Lcom/nuance/swype/input/emoji/finger/FingerInfo$PressState;->LONG:Lcom/nuance/swype/input/emoji/finger/FingerInfo$PressState;

    if-ne v0, v1, :cond_27

    .line 723
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiGridCell;->parent:Lcom/nuance/swype/input/emoji/EmojiPageView;

    invoke-virtual {v0, p0}, Lcom/nuance/swype/input/emoji/EmojiPageView;->drawEmojiSelector(Lcom/nuance/swype/input/emoji/EmojiGridCell;)V

    .line 725
    :cond_27
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiGridCell;->emoji:Lcom/nuance/swype/input/emoji/Emoji;

    invoke-virtual {v0}, Lcom/nuance/swype/input/emoji/Emoji;->isSkinToneSupport()Z

    move-result v0

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiGridCell;->emoji:Lcom/nuance/swype/input/emoji/Emoji;

    invoke-virtual {v0}, Lcom/nuance/swype/input/emoji/Emoji;->getEmojiSkinToneList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3e

    .line 726
    invoke-direct {p0}, Lcom/nuance/swype/input/emoji/EmojiGridCell;->showSkinTonePopupView()V

    .line 728
    :cond_3e
    return-void
.end method

.method private showPopupView()V
    .registers 10

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 605
    sget-object v2, Lcom/nuance/swype/input/emoji/EmojiGridCell;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v3, v8, [Ljava/lang/Object;

    const-string/jumbo v4, "showPopupView(): called  : xPos: "

    aput-object v4, v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lcom/nuance/swype/input/emoji/EmojiGridCell;->xPos:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ",yPos= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/nuance/swype/input/emoji/EmojiGridCell;->yPos:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 607
    iget-object v2, p0, Lcom/nuance/swype/input/emoji/EmojiGridCell;->popupView:Lcom/nuance/swype/input/emoji/EmojiGridCell$EmojiPopupView;

    if-nez v2, :cond_49

    .line 608
    new-instance v2, Lcom/nuance/swype/input/emoji/EmojiGridCell$EmojiPopupView;

    iget-object v3, p0, Lcom/nuance/swype/input/emoji/EmojiGridCell;->parent:Lcom/nuance/swype/input/emoji/EmojiPageView;

    invoke-virtual {v3}, Lcom/nuance/swype/input/emoji/EmojiPageView;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/nuance/swype/input/emoji/EmojiGridCell;->parent:Lcom/nuance/swype/input/emoji/EmojiPageView;

    invoke-virtual {v4}, Lcom/nuance/swype/input/emoji/EmojiPageView;->getPopupManager()Lcom/nuance/swype/input/emoji/util/PopupManager;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lcom/nuance/swype/input/emoji/EmojiGridCell$EmojiPopupView;-><init>(Lcom/nuance/swype/input/emoji/EmojiGridCell;Landroid/content/Context;Lcom/nuance/swype/input/emoji/util/PopupManager;)V

    iput-object v2, p0, Lcom/nuance/swype/input/emoji/EmojiGridCell;->popupView:Lcom/nuance/swype/input/emoji/EmojiGridCell$EmojiPopupView;

    .line 610
    iget-object v2, p0, Lcom/nuance/swype/input/emoji/EmojiGridCell;->popupView:Lcom/nuance/swype/input/emoji/EmojiGridCell$EmojiPopupView;

    invoke-direct {p0, v2}, Lcom/nuance/swype/input/emoji/EmojiGridCell;->confineAnimationEndPosition(Landroid/view/View;)[I

    .line 613
    :cond_49
    invoke-direct {p0}, Lcom/nuance/swype/input/emoji/EmojiGridCell;->getPopupViewContentArea()[I

    move-result-object v1

    .line 614
    .local v1, "bounds":[I
    sget-object v2, Lcom/nuance/swype/input/emoji/EmojiGridCell;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v3, v8, [Ljava/lang/Object;

    const-string/jumbo v4, "showPopupView(): called  : bounds: "

    aput-object v4, v3, v6

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 615
    iget-object v2, p0, Lcom/nuance/swype/input/emoji/EmojiGridCell;->popupView:Lcom/nuance/swype/input/emoji/EmojiGridCell$EmojiPopupView;

    aget v3, v1, v6

    aget v4, v1, v7

    aget v5, v1, v8

    aget v6, v1, v6

    sub-int/2addr v5, v6

    const/4 v6, 0x3

    aget v6, v1, v6

    aget v7, v1, v7

    sub-int/2addr v6, v7

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/nuance/swype/input/emoji/EmojiGridCell$EmojiPopupView;->show(IIII)Z

    move-result v0

    .line 616
    .local v0, "added":Z
    iget-object v2, p0, Lcom/nuance/swype/input/emoji/EmojiGridCell;->popupView:Lcom/nuance/swype/input/emoji/EmojiGridCell$EmojiPopupView;

    iget v3, p0, Lcom/nuance/swype/input/emoji/EmojiGridCell;->xPos:I

    iget v4, p0, Lcom/nuance/swype/input/emoji/EmojiGridCell;->yPos:I

    invoke-virtual {v2, v3, v4}, Lcom/nuance/swype/input/emoji/EmojiGridCell$EmojiPopupView;->setAnchor(II)V

    .line 617
    iget-object v2, p0, Lcom/nuance/swype/input/emoji/EmojiGridCell;->popupView:Lcom/nuance/swype/input/emoji/EmojiGridCell$EmojiPopupView;

    iget-object v3, p0, Lcom/nuance/swype/input/emoji/EmojiGridCell;->pressAnimator:Lcom/nuance/swype/input/emoji/util/PressStateAnimator;

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/emoji/EmojiGridCell$EmojiPopupView;->transform(Lcom/nuance/swype/input/emoji/util/PressStateAnimator;)V

    .line 618
    iget-object v2, p0, Lcom/nuance/swype/input/emoji/EmojiGridCell;->popupView:Lcom/nuance/swype/input/emoji/EmojiGridCell$EmojiPopupView;

    # invokes: Lcom/nuance/swype/input/emoji/EmojiGridCell$EmojiPopupView;->preparePreScaleState()V
    invoke-static {v2}, Lcom/nuance/swype/input/emoji/EmojiGridCell$EmojiPopupView;->access$1100(Lcom/nuance/swype/input/emoji/EmojiGridCell$EmojiPopupView;)V

    .line 619
    if-eqz v0, :cond_90

    .line 621
    iget-object v2, p0, Lcom/nuance/swype/input/emoji/EmojiGridCell;->parent:Lcom/nuance/swype/input/emoji/EmojiPageView;

    invoke-virtual {v2, p0}, Lcom/nuance/swype/input/emoji/EmojiPageView;->invalidate(Lcom/nuance/swype/input/emoji/EmojiGridCell;)V

    .line 623
    :cond_90
    return-void
.end method

.method private showSkinTonePopupView()V
    .registers 6

    .prologue
    .line 625
    sget-object v0, Lcom/nuance/swype/input/emoji/EmojiGridCell;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "showPopupView(): called  : xPos: "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/nuance/swype/input/emoji/EmojiGridCell;->xPos:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",yPos= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/nuance/swype/input/emoji/EmojiGridCell;->yPos:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 626
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiGridCell;->pressState:Lcom/nuance/swype/input/emoji/finger/FingerInfo$PressState;

    sget-object v1, Lcom/nuance/swype/input/emoji/finger/FingerInfo$PressState;->SHORT:Lcom/nuance/swype/input/emoji/finger/FingerInfo$PressState;

    if-ne v0, v1, :cond_38

    .line 627
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiGridCell;->parent:Lcom/nuance/swype/input/emoji/EmojiPageView;

    invoke-virtual {v0, p0}, Lcom/nuance/swype/input/emoji/EmojiPageView;->showSkinTonePopup(Lcom/nuance/swype/input/emoji/EmojiGridCell;)V

    .line 629
    :cond_38
    return-void
.end method

.method private startPopupMode()V
    .registers 2

    .prologue
    .line 638
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiGridCell;->popupView:Lcom/nuance/swype/input/emoji/EmojiGridCell$EmojiPopupView;

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/nuance/swype/input/emoji/EmojiGridCell;->enablePopupView:Z

    if-nez v0, :cond_9

    .line 643
    :cond_8
    :goto_8
    return-void

    .line 641
    :cond_9
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/input/emoji/EmojiGridCell;->preScalePopupView:Z

    .line 642
    invoke-direct {p0}, Lcom/nuance/swype/input/emoji/EmojiGridCell;->showPopupView()V

    goto :goto_8
.end method

.method private stopPopupMode()V
    .registers 2

    .prologue
    .line 650
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiGridCell;->popupView:Lcom/nuance/swype/input/emoji/EmojiGridCell$EmojiPopupView;

    if-eqz v0, :cond_11

    .line 652
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiGridCell;->popupView:Lcom/nuance/swype/input/emoji/EmojiGridCell$EmojiPopupView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/emoji/EmojiGridCell$EmojiPopupView;->hide()V

    .line 653
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiGridCell;->popupView:Lcom/nuance/swype/input/emoji/EmojiGridCell$EmojiPopupView;

    .line 655
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiGridCell;->parent:Lcom/nuance/swype/input/emoji/EmojiPageView;

    invoke-virtual {v0, p0}, Lcom/nuance/swype/input/emoji/EmojiPageView;->invalidate(Lcom/nuance/swype/input/emoji/EmojiGridCell;)V

    .line 657
    :cond_11
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Lcom/nuance/swype/util/DrawDebug;)V
    .registers 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "drawDebug"    # Lcom/nuance/swype/util/DrawDebug;

    .prologue
    .line 664
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiGridCell;->popupView:Lcom/nuance/swype/input/emoji/EmojiGridCell$EmojiPopupView;

    if-eqz v0, :cond_5

    .line 678
    :cond_4
    :goto_4
    return-void

    .line 669
    :cond_5
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->save(I)I

    .line 670
    iget v0, p0, Lcom/nuance/swype/input/emoji/EmojiGridCell;->xPos:I

    int-to-float v0, v0

    iget v1, p0, Lcom/nuance/swype/input/emoji/EmojiGridCell;->yPos:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 672
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiGridCell;->animationState:Lcom/nuance/swype/input/emoji/util/AnimationState;

    invoke-virtual {v0}, Lcom/nuance/swype/input/emoji/util/AnimationState;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 673
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/nuance/swype/input/emoji/EmojiGridCell;->drawContent(Landroid/graphics/Canvas;Lcom/nuance/swype/input/emoji/EmojiGridCell$TextBitmap;Lcom/nuance/swype/util/DrawDebug;)V

    .line 674
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 675
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiGridCell;->emoji:Lcom/nuance/swype/input/emoji/Emoji;

    invoke-virtual {v0}, Lcom/nuance/swype/input/emoji/Emoji;->isSkinToneSupport()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 676
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/emoji/EmojiGridCell;->drawSkinToneIndicator(Landroid/graphics/Canvas;)V

    goto :goto_4
.end method

.method public getBottom()I
    .registers 3

    .prologue
    .line 186
    iget v0, p0, Lcom/nuance/swype/input/emoji/EmojiGridCell;->yPos:I

    invoke-virtual {p0}, Lcom/nuance/swype/input/emoji/EmojiGridCell;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getCellIndex()I
    .registers 2

    .prologue
    .line 632
    iget v0, p0, Lcom/nuance/swype/input/emoji/EmojiGridCell;->cellIndex:I

    return v0
.end method

.method public getCenterX()F
    .registers 4

    .prologue
    .line 190
    iget v0, p0, Lcom/nuance/swype/input/emoji/EmojiGridCell;->xPos:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/nuance/swype/input/emoji/EmojiGridCell;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public getCenterY()F
    .registers 4

    .prologue
    .line 194
    iget v0, p0, Lcom/nuance/swype/input/emoji/EmojiGridCell;->yPos:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/nuance/swype/input/emoji/EmojiGridCell;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public getColumn()I
    .registers 2

    .prologue
    .line 166
    iget v0, p0, Lcom/nuance/swype/input/emoji/EmojiGridCell;->xCell:I

    return v0
.end method

.method public getEmoji()Lcom/nuance/swype/input/emoji/Emoji;
    .registers 2

    .prologue
    .line 213
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiGridCell;->emoji:Lcom/nuance/swype/input/emoji/Emoji;

    return-object v0
.end method

.method public getHeight()I
    .registers 2

    .prologue
    .line 203
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiGridCell;->parent:Lcom/nuance/swype/input/emoji/EmojiPageView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/emoji/EmojiPageView;->getParams()Lcom/nuance/swype/input/emoji/EmojiGridParams;

    move-result-object v0

    iget-object v0, v0, Lcom/nuance/swype/input/emoji/EmojiGridParams;->heightData:Lcom/nuance/swype/input/emoji/EmojiGridParams$DimensionData;

    iget v0, v0, Lcom/nuance/swype/input/emoji/EmojiGridParams$DimensionData;->cellSize:I

    return v0
.end method

.method public getLeft()I
    .registers 2

    .prologue
    .line 174
    iget v0, p0, Lcom/nuance/swype/input/emoji/EmojiGridCell;->xPos:I

    return v0
.end method

.method public getRight()I
    .registers 3

    .prologue
    .line 182
    iget v0, p0, Lcom/nuance/swype/input/emoji/EmojiGridCell;->xPos:I

    invoke-virtual {p0}, Lcom/nuance/swype/input/emoji/EmojiGridCell;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getRow()I
    .registers 2

    .prologue
    .line 170
    iget v0, p0, Lcom/nuance/swype/input/emoji/EmojiGridCell;->yCell:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 208
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiGridCell;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getTop()I
    .registers 2

    .prologue
    .line 178
    iget v0, p0, Lcom/nuance/swype/input/emoji/EmojiGridCell;->yPos:I

    return v0
.end method

.method public getTransformedBounds([I)V
    .registers 8
    .param p1, "bounds"    # [I

    .prologue
    const/4 v1, 0x0

    .line 255
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiGridCell;->animationState:Lcom/nuance/swype/input/emoji/util/AnimationState;

    .line 256
    invoke-virtual {p0}, Lcom/nuance/swype/input/emoji/EmojiGridCell;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/nuance/swype/input/emoji/EmojiGridCell;->getHeight()I

    move-result v4

    move v2, v1

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/nuance/swype/input/emoji/util/AnimationState;->map(IIII[I)[I

    .line 257
    iget v0, p0, Lcom/nuance/swype/input/emoji/EmojiGridCell;->xPos:I

    iget v1, p0, Lcom/nuance/swype/input/emoji/EmojiGridCell;->yPos:I

    invoke-static {p1, v0, v1}, Lcom/nuance/swype/input/emoji/util/Util;->adjustRect([III)V

    .line 259
    return-void
.end method

.method public getWidth()I
    .registers 2

    .prologue
    .line 199
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiGridCell;->parent:Lcom/nuance/swype/input/emoji/EmojiPageView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/emoji/EmojiPageView;->getParams()Lcom/nuance/swype/input/emoji/EmojiGridParams;

    move-result-object v0

    iget-object v0, v0, Lcom/nuance/swype/input/emoji/EmojiGridParams;->widthData:Lcom/nuance/swype/input/emoji/EmojiGridParams$DimensionData;

    iget v0, v0, Lcom/nuance/swype/input/emoji/EmojiGridParams$DimensionData;->cellSize:I

    return v0
.end method

.method public isDoubleTapSupported()Z
    .registers 2

    .prologue
    .line 737
    const/4 v0, 0x0

    return v0
.end method

.method public isPressHoldSupported()Z
    .registers 2

    .prologue
    .line 742
    const/4 v0, 0x1

    return v0
.end method

.method public onAnimPressState(Lcom/nuance/swype/input/emoji/util/PressStateAnimator;Lcom/nuance/swype/input/emoji/finger/FingerInfo$PressState;)V
    .registers 8
    .param p1, "animator"    # Lcom/nuance/swype/input/emoji/util/PressStateAnimator;
    .param p2, "pressState"    # Lcom/nuance/swype/input/emoji/finger/FingerInfo$PressState;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 272
    sget-object v0, Lcom/nuance/swype/input/emoji/EmojiGridCell;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "onAnimPressState(): called  : pressState: "

    aput-object v2, v1, v3

    invoke-virtual {p2}, Lcom/nuance/swype/input/emoji/finger/FingerInfo$PressState;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 273
    sget-object v0, Lcom/nuance/swype/input/emoji/EmojiGridCell$1;->$SwitchMap$com$nuance$swype$input$emoji$finger$FingerInfo$PressState:[I

    invoke-virtual {p2}, Lcom/nuance/swype/input/emoji/finger/FingerInfo$PressState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_38

    .line 289
    :goto_20
    return-void

    .line 275
    :pswitch_21
    invoke-direct {p0, v3}, Lcom/nuance/swype/input/emoji/EmojiGridCell;->setPreScaleMode(Z)V

    goto :goto_20

    .line 278
    :pswitch_25
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiGridCell;->parent:Lcom/nuance/swype/input/emoji/EmojiPageView;

    sget-object v1, Lcom/nuance/swype/input/emoji/EmojiPageView$EmojiFeedback;->FEEDBACK_PRESS:Lcom/nuance/swype/input/emoji/EmojiPageView$EmojiFeedback;

    invoke-virtual {v0, p0, v1}, Lcom/nuance/swype/input/emoji/EmojiPageView;->notifyFeedback(Lcom/nuance/swype/input/emoji/EmojiGridCell;Lcom/nuance/swype/input/emoji/EmojiPageView$EmojiFeedback;)V

    goto :goto_20

    .line 281
    :pswitch_2d
    invoke-direct {p0, v4}, Lcom/nuance/swype/input/emoji/EmojiGridCell;->setPreScaleMode(Z)V

    .line 282
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiGridCell;->parent:Lcom/nuance/swype/input/emoji/EmojiPageView;

    sget-object v1, Lcom/nuance/swype/input/emoji/EmojiPageView$EmojiFeedback;->FEEDBACK_POPUP:Lcom/nuance/swype/input/emoji/EmojiPageView$EmojiFeedback;

    invoke-virtual {v0, p0, v1}, Lcom/nuance/swype/input/emoji/EmojiPageView;->notifyFeedback(Lcom/nuance/swype/input/emoji/EmojiGridCell;Lcom/nuance/swype/input/emoji/EmojiPageView$EmojiFeedback;)V

    goto :goto_20

    .line 273
    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_21
        :pswitch_25
        :pswitch_2d
    .end packed-switch
.end method

.method public onAnimStateChanged(Lcom/nuance/swype/input/emoji/util/PressStateAnimator;Z)V
    .registers 4
    .param p1, "animator"    # Lcom/nuance/swype/input/emoji/util/PressStateAnimator;
    .param p2, "active"    # Z

    .prologue
    .line 409
    if-eqz p2, :cond_e

    .line 410
    iget-boolean v0, p0, Lcom/nuance/swype/input/emoji/EmojiGridCell;->enablePopupView:Z

    if-eqz v0, :cond_a

    .line 411
    invoke-direct {p0}, Lcom/nuance/swype/input/emoji/EmojiGridCell;->startPopupMode()V

    .line 418
    :goto_9
    return-void

    .line 413
    :cond_a
    invoke-direct {p0}, Lcom/nuance/swype/input/emoji/EmojiGridCell;->confineAnimationEndPosition()[I

    goto :goto_9

    .line 416
    :cond_e
    invoke-direct {p0}, Lcom/nuance/swype/input/emoji/EmojiGridCell;->stopPopupMode()V

    goto :goto_9
.end method

.method public onAnimUpdate(Lcom/nuance/swype/input/emoji/util/PressStateAnimator;)V
    .registers 3
    .param p1, "animator"    # Lcom/nuance/swype/input/emoji/util/PressStateAnimator;

    .prologue
    .line 263
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiGridCell;->popupView:Lcom/nuance/swype/input/emoji/EmojiGridCell$EmojiPopupView;

    if-eqz v0, :cond_a

    .line 264
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiGridCell;->popupView:Lcom/nuance/swype/input/emoji/EmojiGridCell$EmojiPopupView;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/emoji/EmojiGridCell$EmojiPopupView;->transform(Lcom/nuance/swype/input/emoji/util/PressStateAnimator;)V

    .line 268
    :goto_9
    return-void

    .line 266
    :cond_a
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiGridCell;->parent:Lcom/nuance/swype/input/emoji/EmojiPageView;

    invoke-virtual {v0, p0}, Lcom/nuance/swype/input/emoji/EmojiPageView;->invalidate(Lcom/nuance/swype/input/emoji/EmojiGridCell;)V

    goto :goto_9
.end method

.method public onFingerCancel(Lcom/nuance/swype/input/emoji/finger/Fingerable;Lcom/nuance/swype/input/emoji/finger/FingerInfo;)V
    .registers 7
    .param p1, "object"    # Lcom/nuance/swype/input/emoji/finger/Fingerable;
    .param p2, "info"    # Lcom/nuance/swype/input/emoji/finger/FingerInfo;

    .prologue
    .line 771
    sget-object v0, Lcom/nuance/swype/input/emoji/EmojiGridCell;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "onFingerCancel(): called 123>>>>>> "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p0, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "; state: "

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/nuance/swype/input/emoji/EmojiGridCell;->pressState:Lcom/nuance/swype/input/emoji/finger/FingerInfo$PressState;

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 772
    sget-object v0, Lcom/nuance/swype/input/emoji/finger/FingerInfo$PressState;->UNPRESSED:Lcom/nuance/swype/input/emoji/finger/FingerInfo$PressState;

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/emoji/EmojiGridCell;->setPressState(Lcom/nuance/swype/input/emoji/finger/FingerInfo$PressState;)V

    .line 773
    return-void
.end method

.method public onFingerMove(Lcom/nuance/swype/input/emoji/finger/Fingerable;Lcom/nuance/swype/input/emoji/finger/FingerInfo;)V
    .registers 8
    .param p1, "object"    # Lcom/nuance/swype/input/emoji/finger/Fingerable;
    .param p2, "info"    # Lcom/nuance/swype/input/emoji/finger/FingerInfo;

    .prologue
    .line 754
    sget-object v0, Lcom/nuance/swype/input/emoji/EmojiGridCell;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "onFingerMove(): called >>>>>> x:: "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-interface {p2}, Lcom/nuance/swype/input/emoji/finger/FingerInfo;->getPosX()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "; y: "

    aput-object v3, v1, v2

    const/4 v2, 0x3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Lcom/nuance/swype/input/emoji/finger/FingerInfo;->getPosY()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "offsetx::"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 755
    invoke-interface {p2}, Lcom/nuance/swype/input/emoji/finger/FingerInfo;->getOffsetX()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " offsety"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p2}, Lcom/nuance/swype/input/emoji/finger/FingerInfo;->getOffsetY()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " , velocity x :: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p2}, Lcom/nuance/swype/input/emoji/finger/FingerInfo;->getVelX()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " , velocity y:: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p2}, Lcom/nuance/swype/input/emoji/finger/FingerInfo;->getVelX()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 754
    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 756
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiGridCell;->parent:Lcom/nuance/swype/input/emoji/EmojiPageView;

    invoke-virtual {v0, p1, p2}, Lcom/nuance/swype/input/emoji/EmojiPageView;->touchMoveHandle(Lcom/nuance/swype/input/emoji/finger/Fingerable;Lcom/nuance/swype/input/emoji/finger/FingerInfo;)Z

    .line 757
    return-void
.end method

.method public onFingerPress(Lcom/nuance/swype/input/emoji/finger/Fingerable;Lcom/nuance/swype/input/emoji/finger/FingerInfo;)V
    .registers 8
    .param p1, "object"    # Lcom/nuance/swype/input/emoji/finger/Fingerable;
    .param p2, "info"    # Lcom/nuance/swype/input/emoji/finger/FingerInfo;

    .prologue
    .line 747
    sget-object v1, Lcom/nuance/swype/input/emoji/EmojiGridCell;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "onFingerPress(): called >>>>>> "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p0, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "; state: "

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/nuance/swype/input/emoji/EmojiGridCell;->pressState:Lcom/nuance/swype/input/emoji/finger/FingerInfo$PressState;

    aput-object v4, v2, v3

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 748
    invoke-interface {p2}, Lcom/nuance/swype/input/emoji/finger/FingerInfo;->getPressState()Lcom/nuance/swype/input/emoji/finger/FingerInfo$PressState;

    move-result-object v0

    .line 749
    .local v0, "pressState":Lcom/nuance/swype/input/emoji/finger/FingerInfo$PressState;
    invoke-direct {p0, v0}, Lcom/nuance/swype/input/emoji/EmojiGridCell;->setPressState(Lcom/nuance/swype/input/emoji/finger/FingerInfo$PressState;)V

    .line 750
    return-void
.end method

.method public onFingerRelease(Lcom/nuance/swype/input/emoji/finger/Fingerable;Lcom/nuance/swype/input/emoji/finger/FingerInfo;Z)V
    .registers 9
    .param p1, "object"    # Lcom/nuance/swype/input/emoji/finger/Fingerable;
    .param p2, "info"    # Lcom/nuance/swype/input/emoji/finger/FingerInfo;
    .param p3, "isEscape"    # Z

    .prologue
    const/4 v4, 0x0

    .line 761
    sget-object v0, Lcom/nuance/swype/input/emoji/EmojiGridCell;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "onFingerRelease(): called"

    aput-object v2, v1, v4

    const/4 v2, 0x1

    aput-object p0, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "; isEscape: "

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 762
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiGridCell;->parent:Lcom/nuance/swype/input/emoji/EmojiPageView;

    invoke-virtual {v0, v4}, Lcom/nuance/swype/input/emoji/EmojiPageView;->setEmojiPressed(Z)V

    .line 763
    sget-object v0, Lcom/nuance/swype/input/emoji/finger/FingerInfo$PressState;->UNPRESSED:Lcom/nuance/swype/input/emoji/finger/FingerInfo$PressState;

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/emoji/EmojiGridCell;->setPressState(Lcom/nuance/swype/input/emoji/finger/FingerInfo$PressState;)V

    .line 764
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiGridCell;->parent:Lcom/nuance/swype/input/emoji/EmojiPageView;

    invoke-virtual {v0, p0}, Lcom/nuance/swype/input/emoji/EmojiPageView;->setCurrentSkinTone(Lcom/nuance/swype/input/emoji/EmojiGridCell;)V

    .line 765
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiGridCell;->parent:Lcom/nuance/swype/input/emoji/EmojiPageView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/emoji/EmojiPageView;->invalidate()V

    .line 767
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 732
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Emoji cell "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/nuance/swype/input/emoji/EmojiGridCell;->cellIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
