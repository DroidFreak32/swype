.class public Lcom/nuance/swype/input/view/InputLayout;
.super Landroid/widget/LinearLayout;
.source "InputLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/input/view/InputLayout$DragListener;
    }
.end annotation


# static fields
.field public static final dragStateAlpha:I = 0x7f

.field protected static final log:Lcom/nuance/swype/util/LogManager$Log;

.field public static final normalAlpha:I = 0xff


# instance fields
.field private candidatesParentFrame:Landroid/widget/FrameLayout;

.field private candidatesView:Landroid/view/View;

.field private contentArea:Landroid/view/View;

.field private coverParentFrame:Landroid/widget/FrameLayout;

.field private coverView:Landroid/view/View;

.field private dragFrame:Lcom/nuance/swype/input/view/DragFrame;

.field private dragHelper:Lcom/nuance/swype/input/view/DragHelper;

.field final enableShadow:Z

.field private inputView:Landroid/view/View;

.field private inputViewParentFrame:Landroid/widget/FrameLayout;

.field private isTemporaryLayerSet:Z

.field private isUsingDragPaintOnInputLayout:Z

.field private mainArea:Lcom/nuance/swype/input/view/InputLayoutMain;

.field private posTemp:[I

.field private topShadow:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-string/jumbo v0, "InputLayout"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/view/InputLayout;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 90
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/nuance/swype/input/view/InputLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 91
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 94
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 234
    new-instance v0, Lcom/nuance/swype/input/view/DragHelper;

    invoke-direct {v0}, Lcom/nuance/swype/input/view/DragHelper;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/view/InputLayout;->dragHelper:Lcom/nuance/swype/input/view/DragHelper;

    .line 277
    invoke-static {}, Lcom/nuance/android/compat/ViewCompat;->supportsSetLayerPaint()Z

    move-result v0

    iput-boolean v0, p0, Lcom/nuance/swype/input/view/InputLayout;->isUsingDragPaintOnInputLayout:Z

    .line 359
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/nuance/swype/input/view/InputLayout;->posTemp:[I

    .line 95
    invoke-virtual {p0}, Lcom/nuance/swype/input/view/InputLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$bool;->show_top_shadow:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nuance/swype/input/view/InputLayout;->enableShadow:Z

    .line 97
    return-void
.end method

.method public static create(Landroid/content/Context;Z)Lcom/nuance/swype/input/view/InputLayout;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "useWings"    # Z

    .prologue
    .line 80
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 81
    .local v1, "inflater":Landroid/view/LayoutInflater;
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    .line 82
    .local v0, "app":Lcom/nuance/swype/input/IMEApplication;
    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/IMEApplication;->getThemedLayoutInflater(Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 83
    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getThemeLoader()Lcom/nuance/swype/plugin/ThemeLoader;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/nuance/swype/plugin/ThemeLoader;->setLayoutInflaterFactory(Landroid/view/LayoutInflater;)V

    .line 84
    if-eqz p1, :cond_0

    sget v3, Lcom/nuance/swype/input/R$layout;->input_layout_wings:I

    :goto_0
    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/nuance/swype/input/view/InputLayout;

    .line 85
    .local v2, "input":Lcom/nuance/swype/input/view/InputLayout;
    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getThemeLoader()Lcom/nuance/swype/plugin/ThemeLoader;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/nuance/swype/plugin/ThemeLoader;->applyTheme(Landroid/view/View;)V

    .line 86
    return-object v2

    .line 84
    .end local v2    # "input":Lcom/nuance/swype/input/view/InputLayout;
    :cond_0
    sget v3, Lcom/nuance/swype/input/R$layout;->input_layout:I

    goto :goto_0
.end method

.method private static getLayoutHeight(Landroid/view/View;)I
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 355
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static hideFrame(Landroid/view/ViewGroup;Lcom/nuance/swype/view/ShowHideAnimManager;Z)V
    .locals 1
    .param p0, "frame"    # Landroid/view/ViewGroup;
    .param p1, "animManager"    # Lcom/nuance/swype/view/ShowHideAnimManager;
    .param p2, "enableAnim"    # Z

    .prologue
    .line 183
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 184
    if-eqz p1, :cond_1

    .line 185
    if-nez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, p0, v0}, Lcom/nuance/swype/view/ShowHideAnimManager;->hide(Landroid/view/View;Z)V

    .line 189
    :goto_1
    return-void

    .line 185
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 187
    :cond_1
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1
.end method

.method private isInputViewInLayout()Z
    .locals 2

    .prologue
    .line 426
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputLayout;->inputView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/view/InputLayout;->inputView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static loadAnim(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/animation/Animator;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attr"    # Landroid/content/res/TypedArray;
    .param p2, "idx"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 131
    const/4 v1, 0x0

    .line 132
    .local v1, "out":Landroid/animation/Animator;
    const/4 v2, 0x0

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 133
    .local v0, "id":I
    if-lez v0, :cond_0

    .line 134
    invoke-static {p0, v0}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v1

    .line 136
    :cond_0
    return-object v1
.end method

.method private varargs notifyBeginDrag([Ljava/lang/Object;)V
    .locals 4
    .param p1, "objs"    # [Ljava/lang/Object;

    .prologue
    .line 201
    array-length v3, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, p1, v2

    .line 202
    .local v0, "obj":Ljava/lang/Object;
    instance-of v1, v0, Lcom/nuance/swype/input/view/InputLayout$DragListener;

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 203
    check-cast v1, Lcom/nuance/swype/input/view/InputLayout$DragListener;

    invoke-interface {v1}, Lcom/nuance/swype/input/view/InputLayout$DragListener;->onBeginDrag()V

    .line 205
    :cond_0
    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lcom/nuance/swype/input/view/InputLayout;->notifyDragVisualizer(ZLjava/lang/Object;)V

    .line 201
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 207
    .end local v0    # "obj":Ljava/lang/Object;
    :cond_1
    return-void
.end method

.method private varargs notifyDrag(II[Ljava/lang/Object;)V
    .locals 4
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "objs"    # [Ljava/lang/Object;

    .prologue
    .line 210
    array-length v2, p3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v0, p3, v1

    .line 211
    .local v0, "obj":Ljava/lang/Object;
    instance-of v3, v0, Lcom/nuance/swype/input/view/InputLayout$DragListener;

    if-eqz v3, :cond_0

    .line 212
    check-cast v0, Lcom/nuance/swype/input/view/InputLayout$DragListener;

    .end local v0    # "obj":Ljava/lang/Object;
    invoke-interface {v0, p1, p2}, Lcom/nuance/swype/input/view/InputLayout$DragListener;->onDrag(II)V

    .line 210
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 215
    :cond_1
    return-void
.end method

.method private notifyDragVisualizer(ZLjava/lang/Object;)V
    .locals 1
    .param p1, "set"    # Z
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 192
    iget-boolean v0, p0, Lcom/nuance/swype/input/view/InputLayout;->isUsingDragPaintOnInputLayout:Z

    if-nez v0, :cond_0

    .line 194
    instance-of v0, p2, Lcom/nuance/swype/input/view/DragHelper$DragVisualizer;

    if-eqz v0, :cond_0

    .line 195
    check-cast p2, Lcom/nuance/swype/input/view/DragHelper$DragVisualizer;

    .end local p2    # "obj":Ljava/lang/Object;
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/nuance/swype/input/view/InputLayout;->dragHelper:Lcom/nuance/swype/input/view/DragHelper;

    :goto_0
    invoke-interface {p2, v0}, Lcom/nuance/swype/input/view/DragHelper$DragVisualizer;->setDragHelper(Lcom/nuance/swype/input/view/DragHelper;)V

    .line 198
    :cond_0
    return-void

    .line 195
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private varargs notifyEndDrag([Ljava/lang/Object;)V
    .locals 5
    .param p1, "objs"    # [Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 218
    array-length v4, p1

    move v2, v3

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v0, p1, v2

    .line 219
    .local v0, "obj":Ljava/lang/Object;
    instance-of v1, v0, Lcom/nuance/swype/input/view/InputLayout$DragListener;

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 220
    check-cast v1, Lcom/nuance/swype/input/view/InputLayout$DragListener;

    invoke-interface {v1}, Lcom/nuance/swype/input/view/InputLayout$DragListener;->onEndDrag()V

    .line 222
    :cond_0
    invoke-direct {p0, v3, v0}, Lcom/nuance/swype/input/view/InputLayout;->notifyDragVisualizer(ZLjava/lang/Object;)V

    .line 218
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 224
    .end local v0    # "obj":Ljava/lang/Object;
    :cond_1
    return-void
.end method

.method private varargs notifySnapToEdge(II[Ljava/lang/Object;)V
    .locals 4
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "objs"    # [Ljava/lang/Object;

    .prologue
    .line 227
    array-length v2, p3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v0, p3, v1

    .line 228
    .local v0, "obj":Ljava/lang/Object;
    instance-of v3, v0, Lcom/nuance/swype/input/view/InputLayout$DragListener;

    if-eqz v3, :cond_0

    .line 229
    check-cast v0, Lcom/nuance/swype/input/view/InputLayout$DragListener;

    .end local v0    # "obj":Ljava/lang/Object;
    invoke-interface {v0, p1, p2}, Lcom/nuance/swype/input/view/InputLayout$DragListener;->onSnapToEdge(II)V

    .line 227
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 232
    :cond_1
    return-void
.end method

.method public static setBackAlpha(Landroid/view/View;I)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "val"    # I

    .prologue
    .line 447
    if-eqz p0, :cond_0

    .line 448
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 449
    .local v0, "bg":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 450
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 453
    .end local v0    # "bg":Landroid/graphics/drawable/Drawable;
    :cond_0
    return-void
.end method

.method private static showFrame(Landroid/view/ViewGroup;Lcom/nuance/swype/view/ShowHideAnimManager;Z)V
    .locals 1
    .param p0, "frame"    # Landroid/view/ViewGroup;
    .param p1, "animManager"    # Lcom/nuance/swype/view/ShowHideAnimManager;
    .param p2, "enableAnim"    # Z

    .prologue
    const/4 v0, 0x0

    .line 176
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 177
    if-eqz p1, :cond_1

    .line 178
    if-nez p2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p1, p0, v0}, Lcom/nuance/swype/view/ShowHideAnimManager;->show(Landroid/view/View;Z)V

    .line 180
    :cond_1
    return-void
.end method

.method private static showView(Landroid/view/ViewGroup;Landroid/view/View;IILcom/nuance/swype/view/ShowHideAnimManager;Z)V
    .locals 1
    .param p0, "frame"    # Landroid/view/ViewGroup;
    .param p1, "view"    # Landroid/view/View;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "animManager"    # Lcom/nuance/swype/view/ShowHideAnimManager;
    .param p5, "enableAnim"    # Z

    .prologue
    .line 162
    if-eqz p1, :cond_1

    .line 164
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 165
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 166
    invoke-virtual {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 168
    :cond_0
    invoke-static {p0, p4, p5}, Lcom/nuance/swype/input/view/InputLayout;->showFrame(Landroid/view/ViewGroup;Lcom/nuance/swype/view/ShowHideAnimManager;Z)V

    .line 173
    :goto_0
    return-void

    .line 171
    :cond_1
    invoke-static {p0, p4, p5}, Lcom/nuance/swype/input/view/InputLayout;->hideFrame(Landroid/view/ViewGroup;Lcom/nuance/swype/view/ShowHideAnimManager;Z)V

    goto :goto_0
.end method


# virtual methods
.method public varargs clearDragVisualState([Landroid/view/View;)V
    .locals 4
    .param p1, "views"    # [Landroid/view/View;

    .prologue
    .line 243
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v0, p1, v1

    .line 244
    .local v0, "view":Landroid/view/View;
    iget-object v3, p0, Lcom/nuance/swype/input/view/InputLayout;->dragHelper:Lcom/nuance/swype/input/view/DragHelper;

    invoke-virtual {v3, v0}, Lcom/nuance/swype/input/view/DragHelper;->clearDragVisualState(Landroid/view/View;)V

    .line 243
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 246
    .end local v0    # "view":Landroid/view/View;
    :cond_0
    return-void
.end method

.method public clearDragVisualStateRecursive(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 266
    const/4 v3, 0x1

    new-array v3, v3, [Landroid/view/View;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {p0, v3}, Lcom/nuance/swype/input/view/InputLayout;->clearDragVisualState([Landroid/view/View;)V

    .line 267
    instance-of v3, p1, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    move-object v1, p1

    .line 268
    check-cast v1, Landroid/view/ViewGroup;

    .line 269
    .local v1, "group":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 270
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "idx":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 271
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/nuance/swype/input/view/InputLayout;->clearDragVisualStateRecursive(Landroid/view/View;)V

    .line 270
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 274
    .end local v0    # "count":I
    .end local v1    # "group":Landroid/view/ViewGroup;
    .end local v2    # "idx":I
    :cond_0
    return-void
.end method

.method public getCandidatesView()Landroid/view/View;
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputLayout;->candidatesView:Landroid/view/View;

    return-object v0
.end method

.method public getCoverView()Landroid/view/View;
    .locals 1

    .prologue
    .line 407
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputLayout;->coverView:Landroid/view/View;

    return-object v0
.end method

.method public getInputAreaRectRelativeTo(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 5
    .param p1, "root"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 434
    invoke-direct {p0}, Lcom/nuance/swype/input/view/InputLayout;->isInputViewInLayout()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/swype/input/view/InputLayout;->inputView:Landroid/view/View;

    .line 1033
    invoke-static {v0}, Lcom/nuance/swype/util/GeomUtil;->getRect(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    .line 1034
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1035
    :goto_0
    if-eq v0, p1, :cond_0

    if-eqz v0, :cond_0

    instance-of v3, v0, Landroid/view/View;

    if-eqz v3, :cond_0

    .line 1036
    check-cast v0, Landroid/view/View;

    .line 1037
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/nuance/swype/util/GeomUtil;->moveRectBy(Landroid/graphics/Rect;II)V

    .line 1038
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    .line 1040
    :cond_0
    if-eq v0, p1, :cond_2

    move-object v0, v1

    .line 434
    :goto_1
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_1

    :cond_2
    move-object v0, v2

    goto :goto_1
.end method

.method public getInputView()Landroid/view/View;
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputLayout;->inputView:Landroid/view/View;

    return-object v0
.end method

.method public getVisibleAreaInsets()Landroid/graphics/Rect;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 418
    new-instance v2, Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/nuance/swype/input/view/InputLayout;->topShadow:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/view/InputLayout;->topShadow:Landroid/view/View;

    invoke-static {v0}, Lcom/nuance/swype/input/view/InputLayout;->getLayoutHeight(Landroid/view/View;)I

    move-result v0

    :goto_0
    invoke-direct {v2, v1, v0, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v2

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public getVisiblePosInWindow([I)V
    .locals 1
    .param p1, "pos"    # [I

    .prologue
    .line 371
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputLayout;->contentArea:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 372
    return-void
.end method

.method public getVisibleTopInWindow()I
    .locals 2

    .prologue
    .line 366
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputLayout;->posTemp:[I

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/view/InputLayout;->getVisiblePosInWindow([I)V

    .line 367
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputLayout;->posTemp:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public hasInternalDragFrame()Z
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputLayout;->dragFrame:Lcom/nuance/swype/input/view/DragFrame;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBeginDrag()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 280
    iget-object v1, p0, Lcom/nuance/swype/input/view/InputLayout;->dragHelper:Lcom/nuance/swype/input/view/DragHelper;

    invoke-virtual {v1}, Lcom/nuance/swype/input/view/DragHelper;->onBeginDragVisualState()V

    .line 287
    invoke-static {p0}, Lcom/nuance/android/compat/ViewCompat;->isBackedByLayer(Landroid/view/View;)Z

    move-result v0

    .line 288
    .local v0, "isBackedByLayer":Z
    iget-boolean v1, p0, Lcom/nuance/swype/input/view/InputLayout;->isUsingDragPaintOnInputLayout:Z

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/nuance/swype/input/view/InputLayout;->isTemporaryLayerSet:Z

    .line 289
    iget-boolean v1, p0, Lcom/nuance/swype/input/view/InputLayout;->isTemporaryLayerSet:Z

    if-eqz v1, :cond_0

    .line 290
    sget-object v1, Lcom/nuance/swype/input/view/InputLayout;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v4, v2, [Ljava/lang/Object;

    const-string/jumbo v5, "onBeginDrag(): enabling hw layer on layout"

    aput-object v5, v4, v3

    invoke-interface {v1, v4}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 291
    invoke-static {p0}, Lcom/nuance/android/compat/ViewCompat;->enableHardwareLayer(Landroid/view/View;)V

    .line 292
    invoke-static {p0}, Lcom/nuance/android/compat/ViewCompat;->isBackedByLayer(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 294
    sget-object v1, Lcom/nuance/swype/input/view/InputLayout;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v4, v2, [Ljava/lang/Object;

    const-string/jumbo v5, "onBeginDrag(): no layer!"

    aput-object v5, v4, v3

    invoke-interface {v1, v4}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 295
    iput-boolean v3, p0, Lcom/nuance/swype/input/view/InputLayout;->isUsingDragPaintOnInputLayout:Z

    .line 296
    iput-boolean v3, p0, Lcom/nuance/swype/input/view/InputLayout;->isTemporaryLayerSet:Z

    .line 300
    :cond_0
    iget-boolean v1, p0, Lcom/nuance/swype/input/view/InputLayout;->isUsingDragPaintOnInputLayout:Z

    if-eqz v1, :cond_2

    .line 301
    new-array v1, v2, [Landroid/view/View;

    aput-object p0, v1, v3

    invoke-virtual {p0, v6, v1}, Lcom/nuance/swype/input/view/InputLayout;->setDragVisualState(F[Landroid/view/View;)V

    .line 312
    :goto_1
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/nuance/swype/input/view/InputLayout;->mainArea:Lcom/nuance/swype/input/view/InputLayoutMain;

    aput-object v4, v1, v3

    iget-object v3, p0, Lcom/nuance/swype/input/view/InputLayout;->inputView:Landroid/view/View;

    aput-object v3, v1, v2

    iget-object v2, p0, Lcom/nuance/swype/input/view/InputLayout;->coverView:Landroid/view/View;

    aput-object v2, v1, v7

    invoke-direct {p0, v1}, Lcom/nuance/swype/input/view/InputLayout;->notifyBeginDrag([Ljava/lang/Object;)V

    .line 313
    return-void

    :cond_1
    move v1, v3

    .line 288
    goto :goto_0

    .line 303
    :cond_2
    iget-object v1, p0, Lcom/nuance/swype/input/view/InputLayout;->coverView:Landroid/view/View;

    if-eqz v1, :cond_3

    .line 306
    iget-object v1, p0, Lcom/nuance/swype/input/view/InputLayout;->contentArea:Landroid/view/View;

    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 307
    new-array v1, v7, [Landroid/view/View;

    aput-object p0, v1, v3

    iget-object v4, p0, Lcom/nuance/swype/input/view/InputLayout;->coverView:Landroid/view/View;

    aput-object v4, v1, v2

    invoke-virtual {p0, v6, v1}, Lcom/nuance/swype/input/view/InputLayout;->setDragVisualState(F[Landroid/view/View;)V

    goto :goto_1

    .line 309
    :cond_3
    invoke-virtual {p0, v6, p0}, Lcom/nuance/swype/input/view/InputLayout;->setDragVisualStateRecursive(FLandroid/view/View;)V

    goto :goto_1
.end method

.method public onDrag(II)V
    .locals 3
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .prologue
    .line 316
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/nuance/swype/input/view/InputLayout;->mainArea:Lcom/nuance/swype/input/view/InputLayoutMain;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/nuance/swype/input/view/InputLayout;->inputView:Landroid/view/View;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/nuance/swype/input/view/InputLayout;->coverView:Landroid/view/View;

    aput-object v2, v0, v1

    invoke-direct {p0, p1, p2, v0}, Lcom/nuance/swype/input/view/InputLayout;->notifyDrag(II[Ljava/lang/Object;)V

    .line 317
    return-void
.end method

.method public onEndDrag()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 320
    iget-boolean v0, p0, Lcom/nuance/swype/input/view/InputLayout;->isTemporaryLayerSet:Z

    if-eqz v0, :cond_0

    .line 321
    sget-object v0, Lcom/nuance/swype/input/view/InputLayout;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v1, v4, [Ljava/lang/Object;

    const-string/jumbo v2, "onEndDrag(): removing hw layer on layout"

    aput-object v2, v1, v3

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 322
    invoke-static {p0}, Lcom/nuance/android/compat/ViewCompat;->removeLayer(Landroid/view/View;)V

    .line 323
    iput-boolean v3, p0, Lcom/nuance/swype/input/view/InputLayout;->isTemporaryLayerSet:Z

    .line 325
    :cond_0
    iget-boolean v0, p0, Lcom/nuance/swype/input/view/InputLayout;->isUsingDragPaintOnInputLayout:Z

    if-nez v0, :cond_1

    .line 326
    invoke-virtual {p0, p0}, Lcom/nuance/swype/input/view/InputLayout;->clearDragVisualStateRecursive(Landroid/view/View;)V

    .line 328
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputLayout;->contentArea:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 329
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputLayout;->dragHelper:Lcom/nuance/swype/input/view/DragHelper;

    invoke-virtual {v0}, Lcom/nuance/swype/input/view/DragHelper;->onFinishDragVisualState()V

    .line 330
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/nuance/swype/input/view/InputLayout;->mainArea:Lcom/nuance/swype/input/view/InputLayoutMain;

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/nuance/swype/input/view/InputLayout;->inputView:Landroid/view/View;

    aput-object v1, v0, v4

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/nuance/swype/input/view/InputLayout;->coverView:Landroid/view/View;

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/view/InputLayout;->notifyEndDrag([Ljava/lang/Object;)V

    .line 331
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 141
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 142
    sget v0, Lcom/nuance/swype/input/R$id;->candidateview_container:I

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/view/InputLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/nuance/swype/input/view/InputLayout;->candidatesParentFrame:Landroid/widget/FrameLayout;

    .line 143
    sget v0, Lcom/nuance/swype/input/R$id;->inputview_container:I

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/view/InputLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/nuance/swype/input/view/InputLayout;->inputViewParentFrame:Landroid/widget/FrameLayout;

    .line 144
    sget v0, Lcom/nuance/swype/input/R$id;->top_shadow_view:I

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/view/InputLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/view/InputLayout;->topShadow:Landroid/view/View;

    .line 145
    sget v0, Lcom/nuance/swype/input/R$id;->content_area:I

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/view/InputLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/view/InputLayout;->contentArea:Landroid/view/View;

    .line 146
    sget v0, Lcom/nuance/swype/input/R$id;->main_area:I

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/view/InputLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/view/InputLayoutMain;

    iput-object v0, p0, Lcom/nuance/swype/input/view/InputLayout;->mainArea:Lcom/nuance/swype/input/view/InputLayoutMain;

    .line 147
    sget v0, Lcom/nuance/swype/input/R$id;->coverview_container:I

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/view/InputLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/nuance/swype/input/view/InputLayout;->coverParentFrame:Landroid/widget/FrameLayout;

    .line 149
    sget v0, Lcom/nuance/swype/input/R$id;->drag_frame:I

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/view/InputLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/view/DragFrame;

    iput-object v0, p0, Lcom/nuance/swype/input/view/InputLayout;->dragFrame:Lcom/nuance/swype/input/view/DragFrame;

    .line 150
    iget-boolean v0, p0, Lcom/nuance/swype/input/view/InputLayout;->enableShadow:Z

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/view/InputLayout;->showShadow(Z)V

    .line 151
    return-void
.end method

.method public onSnapToEdge(II)V
    .locals 3
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .prologue
    .line 334
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/nuance/swype/input/view/InputLayout;->inputView:Landroid/view/View;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/nuance/swype/input/view/InputLayout;->coverView:Landroid/view/View;

    aput-object v2, v0, v1

    invoke-direct {p0, p1, p2, v0}, Lcom/nuance/swype/input/view/InputLayout;->notifySnapToEdge(II[Ljava/lang/Object;)V

    .line 335
    return-void
.end method

.method public setCandidatesView(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 380
    iput-object p1, p0, Lcom/nuance/swype/input/view/InputLayout;->candidatesView:Landroid/view/View;

    .line 381
    return-void
.end method

.method public setCoverView(Landroid/view/View;Z)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "enableAnim"    # Z

    .prologue
    const/4 v0, -0x1

    .line 389
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/nuance/swype/input/view/InputLayout;->setCoverView(Landroid/view/View;ZII)V

    .line 390
    return-void
.end method

.method public setCoverView(Landroid/view/View;ZII)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "enableAnim"    # Z
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 397
    iput-object p1, p0, Lcom/nuance/swype/input/view/InputLayout;->coverView:Landroid/view/View;

    .line 398
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputLayout;->coverParentFrame:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/nuance/swype/input/view/InputLayout;->coverView:Landroid/view/View;

    const/4 v4, 0x0

    move v2, p3

    move v3, p4

    move v5, p2

    invoke-static/range {v0 .. v5}, Lcom/nuance/swype/input/view/InputLayout;->showView(Landroid/view/ViewGroup;Landroid/view/View;IILcom/nuance/swype/view/ShowHideAnimManager;Z)V

    .line 400
    return-void
.end method

.method public setDragGripIsDrag(ZZ)V
    .locals 1
    .param p1, "isDrag"    # Z
    .param p2, "enable"    # Z

    .prologue
    .line 116
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputLayout;->dragFrame:Lcom/nuance/swype/input/view/DragFrame;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/view/InputLayout;->dragFrame:Lcom/nuance/swype/input/view/DragFrame;

    instance-of v0, v0, Lcom/nuance/swype/input/view/DragFrameGripPad;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputLayout;->dragFrame:Lcom/nuance/swype/input/view/DragFrame;

    check-cast v0, Lcom/nuance/swype/input/view/DragFrameGripPad;

    invoke-virtual {v0, p1, p2}, Lcom/nuance/swype/input/view/DragFrameGripPad;->setGripIsDrag(ZZ)V

    .line 119
    :cond_0
    return-void
.end method

.method public setDragListener(Lcom/nuance/swype/input/view/DragFrame$DragFrameListener;)V
    .locals 2
    .param p1, "dragListener"    # Lcom/nuance/swype/input/view/DragFrame$DragFrameListener;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputLayout;->dragFrame:Lcom/nuance/swype/input/view/DragFrame;

    if-nez v0, :cond_0

    .line 123
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Layout has no internal drag frame"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputLayout;->dragFrame:Lcom/nuance/swype/input/view/DragFrame;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/view/DragFrame;->setDragListener(Lcom/nuance/swype/input/view/DragFrame$DragFrameListener;)V

    .line 126
    return-void
.end method

.method public varargs setDragVisualState(F[Landroid/view/View;)V
    .locals 4
    .param p1, "alphaScale"    # F
    .param p2, "views"    # [Landroid/view/View;

    .prologue
    .line 237
    array-length v2, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v0, p2, v1

    .line 238
    .local v0, "view":Landroid/view/View;
    iget-object v3, p0, Lcom/nuance/swype/input/view/InputLayout;->dragHelper:Lcom/nuance/swype/input/view/DragHelper;

    invoke-virtual {v3, v0, p1}, Lcom/nuance/swype/input/view/DragHelper;->setDragVisualState(Landroid/view/View;F)V

    .line 237
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 240
    .end local v0    # "view":Landroid/view/View;
    :cond_0
    return-void
.end method

.method public setDragVisualStateRecursive(FLandroid/view/View;)V
    .locals 5
    .param p1, "alphaScale"    # F
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 256
    const/4 v3, 0x1

    new-array v3, v3, [Landroid/view/View;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-virtual {p0, p1, v3}, Lcom/nuance/swype/input/view/InputLayout;->setDragVisualState(F[Landroid/view/View;)V

    .line 257
    instance-of v3, p2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    move-object v1, p2

    .line 258
    check-cast v1, Landroid/view/ViewGroup;

    .line 259
    .local v1, "group":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 260
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "idx":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 261
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, p1, v3}, Lcom/nuance/swype/input/view/InputLayout;->setDragVisualStateRecursive(FLandroid/view/View;)V

    .line 260
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 264
    .end local v0    # "count":I
    .end local v1    # "group":Landroid/view/ViewGroup;
    .end local v2    # "idx":I
    :cond_0
    return-void
.end method

.method public setInputView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 375
    iput-object p1, p0, Lcom/nuance/swype/input/view/InputLayout;->inputView:Landroid/view/View;

    .line 376
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/view/InputLayout;->showInput(Z)V

    .line 377
    return-void
.end method

.method public setShowDividers(I)V
    .locals 0
    .param p1, "showDividers"    # I

    .prologue
    .line 105
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setShowDividers(I)V

    .line 106
    return-void
.end method

.method public showCandidates(Z)V
    .locals 6
    .param p1, "show"    # Z

    .prologue
    const/4 v4, 0x0

    .line 344
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputLayout;->candidatesParentFrame:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/input/view/InputLayout;->candidatesView:Landroid/view/View;

    :goto_0
    const/4 v2, -0x1

    const/4 v3, -0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/nuance/swype/input/view/InputLayout;->showView(Landroid/view/ViewGroup;Landroid/view/View;IILcom/nuance/swype/view/ShowHideAnimManager;Z)V

    .line 347
    return-void

    :cond_0
    move-object v1, v4

    .line 344
    goto :goto_0
.end method

.method public showDragFrame(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 109
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputLayout;->dragFrame:Lcom/nuance/swype/input/view/DragFrame;

    if-nez v0, :cond_0

    .line 110
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Layout has no internal drag frame"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputLayout;->dragFrame:Lcom/nuance/swype/input/view/DragFrame;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/view/DragFrame;->showDecoration(Z)V

    .line 113
    return-void
.end method

.method public showInput(Z)V
    .locals 6
    .param p1, "show"    # Z

    .prologue
    const/4 v4, 0x0

    .line 338
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputLayout;->inputViewParentFrame:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/input/view/InputLayout;->inputView:Landroid/view/View;

    :goto_0
    const/4 v2, -0x1

    const/4 v3, -0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/nuance/swype/input/view/InputLayout;->showView(Landroid/view/ViewGroup;Landroid/view/View;IILcom/nuance/swype/view/ShowHideAnimManager;Z)V

    .line 341
    return-void

    :cond_0
    move-object v1, v4

    .line 338
    goto :goto_0
.end method

.method public showShadow(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 351
    iget-object v1, p0, Lcom/nuance/swype/input/view/InputLayout;->topShadow:Landroid/view/View;

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/nuance/swype/input/view/InputLayout;->enableShadow:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 352
    return-void

    .line 351
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method
