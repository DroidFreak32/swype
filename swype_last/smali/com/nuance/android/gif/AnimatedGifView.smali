.class public Lcom/nuance/android/gif/AnimatedGifView;
.super Landroid/view/View;
.source "AnimatedGifView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/android/gif/AnimatedGifView$AnimationRunnable;,
        Lcom/nuance/android/gif/AnimatedGifView$AnimationCallback;
    }
.end annotation


# static fields
.field protected static final log:Lcom/nuance/swype/util/LogManager$Log;


# instance fields
.field private animationCallback:Lcom/nuance/android/gif/AnimatedGifView$AnimationCallback;

.field private animationRunnable:Lcom/nuance/android/gif/AnimatedGifView$AnimationRunnable;

.field animationStopped:Ljava/lang/Runnable;

.field appStarupAttrs:[I

.field private assetFilePath:Ljava/lang/String;

.field private bitmapFrame:Landroid/graphics/Bitmap;

.field private final bottomContainerHeight:I

.field public decodeStatus:I

.field private frameCount:I

.field private final frameDelayScale:F

.field frameDidAnimateCallback:Ljava/lang/Runnable;

.field private frameIndex:I

.field frameWillAnimateCallback:Ljava/lang/Runnable;

.field private height:I

.field public imageType:I

.field private final maxHeight:I

.field private final maxWidth:I

.field private resId:I

.field private staticBitmap:Landroid/graphics/Bitmap;

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 33
    const-string/jumbo v0, "AnimatedGifView"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/android/gif/AnimatedGifView;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 98
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/nuance/android/gif/AnimatedGifView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 99
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 74
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    iput v4, p0, Lcom/nuance/android/gif/AnimatedGifView;->imageType:I

    .line 52
    iput v4, p0, Lcom/nuance/android/gif/AnimatedGifView;->decodeStatus:I

    .line 66
    const/4 v2, 0x2

    new-array v2, v2, [I

    sget v3, Lcom/nuance/swype/input/R$attr;->startupDialogWidth:I

    aput v3, v2, v4

    sget v3, Lcom/nuance/swype/input/R$attr;->startupDialogHeight:I

    aput v3, v2, v6

    iput-object v2, p0, Lcom/nuance/android/gif/AnimatedGifView;->appStarupAttrs:[I

    .line 197
    new-instance v2, Lcom/nuance/android/gif/AnimatedGifView$1;

    invoke-direct {v2, p0}, Lcom/nuance/android/gif/AnimatedGifView$1;-><init>(Lcom/nuance/android/gif/AnimatedGifView;)V

    iput-object v2, p0, Lcom/nuance/android/gif/AnimatedGifView;->frameWillAnimateCallback:Ljava/lang/Runnable;

    .line 206
    new-instance v2, Lcom/nuance/android/gif/AnimatedGifView$2;

    invoke-direct {v2, p0}, Lcom/nuance/android/gif/AnimatedGifView$2;-><init>(Lcom/nuance/android/gif/AnimatedGifView;)V

    iput-object v2, p0, Lcom/nuance/android/gif/AnimatedGifView;->frameDidAnimateCallback:Ljava/lang/Runnable;

    .line 213
    new-instance v2, Lcom/nuance/android/gif/AnimatedGifView$3;

    invoke-direct {v2, p0}, Lcom/nuance/android/gif/AnimatedGifView$3;-><init>(Lcom/nuance/android/gif/AnimatedGifView;)V

    iput-object v2, p0, Lcom/nuance/android/gif/AnimatedGifView;->animationStopped:Ljava/lang/Runnable;

    .line 76
    const/high16 v2, 0x3f000000    # 0.5f

    iput v2, p0, Lcom/nuance/android/gif/AnimatedGifView;->frameDelayScale:F

    .line 77
    invoke-virtual {p0}, Lcom/nuance/android/gif/AnimatedGifView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/nuance/swype/input/R$dimen;->startup_theme_animation_buttom_container_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/nuance/android/gif/AnimatedGifView;->bottomContainerHeight:I

    .line 79
    invoke-virtual {p0}, Lcom/nuance/android/gif/AnimatedGifView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/IMEApplication;->isScreenLayoutTablet()Z

    move-result v2

    .line 81
    if-nez v2, :cond_6c

    .line 82
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 83
    .local v1, "displayRect":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/nuance/android/gif/AnimatedGifView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/nuance/swype/input/IMEApplication;->getDisplayRectSize(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 84
    iget v2, v1, Landroid/graphics/Rect;->right:I

    iget v3, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/nuance/android/gif/AnimatedGifView;->maxWidth:I

    .line 85
    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/nuance/android/gif/AnimatedGifView;->bottomContainerHeight:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/nuance/android/gif/AnimatedGifView;->maxHeight:I

    .line 92
    .end local v1    # "displayRect":Landroid/graphics/Rect;
    :goto_6b
    return-void

    .line 87
    :cond_6c
    sget v2, Lcom/nuance/swype/input/R$style;->AppStartupTheme_FloatingActivity:I

    iget-object v3, p0, Lcom/nuance/android/gif/AnimatedGifView;->appStarupAttrs:[I

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 88
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/nuance/android/gif/AnimatedGifView;->maxWidth:I

    .line 89
    invoke-virtual {v0, v6, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    float-to-int v2, v2

    iget v3, p0, Lcom/nuance/android/gif/AnimatedGifView;->bottomContainerHeight:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/nuance/android/gif/AnimatedGifView;->maxHeight:I

    .line 90
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_6b
.end method

.method static synthetic access$000(Lcom/nuance/android/gif/AnimatedGifView;)I
    .registers 2
    .param p0, "x0"    # Lcom/nuance/android/gif/AnimatedGifView;

    .prologue
    .line 31
    iget v0, p0, Lcom/nuance/android/gif/AnimatedGifView;->frameIndex:I

    return v0
.end method

.method static synthetic access$002(Lcom/nuance/android/gif/AnimatedGifView;I)I
    .registers 2
    .param p0, "x0"    # Lcom/nuance/android/gif/AnimatedGifView;
    .param p1, "x1"    # I

    .prologue
    .line 31
    iput p1, p0, Lcom/nuance/android/gif/AnimatedGifView;->frameIndex:I

    return p1
.end method

.method static synthetic access$100(Lcom/nuance/android/gif/AnimatedGifView;)I
    .registers 2
    .param p0, "x0"    # Lcom/nuance/android/gif/AnimatedGifView;

    .prologue
    .line 31
    iget v0, p0, Lcom/nuance/android/gif/AnimatedGifView;->frameCount:I

    return v0
.end method

.method static synthetic access$102(Lcom/nuance/android/gif/AnimatedGifView;I)I
    .registers 2
    .param p0, "x0"    # Lcom/nuance/android/gif/AnimatedGifView;
    .param p1, "x1"    # I

    .prologue
    .line 31
    iput p1, p0, Lcom/nuance/android/gif/AnimatedGifView;->frameCount:I

    return p1
.end method

.method static synthetic access$200(Lcom/nuance/android/gif/AnimatedGifView;)Lcom/nuance/android/gif/AnimatedGifView$AnimationCallback;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/android/gif/AnimatedGifView;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/nuance/android/gif/AnimatedGifView;->animationCallback:Lcom/nuance/android/gif/AnimatedGifView$AnimationCallback;

    return-object v0
.end method

.method static synthetic access$400(Lcom/nuance/android/gif/AnimatedGifView;)Landroid/graphics/Bitmap;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/android/gif/AnimatedGifView;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/nuance/android/gif/AnimatedGifView;->bitmapFrame:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$402(Lcom/nuance/android/gif/AnimatedGifView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/android/gif/AnimatedGifView;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/nuance/android/gif/AnimatedGifView;->bitmapFrame:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$500(Lcom/nuance/android/gif/AnimatedGifView;)I
    .registers 2
    .param p0, "x0"    # Lcom/nuance/android/gif/AnimatedGifView;

    .prologue
    .line 31
    iget v0, p0, Lcom/nuance/android/gif/AnimatedGifView;->width:I

    return v0
.end method

.method static synthetic access$600(Lcom/nuance/android/gif/AnimatedGifView;)I
    .registers 2
    .param p0, "x0"    # Lcom/nuance/android/gif/AnimatedGifView;

    .prologue
    .line 31
    iget v0, p0, Lcom/nuance/android/gif/AnimatedGifView;->height:I

    return v0
.end method

.method private getInputStream()Ljava/io/InputStream;
    .registers 3

    .prologue
    .line 112
    iget-object v0, p0, Lcom/nuance/android/gif/AnimatedGifView;->assetFilePath:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 113
    iget-object v0, p0, Lcom/nuance/android/gif/AnimatedGifView;->assetFilePath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/nuance/android/gif/AnimatedGifView;->getInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 120
    :goto_a
    return-object v0

    .line 116
    :cond_b
    iget v0, p0, Lcom/nuance/android/gif/AnimatedGifView;->resId:I

    if-lez v0, :cond_1e

    .line 117
    invoke-virtual {p0}, Lcom/nuance/android/gif/AnimatedGifView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/nuance/android/gif/AnimatedGifView;->resId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_a

    .line 120
    :cond_1e
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private getInputStream(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 4
    .param p1, "assetFilePath"    # Ljava/lang/String;

    .prologue
    .line 102
    const/4 v0, 0x0

    .line 104
    .local v0, "is":Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {p0}, Lcom/nuance/android/gif/AnimatedGifView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_c} :catch_e

    move-result-object v0

    .line 108
    :goto_d
    return-object v0

    :catch_e
    move-exception v1

    goto :goto_d
.end method

.method private setStaticBitmap(Landroid/graphics/Bitmap;)V
    .registers 6
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 186
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/nuance/android/gif/AnimatedGifView;->width:I

    .line 187
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/nuance/android/gif/AnimatedGifView;->height:I

    .line 189
    iget v1, p0, Lcom/nuance/android/gif/AnimatedGifView;->maxHeight:I

    int-to-float v1, v1

    iget v2, p0, Lcom/nuance/android/gif/AnimatedGifView;->height:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, p0, Lcom/nuance/android/gif/AnimatedGifView;->maxWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/nuance/android/gif/AnimatedGifView;->width:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 190
    .local v0, "ratio":F
    iget v1, p0, Lcom/nuance/android/gif/AnimatedGifView;->height:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcom/nuance/android/gif/AnimatedGifView;->height:I

    .line 191
    iget v1, p0, Lcom/nuance/android/gif/AnimatedGifView;->width:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcom/nuance/android/gif/AnimatedGifView;->width:I

    .line 192
    iget v1, p0, Lcom/nuance/android/gif/AnimatedGifView;->width:I

    iget v2, p0, Lcom/nuance/android/gif/AnimatedGifView;->height:I

    const/4 v3, 0x0

    invoke-static {p1, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/android/gif/AnimatedGifView;->staticBitmap:Landroid/graphics/Bitmap;

    .line 193
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 195
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 223
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 225
    iget v1, p0, Lcom/nuance/android/gif/AnimatedGifView;->decodeStatus:I

    if-ne v1, v5, :cond_4a

    .line 226
    iget v1, p0, Lcom/nuance/android/gif/AnimatedGifView;->imageType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_19

    .line 227
    iget-object v1, p0, Lcom/nuance/android/gif/AnimatedGifView;->staticBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_18

    .line 228
    iget-object v1, p0, Lcom/nuance/android/gif/AnimatedGifView;->staticBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v1, v3, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 247
    :cond_18
    :goto_18
    return-void

    .line 230
    :cond_19
    iget v1, p0, Lcom/nuance/android/gif/AnimatedGifView;->imageType:I

    if-ne v1, v5, :cond_18

    .line 231
    const/4 v0, 0x0

    .line 232
    .local v0, "isDrawn":Z
    iget-object v1, p0, Lcom/nuance/android/gif/AnimatedGifView;->animationRunnable:Lcom/nuance/android/gif/AnimatedGifView$AnimationRunnable;

    # getter for: Lcom/nuance/android/gif/AnimatedGifView$AnimationRunnable;->drawingLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/nuance/android/gif/AnimatedGifView$AnimationRunnable;->access$300(Lcom/nuance/android/gif/AnimatedGifView$AnimationRunnable;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 233
    :try_start_25
    iget-object v1, p0, Lcom/nuance/android/gif/AnimatedGifView;->bitmapFrame:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3a

    iget-object v1, p0, Lcom/nuance/android/gif/AnimatedGifView;->bitmapFrame:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_3a

    .line 234
    iget-object v1, p0, Lcom/nuance/android/gif/AnimatedGifView;->bitmapFrame:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p1, v1, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 235
    const/4 v0, 0x1

    .line 237
    :cond_3a
    monitor-exit v2
    :try_end_3b
    .catchall {:try_start_25 .. :try_end_3b} :catchall_47

    .line 238
    if-eqz v0, :cond_18

    iget-object v1, p0, Lcom/nuance/android/gif/AnimatedGifView;->animationCallback:Lcom/nuance/android/gif/AnimatedGifView$AnimationCallback;

    if-eqz v1, :cond_18

    .line 239
    iget-object v1, p0, Lcom/nuance/android/gif/AnimatedGifView;->frameDidAnimateCallback:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/nuance/android/gif/AnimatedGifView;->post(Ljava/lang/Runnable;)Z

    goto :goto_18

    .line 237
    :catchall_47
    move-exception v1

    :try_start_48
    monitor-exit v2
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_47

    throw v1

    .line 243
    .end local v0    # "isDrawn":Z
    :cond_4a
    iget-object v1, p0, Lcom/nuance/android/gif/AnimatedGifView;->staticBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_18

    .line 244
    iget-object v1, p0, Lcom/nuance/android/gif/AnimatedGifView;->staticBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v1, v3, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_18
.end method

.method protected onMeasure(II)V
    .registers 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v2, -0x80000000

    .line 125
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 126
    iget v0, p0, Lcom/nuance/android/gif/AnimatedGifView;->width:I

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iget v1, p0, Lcom/nuance/android/gif/AnimatedGifView;->height:I

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/nuance/android/gif/AnimatedGifView;->setMeasuredDimension(II)V

    .line 127
    return-void
.end method

.method public setAnimationCallback(Lcom/nuance/android/gif/AnimatedGifView$AnimationCallback;)V
    .registers 2
    .param p1, "callback"    # Lcom/nuance/android/gif/AnimatedGifView$AnimationCallback;

    .prologue
    .line 277
    iput-object p1, p0, Lcom/nuance/android/gif/AnimatedGifView;->animationCallback:Lcom/nuance/android/gif/AnimatedGifView$AnimationCallback;

    .line 278
    return-void
.end method

.method public setGif(I)V
    .registers 4
    .param p1, "resId"    # I

    .prologue
    .line 167
    invoke-virtual {p0}, Lcom/nuance/android/gif/AnimatedGifView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 168
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p0, p1, v0}, Lcom/nuance/android/gif/AnimatedGifView;->setGif(ILandroid/graphics/Bitmap;)V

    .line 169
    return-void
.end method

.method public setGif(ILandroid/graphics/Bitmap;)V
    .registers 5
    .param p1, "resId"    # I
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v1, 0x0

    .line 178
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/android/gif/AnimatedGifView;->assetFilePath:Ljava/lang/String;

    .line 179
    iput p1, p0, Lcom/nuance/android/gif/AnimatedGifView;->resId:I

    .line 180
    iput v1, p0, Lcom/nuance/android/gif/AnimatedGifView;->imageType:I

    .line 181
    iput v1, p0, Lcom/nuance/android/gif/AnimatedGifView;->decodeStatus:I

    .line 182
    invoke-direct {p0, p2}, Lcom/nuance/android/gif/AnimatedGifView;->setStaticBitmap(Landroid/graphics/Bitmap;)V

    .line 183
    return-void
.end method

.method public setGif(Ljava/lang/String;)V
    .registers 5
    .param p1, "assetFilePath"    # Ljava/lang/String;

    .prologue
    .line 135
    invoke-direct {p0, p1}, Lcom/nuance/android/gif/AnimatedGifView;->getInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 136
    .local v1, "is":Ljava/io/InputStream;
    if-eqz v1, :cond_10

    .line 137
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 139
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :try_start_a
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_d} :catch_11

    .line 143
    :goto_d
    invoke-virtual {p0, p1, v0}, Lcom/nuance/android/gif/AnimatedGifView;->setGif(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 145
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_10
    return-void

    .line 141
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    :catch_11
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_d
.end method

.method public setGif(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 4
    .param p1, "assetFilePath"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v0, 0x0

    .line 154
    iput v0, p0, Lcom/nuance/android/gif/AnimatedGifView;->resId:I

    .line 155
    iput-object p1, p0, Lcom/nuance/android/gif/AnimatedGifView;->assetFilePath:Ljava/lang/String;

    .line 156
    iput v0, p0, Lcom/nuance/android/gif/AnimatedGifView;->imageType:I

    .line 157
    iput v0, p0, Lcom/nuance/android/gif/AnimatedGifView;->decodeStatus:I

    .line 158
    invoke-direct {p0, p2}, Lcom/nuance/android/gif/AnimatedGifView;->setStaticBitmap(Landroid/graphics/Bitmap;)V

    .line 159
    return-void
.end method
