.class public Lcom/facebook/login/widget/ProfilePictureView;
.super Landroid/widget/FrameLayout;
.source "ProfilePictureView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/login/widget/ProfilePictureView$OnErrorListener;
    }
.end annotation


# static fields
.field private static final BITMAP_HEIGHT_KEY:Ljava/lang/String; = "ProfilePictureView_height"

.field private static final BITMAP_KEY:Ljava/lang/String; = "ProfilePictureView_bitmap"

.field private static final BITMAP_WIDTH_KEY:Ljava/lang/String; = "ProfilePictureView_width"

.field public static final CUSTOM:I = -0x1

.field private static final IS_CROPPED_DEFAULT_VALUE:Z = true

.field private static final IS_CROPPED_KEY:Ljava/lang/String; = "ProfilePictureView_isCropped"

.field public static final LARGE:I = -0x4

.field private static final MIN_SIZE:I = 0x1

.field public static final NORMAL:I = -0x3

.field private static final PENDING_REFRESH_KEY:Ljava/lang/String; = "ProfilePictureView_refresh"

.field private static final PRESET_SIZE_KEY:Ljava/lang/String; = "ProfilePictureView_presetSize"

.field private static final PROFILE_ID_KEY:Ljava/lang/String; = "ProfilePictureView_profileId"

.field public static final SMALL:I = -0x2

.field private static final SUPER_STATE_KEY:Ljava/lang/String; = "ProfilePictureView_superState"

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private customizedDefaultProfilePicture:Landroid/graphics/Bitmap;

.field private image:Landroid/widget/ImageView;

.field private imageContents:Landroid/graphics/Bitmap;

.field private isCropped:Z

.field private lastRequest:Lcom/facebook/internal/ImageRequest;

.field private onErrorListener:Lcom/facebook/login/widget/ProfilePictureView$OnErrorListener;

.field private presetSizeType:I

.field private profileId:Ljava/lang/String;

.field private queryHeight:I

.field private queryWidth:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 60
    const-class v0, Lcom/facebook/login/widget/ProfilePictureView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/login/widget/ProfilePictureView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 123
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 107
    iput v0, p0, Lcom/facebook/login/widget/ProfilePictureView;->queryHeight:I

    .line 108
    iput v0, p0, Lcom/facebook/login/widget/ProfilePictureView;->queryWidth:I

    .line 109
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/login/widget/ProfilePictureView;->isCropped:Z

    .line 112
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/login/widget/ProfilePictureView;->presetSizeType:I

    .line 115
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/login/widget/ProfilePictureView;->customizedDefaultProfilePicture:Landroid/graphics/Bitmap;

    .line 124
    invoke-direct {p0, p1}, Lcom/facebook/login/widget/ProfilePictureView;->initialize(Landroid/content/Context;)V

    .line 125
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 135
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 107
    iput v0, p0, Lcom/facebook/login/widget/ProfilePictureView;->queryHeight:I

    .line 108
    iput v0, p0, Lcom/facebook/login/widget/ProfilePictureView;->queryWidth:I

    .line 109
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/login/widget/ProfilePictureView;->isCropped:Z

    .line 112
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/login/widget/ProfilePictureView;->presetSizeType:I

    .line 115
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/login/widget/ProfilePictureView;->customizedDefaultProfilePicture:Landroid/graphics/Bitmap;

    .line 136
    invoke-direct {p0, p1}, Lcom/facebook/login/widget/ProfilePictureView;->initialize(Landroid/content/Context;)V

    .line 137
    invoke-direct {p0, p2}, Lcom/facebook/login/widget/ProfilePictureView;->parseAttributes(Landroid/util/AttributeSet;)V

    .line 138
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, 0x0

    .line 149
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 107
    iput v0, p0, Lcom/facebook/login/widget/ProfilePictureView;->queryHeight:I

    .line 108
    iput v0, p0, Lcom/facebook/login/widget/ProfilePictureView;->queryWidth:I

    .line 109
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/login/widget/ProfilePictureView;->isCropped:Z

    .line 112
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/login/widget/ProfilePictureView;->presetSizeType:I

    .line 115
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/login/widget/ProfilePictureView;->customizedDefaultProfilePicture:Landroid/graphics/Bitmap;

    .line 150
    invoke-direct {p0, p1}, Lcom/facebook/login/widget/ProfilePictureView;->initialize(Landroid/content/Context;)V

    .line 151
    invoke-direct {p0, p2}, Lcom/facebook/login/widget/ProfilePictureView;->parseAttributes(Landroid/util/AttributeSet;)V

    .line 152
    return-void
