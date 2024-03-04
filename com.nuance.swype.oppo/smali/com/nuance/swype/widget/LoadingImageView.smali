.class public Lcom/nuance/swype/widget/LoadingImageView;
.super Landroid/view/ViewGroup;
.source "LoadingImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/widget/LoadingImageView$LoadingTask;
    }
.end annotation


# static fields
.field private static bitmapCache:Lcom/nuance/swype/input/DrawBufferManager;

.field protected static final log:Lcom/nuance/swype/util/LogManager$Log;


# instance fields
.field private context:Landroid/content/Context;

.field private image:Landroid/widget/ImageView;

.field public imageId:I

.field private isImageLoaded:Z

.field private loadingTask:Lcom/nuance/swype/widget/LoadingImageView$LoadingTask;

.field private opts:Landroid/graphics/BitmapFactory$Options;

.field private progress:Landroid/widget/ProgressBar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-string v0, "LoadingImageView"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/widget/LoadingImageView;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 34
    iput-object p1, p0, Lcom/nuance/swype/widget/LoadingImageView;->context:Landroid/content/Context;

    .line 35
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nuance/swype/widget/LoadingImageView;->image:Landroid/widget/ImageView;

    .line 36
    new-instance v0, Landroid/widget/ProgressBar;

    invoke-direct {v0, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nuance/swype/widget/LoadingImageView;->progress:Landroid/widget/ProgressBar;

    .line 37
    invoke-direct {p0}, Lcom/nuance/swype/widget/LoadingImageView;->init()V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    iput-object p1, p0, Lcom/nuance/swype/widget/LoadingImageView;->context:Landroid/content/Context;

    .line 43
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/nuance/swype/widget/LoadingImageView;->image:Landroid/widget/ImageView;

    .line 44
    new-instance v0, Landroid/widget/ProgressBar;

    invoke-direct {v0, p1, p2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/nuance/swype/widget/LoadingImageView;->progress:Landroid/widget/ProgressBar;

    .line 45
    invoke-direct {p0}, Lcom/nuance/swype/widget/LoadingImageView;->init()V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/nuance/swype/widget/LoadingImageView;->image:Landroid/widget/ImageView;

    .line 51
    new-instance v0, Landroid/widget/ProgressBar;

    invoke-direct {v0, p1, p2, p3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/nuance/swype/widget/LoadingImageView;->progress:Landroid/widget/ProgressBar;

    .line 52
    invoke-direct {p0}, Lcom/nuance/swype/widget/LoadingImageView;->init()V

    .line 53
    return-void
.end method

.method static synthetic access$000(Lcom/nuance/swype/widget/LoadingImageView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/widget/LoadingImageView;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/nuance/swype/widget/LoadingImageView;->image:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$100()Lcom/nuance/swype/input/DrawBufferManager;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/nuance/swype/widget/LoadingImageView;->bitmapCache:Lcom/nuance/swype/input/DrawBufferManager;

    return-object v0
.end method

.method static synthetic access$200$39c4b54f(Lcom/nuance/swype/widget/LoadingImageView;)V
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/widget/LoadingImageView;

    .prologue
    .line 21
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/nuance/swype/widget/LoadingImageView;->setLoading(Z)V

    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 163
    iget-object v0, p0, Lcom/nuance/swype/widget/LoadingImageView;->image:Landroid/widget/ImageView;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/widget/LoadingImageView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 164
    iget-object v0, p0, Lcom/nuance/swype/widget/LoadingImageView;->progress:Landroid/widget/ProgressBar;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/widget/LoadingImageView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 165
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/nuance/swype/widget/LoadingImageView;->setLoading(Z)V

    .line 166
    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/swype/widget/LoadingImageView;->imageId:I

    .line 167
    return-void
.end method

.method private initBitmapOpts(IIZ)V
    .locals 9
    .param p1, "resId"    # I
    .param p2, "width"    # I
    .param p3, "needScale"    # Z

    .prologue
    const/4 v8, 0x0

    .line 137
    invoke-virtual {p0}, Lcom/nuance/swype/widget/LoadingImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 138
    .local v1, "res":Landroid/content/res/Resources;
    iget-object v3, p0, Lcom/nuance/swype/widget/LoadingImageView;->opts:Landroid/graphics/BitmapFactory$Options;

    if-nez v3, :cond_0

    .line 139
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v3, p0, Lcom/nuance/swype/widget/LoadingImageView;->opts:Landroid/graphics/BitmapFactory$Options;

    .line 141
    :cond_0
    iget-object v3, p0, Lcom/nuance/swype/widget/LoadingImageView;->opts:Landroid/graphics/BitmapFactory$Options;

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 142
    iget-object v3, p0, Lcom/nuance/swype/widget/LoadingImageView;->opts:Landroid/graphics/BitmapFactory$Options;

    iput-boolean v8, v3, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 143
    iget-object v3, p0, Lcom/nuance/swype/widget/LoadingImageView;->opts:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v1, p1, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 147
    const/4 v2, 0x1

    .line 148
    .local v2, "sampleSize":I
    if-eqz p3, :cond_1

    .line 149
    iget-object v3, p0, Lcom/nuance/swype/widget/LoadingImageView;->opts:Landroid/graphics/BitmapFactory$Options;

    iget v3, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-double v4, v3

    int-to-double v6, p2

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v2, v4

    .line 153
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/swype/widget/LoadingImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 154
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget-object v3, p0, Lcom/nuance/swype/widget/LoadingImageView;->opts:Landroid/graphics/BitmapFactory$Options;

    iget v3, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int/2addr v3, v2

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 155
    iget-object v3, p0, Lcom/nuance/swype/widget/LoadingImageView;->opts:Landroid/graphics/BitmapFactory$Options;

    iget v3, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int/2addr v3, v2

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 158
    iget-object v3, p0, Lcom/nuance/swype/widget/LoadingImageView;->opts:Landroid/graphics/BitmapFactory$Options;

    iput-boolean v8, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 159
    iget-object v3, p0, Lcom/nuance/swype/widget/LoadingImageView;->opts:Landroid/graphics/BitmapFactory$Options;

    iput v2, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 160
    return-void
.end method

.method public static recycleBitmaps()V
    .locals 2

    .prologue
    .line 73
    sget-object v0, Lcom/nuance/swype/widget/LoadingImageView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "recycleBitmaps..."

    invoke-virtual {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 80
    const/4 v0, 0x0

    sput-object v0, Lcom/nuance/swype/widget/LoadingImageView;->bitmapCache:Lcom/nuance/swype/input/DrawBufferManager;

    .line 81
    return-void
.end method

.method private setLoading(Z)V
    .locals 4
    .param p1, "loading"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 170
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/nuance/swype/widget/LoadingImageView;->isImageLoaded:Z

    .line 171
    iget-object v3, p0, Lcom/nuance/swype/widget/LoadingImageView;->image:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    move v0, v2

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 172
    iget-object v0, p0, Lcom/nuance/swype/widget/LoadingImageView;->progress:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 173
    return-void

    :cond_0
    move v0, v1

    .line 170
    goto :goto_0

    :cond_1
    move v0, v1

    .line 171
    goto :goto_1

    :cond_2
    move v1, v2

    .line 172
    goto :goto_2
.end method


# virtual methods
.method public final isImageLoaded()Z
    .locals 2

    .prologue
    .line 176
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_1

    .line 177
    iget-boolean v0, p0, Lcom/nuance/swype/widget/LoadingImageView;->isImageLoaded:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/widget/LoadingImageView;->image:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/widget/LoadingImageView;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 180
    :goto_0
    return v0

    .line 177
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 180
    :cond_1
    iget-boolean v0, p0, Lcom/nuance/swype/widget/LoadingImageView;->isImageLoaded:Z

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 8
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    const/4 v6, 0x0

    .line 57
    if-eqz p1, :cond_0

    .line 59
    sub-int v4, p4, p2

    .line 60
    .local v4, "width":I
    sub-int v0, p5, p3

    .line 61
    .local v0, "height":I
    iget-object v5, p0, Lcom/nuance/swype/widget/LoadingImageView;->image:Landroid/widget/ImageView;

    invoke-virtual {v5, v6, v6, v4, v0}, Landroid/widget/ImageView;->layout(IIII)V

    .line 64
    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    div-int/lit8 v2, v5, 0x2

    .line 65
    .local v2, "progressSize":I
    sub-int v5, v4, v2

    div-int/lit8 v1, v5, 0x2

    .line 66
    .local v1, "progressLeft":I
    sub-int v5, v0, v2

    div-int/lit8 v3, v5, 0x2

    .line 67
    .local v3, "progressTop":I
    iget-object v5, p0, Lcom/nuance/swype/widget/LoadingImageView;->progress:Landroid/widget/ProgressBar;

    add-int v6, v2, v1

    add-int v7, v2, v3

    invoke-virtual {v5, v1, v3, v6, v7}, Landroid/widget/ProgressBar;->layout(IIII)V

    .line 69
    .end local v0    # "height":I
    .end local v1    # "progressLeft":I
    .end local v2    # "progressSize":I
    .end local v3    # "progressTop":I
    .end local v4    # "width":I
    :cond_0
    return-void
.end method

.method public setImage(IIZ)V
    .locals 11
    .param p1, "resId"    # I
    .param p2, "width"    # I
    .param p3, "needScale"    # Z

    .prologue
    const/16 v10, 0xb

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 84
    sget-object v3, Lcom/nuance/swype/widget/LoadingImageView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v4, "setImage imageId: "

    iget v5, p0, Lcom/nuance/swype/widget/LoadingImageView;->imageId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "...resID:"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 85
    iget v3, p0, Lcom/nuance/swype/widget/LoadingImageView;->imageId:I

    if-ne v3, p1, :cond_0

    .line 134
    :goto_0
    return-void

    .line 88
    :cond_0
    iput p1, p0, Lcom/nuance/swype/widget/LoadingImageView;->imageId:I

    .line 89
    const/4 v1, 0x0

    .line 90
    .local v1, "loadedBitmap":Landroid/graphics/Bitmap;
    const/4 v0, 0x0

    .line 91
    .local v0, "isTablet720P":Z
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xd

    if-gt v3, v4, :cond_1

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v10, :cond_1

    .line 92
    sget-boolean v0, Lcom/nuance/swype/input/settings/SettingsV11;->isTablet_720DP:Z

    .line 94
    :cond_1
    if-nez v0, :cond_3

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-ge v3, v4, :cond_3

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v10, :cond_3

    .line 95
    sget-object v3, Lcom/nuance/swype/widget/LoadingImageView;->bitmapCache:Lcom/nuance/swype/input/DrawBufferManager;

    if-nez v3, :cond_2

    .line 96
    new-instance v3, Lcom/nuance/swype/input/DrawBufferManager;

    iget-object v4, p0, Lcom/nuance/swype/widget/LoadingImageView;->context:Landroid/content/Context;

    const/16 v5, 0x12c

    invoke-direct {v3, v4, v5}, Lcom/nuance/swype/input/DrawBufferManager;-><init>(Landroid/content/Context;I)V

    sput-object v3, Lcom/nuance/swype/widget/LoadingImageView;->bitmapCache:Lcom/nuance/swype/input/DrawBufferManager;

    .line 98
    :cond_2
    sget-object v3, Lcom/nuance/swype/widget/LoadingImageView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v4, "setImage, getObjectFromCache loadedBitmap: "

    invoke-virtual {v3, v4, v9}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 99
    sget-object v3, Lcom/nuance/swype/widget/LoadingImageView;->bitmapCache:Lcom/nuance/swype/input/DrawBufferManager;

    invoke-virtual {v3, p1}, Lcom/nuance/swype/input/DrawBufferManager;->getObjectFromCache(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "loadedBitmap":Landroid/graphics/Bitmap;
    check-cast v1, Landroid/graphics/Bitmap;

    .line 101
    .restart local v1    # "loadedBitmap":Landroid/graphics/Bitmap;
    :cond_3
    if-eqz v1, :cond_6

    .line 102
    sget-object v3, Lcom/nuance/swype/widget/LoadingImageView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v4, "setImage, loadedBitmap.isRecycled: "

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 104
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_5

    .line 107
    iget-object v3, p0, Lcom/nuance/swype/widget/LoadingImageView;->loadingTask:Lcom/nuance/swype/widget/LoadingImageView$LoadingTask;

    if-eqz v3, :cond_4

    .line 108
    iget-object v3, p0, Lcom/nuance/swype/widget/LoadingImageView;->loadingTask:Lcom/nuance/swype/widget/LoadingImageView$LoadingTask;

    invoke-virtual {v3, v8}, Lcom/nuance/swype/widget/LoadingImageView$LoadingTask;->cancel(Z)Z

    .line 109
    iput-object v9, p0, Lcom/nuance/swype/widget/LoadingImageView;->loadingTask:Lcom/nuance/swype/widget/LoadingImageView$LoadingTask;

    .line 112
    :cond_4
    invoke-direct {p0, p1, p2, p3}, Lcom/nuance/swype/widget/LoadingImageView;->initBitmapOpts(IIZ)V

    .line 113
    iget-object v3, p0, Lcom/nuance/swype/widget/LoadingImageView;->image:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 114
    invoke-direct {p0, v8}, Lcom/nuance/swype/widget/LoadingImageView;->setLoading(Z)V

    goto :goto_0

    .line 117
    :cond_5
    sget-object v3, Lcom/nuance/swype/widget/LoadingImageView;->bitmapCache:Lcom/nuance/swype/input/DrawBufferManager;

    invoke-virtual {v3, p1}, Lcom/nuance/swype/input/DrawBufferManager;->removeObjectFromCache(I)V

    .line 122
    :cond_6
    iget-object v3, p0, Lcom/nuance/swype/widget/LoadingImageView;->loadingTask:Lcom/nuance/swype/widget/LoadingImageView$LoadingTask;

    if-eqz v3, :cond_7

    .line 123
    iget-object v3, p0, Lcom/nuance/swype/widget/LoadingImageView;->loadingTask:Lcom/nuance/swype/widget/LoadingImageView$LoadingTask;

    invoke-virtual {v3, v8}, Lcom/nuance/swype/widget/LoadingImageView$LoadingTask;->cancel(Z)Z

    .line 124
    iput-object v9, p0, Lcom/nuance/swype/widget/LoadingImageView;->loadingTask:Lcom/nuance/swype/widget/LoadingImageView$LoadingTask;

    .line 127
    :cond_7
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/nuance/swype/widget/LoadingImageView;->setLoading(Z)V

    .line 130
    invoke-virtual {p0}, Lcom/nuance/swype/widget/LoadingImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 131
    .local v2, "res":Landroid/content/res/Resources;
    invoke-direct {p0, p1, p2, p3}, Lcom/nuance/swype/widget/LoadingImageView;->initBitmapOpts(IIZ)V

    .line 132
    new-instance v3, Lcom/nuance/swype/widget/LoadingImageView$LoadingTask;

    iget-object v4, p0, Lcom/nuance/swype/widget/LoadingImageView;->opts:Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3, p0, v2, p1, v4}, Lcom/nuance/swype/widget/LoadingImageView$LoadingTask;-><init>(Lcom/nuance/swype/widget/LoadingImageView;Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)V

    iput-object v3, p0, Lcom/nuance/swype/widget/LoadingImageView;->loadingTask:Lcom/nuance/swype/widget/LoadingImageView$LoadingTask;

    .line 133
    iget-object v3, p0, Lcom/nuance/swype/widget/LoadingImageView;->loadingTask:Lcom/nuance/swype/widget/LoadingImageView$LoadingTask;

    new-array v4, v8, [Ljava/lang/Void;

    invoke-virtual {v3, v4}, Lcom/nuance/swype/widget/LoadingImageView$LoadingTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0
.end method
