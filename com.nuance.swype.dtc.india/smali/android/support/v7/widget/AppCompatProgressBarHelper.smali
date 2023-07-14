.class Landroid/support/v7/widget/AppCompatProgressBarHelper;
.super Ljava/lang/Object;
.source "AppCompatProgressBarHelper.java"


# static fields
.field private static final TINT_ATTRS:[I


# instance fields
.field final mDrawableManager:Landroid/support/v7/widget/AppCompatDrawableManager;

.field mSampleTile:Landroid/graphics/Bitmap;

.field private final mView:Landroid/widget/ProgressBar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/support/v7/widget/AppCompatProgressBarHelper;->TINT_ATTRS:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x101013b
        0x101013c
    .end array-data
.end method

.method constructor <init>(Landroid/widget/ProgressBar;Landroid/support/v7/widget/AppCompatDrawableManager;)V
    .locals 0
    .param p1, "view"    # Landroid/widget/ProgressBar;
    .param p2, "drawableManager"    # Landroid/support/v7/widget/AppCompatDrawableManager;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Landroid/support/v7/widget/AppCompatProgressBarHelper;->mView:Landroid/widget/ProgressBar;

    .line 49
    iput-object p2, p0, Landroid/support/v7/widget/AppCompatProgressBarHelper;->mDrawableManager:Landroid/support/v7/widget/AppCompatDrawableManager;

    .line 50
    return-void
.end method

.method private tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;
    .locals 17
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "clip"    # Z

    .prologue
    .line 74
    move-object/from16 v0, p1

    instance-of v13, v0, Landroid/support/v4/graphics/drawable/DrawableWrapper;

    if-eqz v13, :cond_2

    move-object/from16 v13, p1

    .line 75
    check-cast v13, Landroid/support/v4/graphics/drawable/DrawableWrapper;

    invoke-interface {v13}, Landroid/support/v4/graphics/drawable/DrawableWrapper;->getWrappedDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 76
    .local v8, "inner":Landroid/graphics/drawable/Drawable;
    if-eqz v8, :cond_0

    .line 77
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v8, v1}, Landroid/support/v7/widget/AppCompatProgressBarHelper;->tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    move-object/from16 v13, p1

    .line 78
    check-cast v13, Landroid/support/v4/graphics/drawable/DrawableWrapper;

    invoke-interface {v13, v8}, Landroid/support/v4/graphics/drawable/DrawableWrapper;->setWrappedDrawable(Landroid/graphics/drawable/Drawable;)V

    .end local v8    # "inner":Landroid/graphics/drawable/Drawable;
    :cond_0
    move-object/from16 v9, p1

    .line 114
    :cond_1
    :goto_0
    return-object v9

    .line 80
    :cond_2
    move-object/from16 v0, p1

    instance-of v13, v0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v13, :cond_6

    move-object/from16 v3, p1

    .line 81
    check-cast v3, Landroid/graphics/drawable/LayerDrawable;

    .line 82
    .local v3, "background":Landroid/graphics/drawable/LayerDrawable;
    invoke-virtual {v3}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v2

    .line 83
    .local v2, "N":I
    new-array v10, v2, [Landroid/graphics/drawable/Drawable;

    .line 85
    .local v10, "outDrawables":[Landroid/graphics/drawable/Drawable;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v2, :cond_5

    .line 86
    invoke-virtual {v3, v6}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    move-result v7

    .line 87
    .local v7, "id":I
    invoke-virtual {v3, v6}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    const v13, 0x102000d

    if-eq v7, v13, :cond_3

    const v13, 0x102000f

    if-ne v7, v13, :cond_4

    :cond_3
    const/4 v13, 0x1

    :goto_2
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v13}, Landroid/support/v7/widget/AppCompatProgressBarHelper;->tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    aput-object v13, v10, v6

    .line 85
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 87
    :cond_4
    const/4 v13, 0x0

    goto :goto_2

    .line 90
    .end local v7    # "id":I
    :cond_5
    new-instance v9, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v9, v10}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 92
    .local v9, "newBg":Landroid/graphics/drawable/LayerDrawable;
    const/4 v6, 0x0

    :goto_3
    if-ge v6, v2, :cond_1

    .line 93
    invoke-virtual {v3, v6}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    move-result v13

    invoke-virtual {v9, v6, v13}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 92
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 98
    .end local v2    # "N":I
    .end local v3    # "background":Landroid/graphics/drawable/LayerDrawable;
    .end local v6    # "i":I
    .end local v9    # "newBg":Landroid/graphics/drawable/LayerDrawable;
    .end local v10    # "outDrawables":[Landroid/graphics/drawable/Drawable;
    :cond_6
    move-object/from16 v0, p1

    instance-of v13, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v13, :cond_0

    move-object/from16 v4, p1

    .line 99
    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    .line 100
    .local v4, "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v12

    .line 101
    .local v12, "tileBitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/support/v7/widget/AppCompatProgressBarHelper;->mSampleTile:Landroid/graphics/Bitmap;

    if-nez v13, :cond_7

    .line 102
    move-object/from16 v0, p0

    iput-object v12, v0, Landroid/support/v7/widget/AppCompatProgressBarHelper;->mSampleTile:Landroid/graphics/Bitmap;

    .line 105
    :cond_7
    new-instance v11, Landroid/graphics/drawable/ShapeDrawable;

    .line 2141
    const/16 v13, 0x8

    new-array v13, v13, [F

    fill-array-data v13, :array_0

    .line 2142
    new-instance v14, Landroid/graphics/drawable/shapes/RoundRectShape;

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-direct {v14, v13, v15, v0}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    .line 105
    invoke-direct {v11, v14}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 106
    .local v11, "shapeDrawable":Landroid/graphics/drawable/ShapeDrawable;
    new-instance v5, Landroid/graphics/BitmapShader;

    sget-object v13, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v14, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v5, v12, v13, v14}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 108
    .local v5, "bitmapShader":Landroid/graphics/BitmapShader;
    invoke-virtual {v11}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v13

    invoke-virtual {v13, v5}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 109
    invoke-virtual {v11}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v13

    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v14

    invoke-virtual {v14}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 110
    if-eqz p2, :cond_8

    new-instance v9, Landroid/graphics/drawable/ClipDrawable;

    const/4 v13, 0x3

    const/4 v14, 0x1

    invoke-direct {v9, v11, v13, v14}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    goto/16 :goto_0

    :cond_8
    move-object v9, v11

    goto/16 :goto_0

    .line 2141
    :array_0
    .array-data 4
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
    .end array-data