.end method

.method static synthetic access$000(Lcom/facebook/login/widget/ProfilePictureView;Lcom/facebook/internal/ImageResponse;)V
    .registers 2
    .param p0, "x0"    # Lcom/facebook/login/widget/ProfilePictureView;
    .param p1, "x1"    # Lcom/facebook/internal/ImageResponse;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/facebook/login/widget/ProfilePictureView;->processResponse(Lcom/facebook/internal/ImageResponse;)V

    return-void
.end method

.method private getPresetSizeInPixels(Z)I
    .registers 5
    .param p1, "forcePreset"    # Z

    .prologue
    const/4 v1, 0x0

    .line 522
    iget v2, p0, Lcom/facebook/login/widget/ProfilePictureView;->presetSizeType:I

    packed-switch v2, :pswitch_data_1e

    .line 543
    :cond_6
    :goto_6
    return v1

    .line 524
    :pswitch_7
    sget v0, Lcom/facebook/R$dimen;->com_facebook_profilepictureview_preset_size_small:I

    .line 543
    .local v0, "dimensionId":I
    :goto_9
    invoke-virtual {p0}, Lcom/facebook/login/widget/ProfilePictureView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_6

    .line 527
    .end local v0    # "dimensionId":I
    :pswitch_12
    sget v0, Lcom/facebook/R$dimen;->com_facebook_profilepictureview_preset_size_normal:I

    .line 528
    .restart local v0    # "dimensionId":I
    goto :goto_9

    .line 530
    .end local v0    # "dimensionId":I
    :pswitch_15
    sget v0, Lcom/facebook/R$dimen;->com_facebook_profilepictureview_preset_size_large:I

    .line 531
    .restart local v0    # "dimensionId":I
    goto :goto_9

    .line 533
    .end local v0    # "dimensionId":I
    :pswitch_18
    if-eqz p1, :cond_6

    .line 536
    sget v0, Lcom/facebook/R$dimen;->com_facebook_profilepictureview_preset_size_normal:I

    .line 537
    .restart local v0    # "dimensionId":I
    goto :goto_9

    .line 522
    nop

    :pswitch_data_1e
    .packed-switch -0x4
        :pswitch_15
        :pswitch_12
        :pswitch_7
        :pswitch_18
    .end packed-switch
.end method

