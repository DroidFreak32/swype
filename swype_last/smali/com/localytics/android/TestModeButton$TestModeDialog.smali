.class final Lcom/localytics/android/TestModeButton$TestModeDialog;
.super Landroid/app/Dialog;
.source "TestModeButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/localytics/android/TestModeButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "TestModeDialog"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/localytics/android/TestModeButton$TestModeDialog$Button;
    }
.end annotation


# static fields
.field private static final X_OFFSET:I = 0x0

.field private static final Y_OFFSET:I = 0x55


# instance fields
.field private mAnimIn:Landroid/view/animation/TranslateAnimation;

.field private mAnimOut:Landroid/view/animation/TranslateAnimation;

.field private mDialogLayout:Landroid/widget/RelativeLayout;

.field private mMetrics:Landroid/util/DisplayMetrics;

.field final synthetic this$0:Lcom/localytics/android/TestModeButton;


# direct methods
.method public constructor <init>(Lcom/localytics/android/TestModeButton;Landroid/content/Context;I)V
    .registers 4
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "theme"    # I

    .prologue
    .line 226
    iput-object p1, p0, Lcom/localytics/android/TestModeButton$TestModeDialog;->this$0:Lcom/localytics/android/TestModeButton;

    .line 227
    invoke-direct {p0, p2, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 229
    invoke-direct {p0}, Lcom/localytics/android/TestModeButton$TestModeDialog;->setupViews()V

    .line 230
    invoke-direct {p0}, Lcom/localytics/android/TestModeButton$TestModeDialog;->createAnimations()V

    .line 231
    invoke-direct {p0}, Lcom/localytics/android/TestModeButton$TestModeDialog;->adjustLayout()V

    .line 232
    return-void
.end method

.method static synthetic access$000(Lcom/localytics/android/TestModeButton$TestModeDialog;)Landroid/view/animation/TranslateAnimation;
    .registers 2
    .param p0, "x0"    # Lcom/localytics/android/TestModeButton$TestModeDialog;

    .prologue
    .line 191
    iget-object v0, p0, Lcom/localytics/android/TestModeButton$TestModeDialog;->mAnimOut:Landroid/view/animation/TranslateAnimation;

    return-object v0
.end method

.method static synthetic access$100(Lcom/localytics/android/TestModeButton$TestModeDialog;)Landroid/widget/RelativeLayout;
    .registers 2
    .param p0, "x0"    # Lcom/localytics/android/TestModeButton$TestModeDialog;

    .prologue
    .line 191
    iget-object v0, p0, Lcom/localytics/android/TestModeButton$TestModeDialog;->mDialogLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method private adjustLayout()V
    .registers 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/16 v8, 0x400

    const/16 v7, 0x20

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 296
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v2, p0, Lcom/localytics/android/TestModeButton$TestModeDialog;->mMetrics:Landroid/util/DisplayMetrics;

    .line 297
    iget-object v2, p0, Lcom/localytics/android/TestModeButton$TestModeDialog;->this$0:Lcom/localytics/android/TestModeButton;

    invoke-virtual {v2}, Lcom/localytics/android/TestModeButton;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "window"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 298
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    iget-object v3, p0, Lcom/localytics/android/TestModeButton$TestModeDialog;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v2, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 303
    invoke-virtual {p0}, Lcom/localytics/android/TestModeButton$TestModeDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 304
    .local v1, "window":Landroid/view/Window;
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 305
    const/16 v2, 0x33

    invoke-virtual {v1, v2}, Landroid/view/Window;->setGravity(I)V

    .line 306
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 307
    .local v0, "params":Landroid/view/WindowManager$LayoutParams;
    iget-object v2, p0, Lcom/localytics/android/TestModeButton$TestModeDialog;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v6, v4, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 308
    const/high16 v2, 0x42aa0000    # 85.0f

    iget-object v3, p0, Lcom/localytics/android/TestModeButton$TestModeDialog;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v6, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 309
    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 310
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 311
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 312
    invoke-virtual {v1, v7, v7}, Landroid/view/Window;->setFlags(II)V

    .line 314
    iget-object v2, p0, Lcom/localytics/android/TestModeButton$TestModeDialog;->this$0:Lcom/localytics/android/TestModeButton;

    # getter for: Lcom/localytics/android/TestModeButton;->mEnterAnimatable:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v2}, Lcom/localytics/android/TestModeButton;->access$300(Lcom/localytics/android/TestModeButton;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v2

    if-eqz v2, :cond_6e

    .line 316
    iget-object v2, p0, Lcom/localytics/android/TestModeButton$TestModeDialog;->mDialogLayout:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/localytics/android/TestModeButton$TestModeDialog;->mAnimIn:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 320
    :cond_6e
    invoke-virtual {v1, v8, v8}, Landroid/view/Window;->setFlags(II)V

    .line 321
    return-void
.end method

.method private createAnimations()V
    .registers 10

    .prologue
    .line 271
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x2

    const/high16 v2, -0x40800000    # -1.0f

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lcom/localytics/android/TestModeButton$TestModeDialog;->mAnimIn:Landroid/view/animation/TranslateAnimation;

    .line 272
    iget-object v0, p0, Lcom/localytics/android/TestModeButton$TestModeDialog;->mAnimIn:Landroid/view/animation/TranslateAnimation;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 273
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/high16 v4, -0x40800000    # -1.0f

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lcom/localytics/android/TestModeButton$TestModeDialog;->mAnimOut:Landroid/view/animation/TranslateAnimation;

    .line 274
    iget-object v0, p0, Lcom/localytics/android/TestModeButton$TestModeDialog;->mAnimOut:Landroid/view/animation/TranslateAnimation;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 275
    iget-object v0, p0, Lcom/localytics/android/TestModeButton$TestModeDialog;->mAnimOut:Landroid/view/animation/TranslateAnimation;

    new-instance v1, Lcom/localytics/android/TestModeButton$TestModeDialog$2;

    invoke-direct {v1, p0}, Lcom/localytics/android/TestModeButton$TestModeDialog$2;-><init>(Lcom/localytics/android/TestModeButton$TestModeDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 290
    return-void
.end method

.method private setupViews()V
    .registers 6

    .prologue
    const/4 v4, -0x2

    .line 237
    new-instance v2, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/localytics/android/TestModeButton$TestModeDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/localytics/android/TestModeButton$TestModeDialog;->mDialogLayout:Landroid/widget/RelativeLayout;

    .line 238
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 239
    .local v1, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 240
    iget-object v2, p0, Lcom/localytics/android/TestModeButton$TestModeDialog;->mDialogLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 243
    new-instance v0, Lcom/localytics/android/TestModeButton$TestModeDialog$Button;

    invoke-virtual {p0}, Lcom/localytics/android/TestModeButton$TestModeDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, p0, v2, v3}, Lcom/localytics/android/TestModeButton$TestModeDialog$Button;-><init>(Lcom/localytics/android/TestModeButton$TestModeDialog;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 244
    .local v0, "button":Lcom/localytics/android/TestModeButton$TestModeDialog$Button;
    new-instance v2, Lcom/localytics/android/TestModeButton$TestModeDialog$1;

    invoke-direct {v2, p0}, Lcom/localytics/android/TestModeButton$TestModeDialog$1;-><init>(Lcom/localytics/android/TestModeButton$TestModeDialog;)V

    invoke-virtual {v0, v2}, Lcom/localytics/android/TestModeButton$TestModeDialog$Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 259
    iget-object v2, p0, Lcom/localytics/android/TestModeButton$TestModeDialog;->mDialogLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 261
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/localytics/android/TestModeButton$TestModeDialog;->requestWindowFeature(I)Z

    .line 263
    iget-object v2, p0, Lcom/localytics/android/TestModeButton$TestModeDialog;->mDialogLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v2}, Lcom/localytics/android/TestModeButton$TestModeDialog;->setContentView(Landroid/view/View;)V

    .line 264
    return-void
.end method


# virtual methods
.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 5
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 326
    const/4 v0, 0x4

    if-ne p1, v0, :cond_e

    .line 328
    iget-object v0, p0, Lcom/localytics/android/TestModeButton$TestModeDialog;->mDialogLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/localytics/android/TestModeButton$TestModeDialog;->mAnimOut:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 329
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/localytics/android/Constants;->setTestModeEnabled(Z)V

    .line 331
    :cond_e
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method