.end method


# virtual methods
.method loadFromAttributes(Landroid/util/AttributeSet;I)V
    .locals 11
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "defStyleAttr"    # I

    .prologue
    const/16 v10, 0x2710

    const/4 v9, 0x1

    const/4 v4, 0x0

    .line 53
    iget-object v2, p0, Landroid/support/v7/widget/AppCompatProgressBarHelper;->mView:Landroid/widget/ProgressBar;

    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Landroid/support/v7/widget/AppCompatProgressBarHelper;->TINT_ATTRS:[I

    invoke-static {v2, p1, v3, p2, v4}, Landroid/support/v7/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/TintTypedArray;

    move-result-object v0

    .line 56
    .local v0, "a":Landroid/support/v7/widget/TintTypedArray;
    invoke-virtual {v0, v4}, Landroid/support/v7/widget/TintTypedArray;->getDrawableIfKnown(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 57
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_2

    .line 58
    iget-object v5, p0, Landroid/support/v7/widget/AppCompatProgressBarHelper;->mView:Landroid/widget/ProgressBar;

    .line 1123
    instance-of v2, v1, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v2, :cond_1

    .line 1124
    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    .line 1125
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v6

    .line 1126
    new-instance v2, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    .line 1127
    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->isOneShot()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    move v3, v4

    .line 1129
    :goto_0
    if-ge v3, v6, :cond_0

    .line 1130
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-direct {p0, v7, v9}, Landroid/support/v7/widget/AppCompatProgressBarHelper;->tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 1131
    invoke-virtual {v7, v10}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 1132
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->getDuration(I)I

    move-result v8

    invoke-virtual {v2, v7, v8}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 1129
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1134
    :cond_0
    invoke-virtual {v2, v10}, Landroid/graphics/drawable/AnimationDrawable;->setLevel(I)Z

    move-object v1, v2

    .line 58
    :cond_1
    invoke-virtual {v5, v1}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 61
    :cond_2
    invoke-virtual {v0, v9}, Landroid/support/v7/widget/TintTypedArray;->getDrawableIfKnown(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 62
    .restart local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_3

    .line 63
    iget-object v2, p0, Landroid/support/v7/widget/AppCompatProgressBarHelper;->mView:Landroid/widget/ProgressBar;

    invoke-direct {p0, v1, v4}, Landroid/support/v7/widget/AppCompatProgressBarHelper;->tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1206
    :cond_3
    iget-object v2, v0, Landroid/support/v7/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 67
    return-void
.end method