.method private initialize(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, -0x1

    .line 370
    invoke-virtual {p0}, Lcom/facebook/login/widget/ProfilePictureView;->removeAllViews()V

    .line 372
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/facebook/login/widget/ProfilePictureView;->image:Landroid/widget/ImageView;

    .line 374
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 378
    .local v0, "imageLayout":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v1, p0, Lcom/facebook/login/widget/ProfilePictureView;->image:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 382
    iget-object v1, p0, Lcom/facebook/login/widget/ProfilePictureView;->image:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 383
    iget-object v1, p0, Lcom/facebook/login/widget/ProfilePictureView;->image:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Lcom/facebook/login/widget/ProfilePictureView;->addView(Landroid/view/View;)V

    .line 384
    return-void
.end method

.method private parseAttributes(Landroid/util/AttributeSet;)V
    .registers 5
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 387
    invoke-virtual {p0}, Lcom/facebook/login/widget/ProfilePictureView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/facebook/R$styleable;->com_facebook_profile_picture_view:[I

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 389
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/facebook/R$styleable;->com_facebook_profile_picture_view_com_facebook_preset_size:I

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/facebook/login/widget/ProfilePictureView;->setPresetSize(I)V

    .line 390
    sget v1, Lcom/facebook/R$styleable;->com_facebook_profile_picture_view_com_facebook_is_cropped:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/facebook/login/widget/ProfilePictureView;->isCropped:Z

    .line 392
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 393
    return-void
.end method

.method private processResponse(Lcom/facebook/internal/ImageResponse;)V
    .registers 9
    .param p1, "response"    # Lcom/facebook/internal/ImageResponse;

    .prologue
    .line 467
    invoke-virtual {p1}, Lcom/facebook/internal/ImageResponse;->getRequest()Lcom/facebook/internal/ImageRequest;

    move-result-object v3

    iget-object v4, p0, Lcom/facebook/login/widget/ProfilePictureView;->lastRequest:Lcom/facebook/internal/ImageRequest;

    if-ne v3, v4, :cond_35

    .line 468
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/facebook/login/widget/ProfilePictureView;->lastRequest:Lcom/facebook/internal/ImageRequest;

    .line 469
    invoke-virtual {p1}, Lcom/facebook/internal/ImageResponse;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 470
    .local v2, "responseImage":Landroid/graphics/Bitmap;
    invoke-virtual {p1}, Lcom/facebook/internal/ImageResponse;->getError()Ljava/lang/Exception;

    move-result-object v0

    .line 471
    .local v0, "error":Ljava/lang/Exception;
    if-eqz v0, :cond_43

    .line 472
    iget-object v1, p0, Lcom/facebook/login/widget/ProfilePictureView;->onErrorListener:Lcom/facebook/login/widget/ProfilePictureView$OnErrorListener;

    .line 473
    .local v1, "listener":Lcom/facebook/login/widget/ProfilePictureView$OnErrorListener;
    if-eqz v1, :cond_36

    .line 474
    new-instance v3, Lcom/facebook/FacebookException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Error in downloading profile picture for profileId: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/facebook/login/widget/ProfilePictureView;->getProfileId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v1, v3}, Lcom/facebook/login/widget/ProfilePictureView$OnErrorListener;->onError(Lcom/facebook/FacebookException;)V

    .line 488
    .end local v0    # "error":Ljava/lang/Exception;
    .end local v1    # "listener":Lcom/facebook/login/widget/ProfilePictureView$OnErrorListener;
    .end local v2    # "responseImage":Landroid/graphics/Bitmap;
    :cond_35
    :goto_35
    return-void

    .line 478
    .restart local v0    # "error":Ljava/lang/Exception;
    .restart local v1    # "listener":Lcom/facebook/login/widget/ProfilePictureView$OnErrorListener;
    .restart local v2    # "responseImage":Landroid/graphics/Bitmap;
    :cond_36
    sget-object v3, Lcom/facebook/LoggingBehavior;->REQUESTS:Lcom/facebook/LoggingBehavior;

    const/4 v4, 0x6

    sget-object v5, Lcom/facebook/login/widget/ProfilePictureView;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_35

    .line 480
    .end local v1    # "listener":Lcom/facebook/login/widget/ProfilePictureView$OnErrorListener;
    :cond_43
    if-eqz v2, :cond_35

    .line 481
    invoke-direct {p0, v2}, Lcom/facebook/login/widget/ProfilePictureView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 483
    invoke-virtual {p1}, Lcom/facebook/internal/ImageResponse;->isCachedRedirect()Z

    move-result v3

    if-eqz v3, :cond_35

    .line 484
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/facebook/login/widget/ProfilePictureView;->sendImageRequest(Z)V

    goto :goto_35
.end method

.method private refreshImage(Z)V
    .registers 4
    .param p1, "force"    # Z

    .prologue
    .line 396
    invoke-direct {p0}, Lcom/facebook/login/widget/ProfilePictureView;->updateImageQueryParameters()Z

    move-result v0

    .line 399
    .local v0, "changed":Z
    iget-object v1, p0, Lcom/facebook/login/widget/ProfilePictureView;->profileId:Ljava/lang/String;

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/facebook/login/widget/ProfilePictureView;->profileId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_18

    iget v1, p0, Lcom/facebook/login/widget/ProfilePictureView;->queryWidth:I

    if-nez v1, :cond_1c

    iget v1, p0, Lcom/facebook/login/widget/ProfilePictureView;->queryHeight:I

    if-nez v1, :cond_1c

    .line 402
    :cond_18
    invoke-direct {p0}, Lcom/facebook/login/widget/ProfilePictureView;->setBlankProfilePicture()V

    .line 406
    :cond_1b
    :goto_1b
    return-void

    .line 403
    :cond_1c
    if-nez v0, :cond_20

    if-eqz p1, :cond_1b

    .line 404
    :cond_20
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/facebook/login/widget/ProfilePictureView;->sendImageRequest(Z)V

    goto :goto_1b
.end method

.method private sendImageRequest(Z)V
    .registers 8
    .param p1, "allowCachedResponse"    # Z

    .prologue
    .line 437
    new-instance v1, Lcom/facebook/internal/ImageRequest$Builder;

    invoke-virtual {p0}, Lcom/facebook/login/widget/ProfilePictureView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/login/widget/ProfilePictureView;->profileId:Ljava/lang/String;

    iget v4, p0, Lcom/facebook/login/widget/ProfilePictureView;->queryWidth:I

    iget v5, p0, Lcom/facebook/login/widget/ProfilePictureView;->queryHeight:I

    invoke-static {v3, v4, v5}, Lcom/facebook/internal/ImageRequest;->getProfilePictureUri(Ljava/lang/String;II)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/facebook/internal/ImageRequest$Builder;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 441
    invoke-virtual {v1, p1}, Lcom/facebook/internal/ImageRequest$Builder;->setAllowCachedRedirects(Z)Lcom/facebook/internal/ImageRequest$Builder;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/facebook/internal/ImageRequest$Builder;->setCallerTag(Ljava/lang/Object;)Lcom/facebook/internal/ImageRequest$Builder;

    move-result-object v1

    new-instance v2, Lcom/facebook/login/widget/ProfilePictureView$1;

    invoke-direct {v2, p0}, Lcom/facebook/login/widget/ProfilePictureView$1;-><init>(Lcom/facebook/login/widget/ProfilePictureView;)V

    invoke-virtual {v1, v2}, Lcom/facebook/internal/ImageRequest$Builder;->setCallback(Lcom/facebook/internal/ImageRequest$Callback;)Lcom/facebook/internal/ImageRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/internal/ImageRequest$Builder;->build()Lcom/facebook/internal/ImageRequest;

    move-result-object v0

    .line 455
    .local v0, "request":Lcom/facebook/internal/ImageRequest;
    iget-object v1, p0, Lcom/facebook/login/widget/ProfilePictureView;->lastRequest:Lcom/facebook/internal/ImageRequest;

    if-eqz v1, :cond_31

    .line 456
    iget-object v1, p0, Lcom/facebook/login/widget/ProfilePictureView;->lastRequest:Lcom/facebook/internal/ImageRequest;

    invoke-static {v1}, Lcom/facebook/internal/ImageDownloader;->cancelRequest(Lcom/facebook/internal/ImageRequest;)Z

    .line 458
    :cond_31
    iput-object v0, p0, Lcom/facebook/login/widget/ProfilePictureView;->lastRequest:Lcom/facebook/internal/ImageRequest;

    .line 460
    invoke-static {v0}, Lcom/facebook/internal/ImageDownloader;->downloadAsync(Lcom/facebook/internal/ImageRequest;)V

    .line 461
    return-void
.end method

.method private setBlankProfilePicture()V
    .registers 7

    .prologue
    .line 410
    iget-object v2, p0, Lcom/facebook/login/widget/ProfilePictureView;->lastRequest:Lcom/facebook/internal/ImageRequest;

    if-eqz v2, :cond_9

    .line 411
    iget-object v2, p0, Lcom/facebook/login/widget/ProfilePictureView;->lastRequest:Lcom/facebook/internal/ImageRequest;

    invoke-static {v2}, Lcom/facebook/internal/ImageDownloader;->cancelRequest(Lcom/facebook/internal/ImageRequest;)Z

    .line 414
    :cond_9
    iget-object v2, p0, Lcom/facebook/login/widget/ProfilePictureView;->customizedDefaultProfilePicture:Landroid/graphics/Bitmap;

    if-nez v2, :cond_24

    .line 415
    invoke-virtual {p0}, Lcom/facebook/login/widget/ProfilePictureView;->isCropped()Z

    move-result v2

    if-eqz v2, :cond_21

    sget v0, Lcom/facebook/R$drawable;->com_facebook_profile_picture_blank_square:I

    .line 418
    .local v0, "blankImageResource":I
    :goto_15
    invoke-virtual {p0}, Lcom/facebook/login/widget/ProfilePictureView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/facebook/login/widget/ProfilePictureView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 427
    .end local v0    # "blankImageResource":I
    :goto_20
    return-void

    .line 415
    :cond_21
    sget v0, Lcom/facebook/R$drawable;->com_facebook_profile_picture_blank_portrait:I

    goto :goto_15

    .line 421
    :cond_24
    invoke-direct {p0}, Lcom/facebook/login/widget/ProfilePictureView;->updateImageQueryParameters()Z

    .line 423
    iget-object v2, p0, Lcom/facebook/login/widget/ProfilePictureView;->customizedDefaultProfilePicture:Landroid/graphics/Bitmap;

    iget v3, p0, Lcom/facebook/login/widget/ProfilePictureView;->queryWidth:I

    iget v4, p0, Lcom/facebook/login/widget/ProfilePictureView;->queryHeight:I

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 425
    .local v1, "scaledBitmap":Landroid/graphics/Bitmap;
    invoke-direct {p0, v1}, Lcom/facebook/login/widget/ProfilePictureView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_20
.end method

.method private setImageBitmap(Landroid/graphics/Bitmap;)V
    .registers 3
    .param p1, "imageBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 430
    iget-object v0, p0, Lcom/facebook/login/widget/ProfilePictureView;->image:Landroid/widget/ImageView;

    if-eqz v0, :cond_d

    if-eqz p1, :cond_d

    .line 431
    iput-object p1, p0, Lcom/facebook/login/widget/ProfilePictureView;->imageContents:Landroid/graphics/Bitmap;

    .line 432
    iget-object v0, p0, Lcom/facebook/login/widget/ProfilePictureView;->image:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 434
    :cond_d
    return-void
.end method

.method private updateImageQueryParameters()Z
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 491
    invoke-virtual {p0}, Lcom/facebook/login/widget/ProfilePictureView;->getHeight()I

    move-result v1

    .line 492
    .local v1, "newHeightPx":I
    invoke-virtual {p0}, Lcom/facebook/login/widget/ProfilePictureView;->getWidth()I

    move-result v2

    .line 493
    .local v2, "newWidthPx":I
    if-lez v2, :cond_d

    if-gtz v1, :cond_f

    :cond_d
    move v0, v4

    .line 517
    :goto_e
    return v0

    .line 498
    :cond_f
    invoke-direct {p0, v4}, Lcom/facebook/login/widget/ProfilePictureView;->getPresetSizeInPixels(Z)I

    move-result v3

    .line 499
    .local v3, "presetSize":I
    if-eqz v3, :cond_17

    .line 501
    move v2, v3

    move v1, v3

    .line 506
    :cond_17
    if-gt v2, v1, :cond_30

    .line 507
    invoke-virtual {p0}, Lcom/facebook/login/widget/ProfilePictureView;->isCropped()Z

    move-result v5

    if-eqz v5, :cond_2e

    move v1, v2

    .line 512
    :goto_20
    iget v5, p0, Lcom/facebook/login/widget/ProfilePictureView;->queryWidth:I

    if-ne v2, v5, :cond_28

    iget v5, p0, Lcom/facebook/login/widget/ProfilePictureView;->queryHeight:I

    if-eq v1, v5, :cond_3a

    :cond_28
    const/4 v0, 0x1

    .line 514
    .local v0, "changed":Z
    :goto_29
    iput v2, p0, Lcom/facebook/login/widget/ProfilePictureView;->queryWidth:I

    .line 515
    iput v1, p0, Lcom/facebook/login/widget/ProfilePictureView;->queryHeight:I

    goto :goto_e

    .end local v0    # "changed":Z
    :cond_2e
    move v1, v4

    .line 507
    goto :goto_20

    .line 509
    :cond_30
    invoke-virtual {p0}, Lcom/facebook/login/widget/ProfilePictureView;->isCropped()Z

    move-result v5

    if-eqz v5, :cond_38

    move v2, v1

    :goto_37
    goto :goto_20

    :cond_38
    move v2, v4

    goto :goto_37

    :cond_3a
    move v0, v4

    .line 512
    goto :goto_29
.end method


# virtual methods
.method public final getOnErrorListener()Lcom/facebook/login/widget/ProfilePictureView$OnErrorListener;
    .registers 2

    .prologue
    .line 238
    iget-object v0, p0, Lcom/facebook/login/widget/ProfilePictureView;->onErrorListener:Lcom/facebook/login/widget/ProfilePictureView$OnErrorListener;

    return-object v0
.end method

.method public final getPresetSize()I
    .registers 2

    .prologue
    .line 160
    iget v0, p0, Lcom/facebook/login/widget/ProfilePictureView;->presetSizeType:I

    return v0
.end method

.method public final getProfileId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 211
    iget-object v0, p0, Lcom/facebook/login/widget/ProfilePictureView;->profileId:Ljava/lang/String;

    return-object v0
.end method

.method public final isCropped()Z
    .registers 2

    .prologue
    .line 190
    iget-boolean v0, p0, Lcom/facebook/login/widget/ProfilePictureView;->isCropped:Z

    return v0
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 361
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 365
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/login/widget/ProfilePictureView;->lastRequest:Lcom/facebook/internal/ImageRequest;

    .line 366
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 7
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 306
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 309
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/login/widget/ProfilePictureView;->refreshImage(Z)V

    .line 310
    return-void
.end method

.method protected onMeasure(II)V
    .registers 11
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, -0x2

    const/high16 v5, 0x40000000    # 2.0f

    .line 271
    invoke-virtual {p0}, Lcom/facebook/login/widget/ProfilePictureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 272
    .local v3, "params":Landroid/view/ViewGroup$LayoutParams;
    const/4 v0, 0x0

    .line 273
    .local v0, "customMeasure":Z
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 274
    .local v1, "newHeight":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 275
    .local v2, "newWidth":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    if-eq v4, v5, :cond_24

    iget v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v4, v6, :cond_24

    .line 277
    invoke-direct {p0, v7}, Lcom/facebook/login/widget/ProfilePictureView;->getPresetSizeInPixels(Z)I

    move-result v1

    .line 278
    invoke-static {v1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 279
    const/4 v0, 0x1

    .line 282
    :cond_24
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    if-eq v4, v5, :cond_37

    iget v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v4, v6, :cond_37

    .line 284
    invoke-direct {p0, v7}, Lcom/facebook/login/widget/ProfilePictureView;->getPresetSizeInPixels(Z)I

    move-result v2

    .line 285
    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 286
    const/4 v0, 0x1

    .line 289
    :cond_37
    if-eqz v0, :cond_40

    .line 292
    invoke-virtual {p0, v2, v1}, Lcom/facebook/login/widget/ProfilePictureView;->setMeasuredDimension(II)V

    .line 293
    invoke-virtual {p0, p1, p2}, Lcom/facebook/login/widget/ProfilePictureView;->measureChildren(II)V

    .line 298
    :goto_3f
    return-void

    .line 296
    :cond_40
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    goto :goto_3f
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 5
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 339
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Landroid/os/Bundle;

    if-eq v1, v2, :cond_c

    .line 340
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 357
    :cond_b
    :goto_b
    return-void

    :cond_c
    move-object v0, p1

    .line 342
    check-cast v0, Landroid/os/Bundle;

    .line 343
    .local v0, "instanceState":Landroid/os/Bundle;
    const-string/jumbo v1, "ProfilePictureView_superState"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 345
    const-string/jumbo v1, "ProfilePictureView_profileId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/login/widget/ProfilePictureView;->profileId:Ljava/lang/String;

    .line 346
    const-string/jumbo v1, "ProfilePictureView_presetSize"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/facebook/login/widget/ProfilePictureView;->presetSizeType:I

    .line 347
    const-string/jumbo v1, "ProfilePictureView_isCropped"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/facebook/login/widget/ProfilePictureView;->isCropped:Z

    .line 348
    const-string/jumbo v1, "ProfilePictureView_width"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/facebook/login/widget/ProfilePictureView;->queryWidth:I

    .line 349
    const-string/jumbo v1, "ProfilePictureView_height"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/facebook/login/widget/ProfilePictureView;->queryHeight:I

    .line 351
    const-string/jumbo v1, "ProfilePictureView_bitmap"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-direct {p0, v1}, Lcom/facebook/login/widget/ProfilePictureView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 353
    const-string/jumbo v1, "ProfilePictureView_refresh"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 354
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/facebook/login/widget/ProfilePictureView;->refreshImage(Z)V

    goto :goto_b
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 5

    .prologue
    .line 319
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 320
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 321
    .local v0, "instanceState":Landroid/os/Bundle;
    const-string/jumbo v2, "ProfilePictureView_superState"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 322
    const-string/jumbo v2, "ProfilePictureView_profileId"

    iget-object v3, p0, Lcom/facebook/login/widget/ProfilePictureView;->profileId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    const-string/jumbo v2, "ProfilePictureView_presetSize"

    iget v3, p0, Lcom/facebook/login/widget/ProfilePictureView;->presetSizeType:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 324
    const-string/jumbo v2, "ProfilePictureView_isCropped"

    iget-boolean v3, p0, Lcom/facebook/login/widget/ProfilePictureView;->isCropped:Z

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 325
    const-string/jumbo v2, "ProfilePictureView_bitmap"

    iget-object v3, p0, Lcom/facebook/login/widget/ProfilePictureView;->imageContents:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 326
    const-string/jumbo v2, "ProfilePictureView_width"

    iget v3, p0, Lcom/facebook/login/widget/ProfilePictureView;->queryWidth:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 327
    const-string/jumbo v2, "ProfilePictureView_height"

    iget v3, p0, Lcom/facebook/login/widget/ProfilePictureView;->queryHeight:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 328
    const-string/jumbo v3, "ProfilePictureView_refresh"

    iget-object v2, p0, Lcom/facebook/login/widget/ProfilePictureView;->lastRequest:Lcom/facebook/internal/ImageRequest;

    if-eqz v2, :cond_4b

    const/4 v2, 0x1

    :goto_47
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 330
    return-object v0

    .line 328
    :cond_4b
    const/4 v2, 0x0

    goto :goto_47
.end method

.method public final setCropped(Z)V
    .registers 3
    .param p1, "showCroppedVersion"    # Z

    .prologue
    .line 200
    iput-boolean p1, p0, Lcom/facebook/login/widget/ProfilePictureView;->isCropped:Z

    .line 202
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/login/widget/ProfilePictureView;->refreshImage(Z)V

    .line 203
    return-void
.end method

.method public final setDefaultProfilePicture(Landroid/graphics/Bitmap;)V
    .registers 2
    .param p1, "inputBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 258
    iput-object p1, p0, Lcom/facebook/login/widget/ProfilePictureView;->customizedDefaultProfilePicture:Landroid/graphics/Bitmap;

    .line 259
    return-void
.end method

.method public final setOnErrorListener(Lcom/facebook/login/widget/ProfilePictureView$OnErrorListener;)V
    .registers 2
    .param p1, "onErrorListener"    # Lcom/facebook/login/widget/ProfilePictureView$OnErrorListener;

    .prologue
    .line 248
    iput-object p1, p0, Lcom/facebook/login/widget/ProfilePictureView;->onErrorListener:Lcom/facebook/login/widget/ProfilePictureView$OnErrorListener;

    .line 249
    return-void
.end method

.method public final setPresetSize(I)V
    .registers 4
    .param p1, "sizeType"    # I

    .prologue
    .line 169
    packed-switch p1, :pswitch_data_12

    .line 178
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Must use a predefined preset size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 174
    :pswitch_c
    iput p1, p0, Lcom/facebook/login/widget/ProfilePictureView;->presetSizeType:I

    .line 181
    invoke-virtual {p0}, Lcom/facebook/login/widget/ProfilePictureView;->requestLayout()V

    .line 182
    return-void

    .line 169
    :pswitch_data_12
    .packed-switch -0x4
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
    .end packed-switch
.end method

.method public final setProfileId(Ljava/lang/String;)V
    .registers 4
    .param p1, "profileId"    # Ljava/lang/String;

    .prologue
    .line 221
    const/4 v0, 0x0

    .line 222
    .local v0, "force":Z
    iget-object v1, p0, Lcom/facebook/login/widget/ProfilePictureView;->profileId:Ljava/lang/String;

    invoke-static {v1}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_11

    iget-object v1, p0, Lcom/facebook/login/widget/ProfilePictureView;->profileId:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 224
    :cond_11
    invoke-direct {p0}, Lcom/facebook/login/widget/ProfilePictureView;->setBlankProfilePicture()V

    .line 225
    const/4 v0, 0x1

    .line 228
    :cond_15
    iput-object p1, p0, Lcom/facebook/login/widget/ProfilePictureView;->profileId:Ljava/lang/String;

    .line 229
    invoke-direct {p0, v0}, Lcom/facebook/login/widget/ProfilePictureView;->refreshImage(Z)V

    .line 230
    return-void
.end method
