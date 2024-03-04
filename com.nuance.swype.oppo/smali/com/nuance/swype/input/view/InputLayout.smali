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

.field private contentBackground:Landroid/graphics/drawable/Drawable;

.field private dragFrame:Lcom/nuance/swype/input/view/DragFrame;

.field final enableShadow:Z

.field private gripPad:Lcom/nuance/swype/input/view/GripPad;

.field private inputView:Landroid/view/View;

.field private inputViewParentFrame:Landroid/widget/FrameLayout;

.field private topShadow:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-string v0, "InputLayout"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/view/InputLayout;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 69
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 70
    invoke-virtual {p0}, Lcom/nuance/swype/input/view/InputLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$bool;->show_top_shadow:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nuance/swype/input/view/InputLayout;->enableShadow:Z

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 75
    invoke-virtual {p0}, Lcom/nuance/swype/input/view/InputLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$bool;->show_top_shadow:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nuance/swype/input/view/InputLayout;->enableShadow:Z

    .line 76
    return-void
.end method

.method public static create(Landroid/content/Context;Z)Lcom/nuance/swype/input/view/InputLayout;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "useWings"    # Z

    .prologue
    .line 63
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 64
    .local v0, "inflater":Landroid/view/LayoutInflater;
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/nuance/swype/input/IMEApplication;->getThemedLayoutInflater(Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 65
    if-eqz p1, :cond_0

    sget v1, Lcom/nuance/swype/input/R$layout;->input_layout_wings:I

    :goto_0
    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/view/InputLayout;

    return-object v1

    :cond_0
    sget v1, Lcom/nuance/swype/input/R$layout;->input_layout:I

    goto :goto_0
.end method

.method private static getLayoutHeight(Landroid/view/View;)I
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 224
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

.method private isInputViewInLayout()Z
    .locals 2

    .prologue
    .line 273
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

.method private newFrameLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .locals 3

    .prologue
    .line 190
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method private notifyBeginDrag(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 127
    instance-of v0, p1, Lcom/nuance/swype/input/view/InputLayout$DragListener;

    if-eqz v0, :cond_0

    .line 128
    check-cast p1, Lcom/nuance/swype/input/view/InputLayout$DragListener;

    .end local p1    # "view":Landroid/view/View;
    invoke-interface {p1}, Lcom/nuance/swype/input/view/InputLayout$DragListener;->onBeginDrag()V

    .line 130
    :cond_0
    return-void
.end method

.method private notifyDrag(Landroid/view/View;II)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "dx"    # I
    .param p3, "dy"    # I

    .prologue
    .line 133
    instance-of v0, p1, Lcom/nuance/swype/input/view/InputLayout$DragListener;

    if-eqz v0, :cond_0

    .line 134
    check-cast p1, Lcom/nuance/swype/input/view/InputLayout$DragListener;

    .end local p1    # "view":Landroid/view/View;
    invoke-interface {p1, p2, p3}, Lcom/nuance/swype/input/view/InputLayout$DragListener;->onDrag(II)V

    .line 136
    :cond_0
    return-void
.end method

.method private notifyEndDrag(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 139
    instance-of v0, p1, Lcom/nuance/swype/input/view/InputLayout$DragListener;

    if-eqz v0, :cond_0

    .line 140
    check-cast p1, Lcom/nuance/swype/input/view/InputLayout$DragListener;

    .end local p1    # "view":Landroid/view/View;
    invoke-interface {p1}, Lcom/nuance/swype/input/view/InputLayout$DragListener;->onEndDrag()V

    .line 142
    :cond_0
    return-void
.end method

.method private notifySnapToEdge(Landroid/view/View;II)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "dx"    # I
    .param p3, "dy"    # I

    .prologue
    .line 145
    instance-of v0, p1, Lcom/nuance/swype/input/view/InputLayout$DragListener;

    if-eqz v0, :cond_0

    .line 146
    check-cast p1, Lcom/nuance/swype/input/view/InputLayout$DragListener;

    .end local p1    # "view":Landroid/view/View;
    invoke-interface {p1, p2, p3}, Lcom/nuance/swype/input/view/InputLayout$DragListener;->onSnapToEdge(II)V

    .line 148
    :cond_0
    return-void
.end method

.method public static setBackAlpha(Landroid/view/View;I)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "val"    # I

    .prologue
    .line 116
    if-eqz p0, :cond_0

    .line 117
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 118
    .local v0, "bg":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 119
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 122
    .end local v0    # "bg":Landroid/graphics/drawable/Drawable;
    :cond_0
    return-void
.end method


# virtual methods
.method public candidatesView()Landroid/view/View;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputLayout;->candidatesView:Landroid/view/View;

    return-object v0
.end method

.method public getGripHeight()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 285
    iget-object v1, p0, Lcom/nuance/swype/input/view/InputLayout;->dragFrame:Lcom/nuance/swype/input/view/DragFrame;

    if-nez v1, :cond_1

    .line 291
    :cond_0
    :goto_0
    return v0

    .line 288
    :cond_1
    iget-object v1, p0, Lcom/nuance/swype/input/view/InputLayout;->gripPad:Lcom/nuance/swype/input/view/GripPad;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nuance/swype/input/view/InputLayout;->gripPad:Lcom/nuance/swype/input/view/GripPad;

    invoke-virtual {v1}, Lcom/nuance/swype/input/view/GripPad;->isShown()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 289
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputLayout;->gripPad:Lcom/nuance/swype/input/view/GripPad;

    invoke-virtual {v0}, Lcom/nuance/swype/input/view/GripPad;->getHeight()I

    move-result v0

    goto :goto_0
.end method

.method public getInputAreaRectRelativeTo(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 5
    .param p1, "root"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 281
    invoke-direct {p0}, Lcom/nuance/swype/input/view/InputLayout;->isInputViewInLayout()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/swype/input/view/InputLayout;->inputView:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/app/ActivityCompatHoneycomb;->getRect(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_0
    if-eq v0, p1, :cond_0

    if-eqz v0, :cond_0

    instance-of v3, v0, Landroid/view/View;

    if-eqz v3, :cond_0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/support/v4/app/ActivityCompatHoneycomb;->moveRectBy(Landroid/graphics/Rect;II)V

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    :cond_0
    if-eq v0, p1, :cond_2

    move-object v0, v1

    :goto_1
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_1

    :cond_2
    move-object v0, v2

    goto :goto_1
.end method

.method public getVisibleAreaInsets()Landroid/graphics/Rect;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 265
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

.method public getVisibleAreaRect()Landroid/graphics/Rect;
    .locals 2

    .prologue
    .line 259
    invoke-static {p0}, Landroid/support/v4/app/ActivityCompatHoneycomb;->getRect(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    .line 260
    .local v0, "rect":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/nuance/swype/input/view/InputLayout;->contentArea:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 261
    return-object v0
.end method

.method public getVisibleTopInWindow([I)V
    .locals 1
    .param p1, "coords"    # [I

    .prologue
    .line 232
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputLayout;->contentArea:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 233
    return-void
.end method

.method public hasInternalDragFrame()Z
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputLayout;->dragFrame:Lcom/nuance/swype/input/view/DragFrame;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public inputView()Landroid/view/View;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputLayout;->inputView:Landroid/view/View;

    return-object v0
.end method

.method public onBeginDrag()V
    .locals 2

    .prologue
    const/16 v1, 0x7f

    .line 153
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputLayout;->contentBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputLayout;->contentBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputLayout;->contentArea:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/nuance/swype/input/view/InputLayout;->setBackAlpha(Landroid/view/View;I)V

    .line 158
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputLayout;->inputView:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/nuance/swype/input/view/InputLayout;->setBackAlpha(Landroid/view/View;I)V

    .line 159
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputLayout;->candidatesView:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/nuance/swype/input/view/InputLayout;->setBackAlpha(Landroid/view/View;I)V

    .line 160
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputLayout;->inputView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/view/InputLayout;->notifyBeginDrag(Landroid/view/View;)V

    .line 161
    return-void
.end method

.method public onDrag(II)V
    .locals 1
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .prologue
    .line 164
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputLayout;->inputView:Landroid/view/View;

    invoke-direct {p0, v0, p1, p2}, Lcom/nuance/swype/input/view/InputLayout;->notifyDrag(Landroid/view/View;II)V

    .line 165
    return-void
.end method

.method public onEndDrag()V
    .locals 2

    .prologue
    const/16 v1, 0xff

    .line 172
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputLayout;->contentBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputLayout;->contentBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputLayout;->contentArea:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/nuance/swype/input/view/InputLayout;->setBackAlpha(Landroid/view/View;I)V

    .line 176
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputLayout;->inputView:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/nuance/swype/input/view/InputLayout;->setBackAlpha(Landroid/view/View;I)V

    .line 177
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputLayout;->candidatesView:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/nuance/swype/input/view/InputLayout;->setBackAlpha(Landroid/view/View;I)V

    .line 178
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputLayout;->inputView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/view/InputLayout;->notifyEndDrag(Landroid/view/View;)V

    .line 179
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 104
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 105
    sget v0, Lcom/nuance/swype/input/R$id;->candidateview_container:I

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/view/InputLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/nuance/swype/input/view/InputLayout;->candidatesParentFrame:Landroid/widget/FrameLayout;

    .line 106
    sget v0, Lcom/nuance/swype/input/R$id;->inputview_container:I

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/view/InputLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/nuance/swype/input/view/InputLayout;->inputViewParentFrame:Landroid/widget/FrameLayout;

    .line 107
    sget v0, Lcom/nuance/swype/input/R$id;->top_shadow_view:I

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/view/InputLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/view/InputLayout;->topShadow:Landroid/view/View;

    .line 108
    sget v0, Lcom/nuance/swype/input/R$id;->content_area:I

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/view/InputLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/view/InputLayout;->contentArea:Landroid/view/View;

    .line 109
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputLayout;->contentArea:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/view/InputLayout;->contentBackground:Landroid/graphics/drawable/Drawable;

    .line 110
    sget v0, Lcom/nuance/swype/input/R$id;->drag_frame:I

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/view/InputLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/view/DragFrame;

    iput-object v0, p0, Lcom/nuance/swype/input/view/InputLayout;->dragFrame:Lcom/nuance/swype/input/view/DragFrame;

    .line 111
    sget v0, Lcom/nuance/swype/input/R$id;->grip_pad:I

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/view/InputLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/view/GripPad;

    iput-object v0, p0, Lcom/nuance/swype/input/view/InputLayout;->gripPad:Lcom/nuance/swype/input/view/GripPad;

    .line 112
    iget-boolean v0, p0, Lcom/nuance/swype/input/view/InputLayout;->enableShadow:Z

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/view/InputLayout;->showShadow(Z)V

    .line 113
    return-void
.end method

.method public onSnapToEdge(II)V
    .locals 1
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .prologue
    .line 182
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputLayout;->inputView:Landroid/view/View;

    invoke-direct {p0, v0, p1, p2}, Lcom/nuance/swype/input/view/InputLayout;->notifySnapToEdge(Landroid/view/View;II)V

    .line 183
    return-void
.end method

.method public setCandidatesView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 196
    iput-object p1, p0, Lcom/nuance/swype/input/view/InputLayout;->candidatesView:Landroid/view/View;

    .line 197
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputLayout;->candidatesParentFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 198
    if-eqz p1, :cond_0

    .line 199
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputLayout;->candidatesParentFrame:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Lcom/nuance/swype/input/view/InputLayout;->newFrameLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 200
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputLayout;->inputViewParentFrame:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 204
    :goto_0
    return-void

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputLayout;->candidatesParentFrame:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public setDragGripIsDrag(ZZ)V
    .locals 1
    .param p1, "isDrag"    # Z
    .param p2, "enable"    # Z

    .prologue
    .line 90
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputLayout;->dragFrame:Lcom/nuance/swype/input/view/DragFrame;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/view/InputLayout;->dragFrame:Lcom/nuance/swype/input/view/DragFrame;

    instance-of v0, v0, Lcom/nuance/swype/input/view/DragFrameGripPad;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputLayout;->dragFrame:Lcom/nuance/swype/input/view/DragFrame;

    check-cast v0, Lcom/nuance/swype/input/view/DragFrameGripPad;

    invoke-virtual {v0, p1, p2}, Lcom/nuance/swype/input/view/DragFrameGripPad;->setGripIsDrag(ZZ)V

    .line 93
    :cond_0
    return-void
.end method

.method public setDragListener(Lcom/nuance/swype/input/view/DragFrame$DragFrameListener;)V
    .locals 2
    .param p1, "dragListener"    # Lcom/nuance/swype/input/view/DragFrame$DragFrameListener;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputLayout;->dragFrame:Lcom/nuance/swype/input/view/DragFrame;

    if-nez v0, :cond_0

    .line 97
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Layout has no internal drag frame"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputLayout;->dragFrame:Lcom/nuance/swype/input/view/DragFrame;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/view/DragFrame;->setDragListener(Lcom/nuance/swype/input/view/DragFrame$DragFrameListener;)V

    .line 100
    return-void
.end method

.method public setInputView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 240
    iput-object p1, p0, Lcom/nuance/swype/input/view/InputLayout;->inputView:Landroid/view/View;

    .line 241
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputLayout;->inputViewParentFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 242
    if-eqz p1, :cond_0

    .line 243
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputLayout;->inputViewParentFrame:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Lcom/nuance/swype/input/view/InputLayout;->newFrameLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 244
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputLayout;->inputViewParentFrame:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 248
    :goto_0
    return-void

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputLayout;->inputViewParentFrame:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public showCandidates(Z)V
    .locals 2
    .param p1, "shown"    # Z

    .prologue
    .line 211
    iget-object v1, p0, Lcom/nuance/swype/input/view/InputLayout;->candidatesParentFrame:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 212
    return-void

    .line 211
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public showDragFrame(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 83
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputLayout;->dragFrame:Lcom/nuance/swype/input/view/DragFrame;

    if-nez v0, :cond_0

    .line 84
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Layout has no internal drag frame"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/view/InputLayout;->dragFrame:Lcom/nuance/swype/input/view/DragFrame;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/view/DragFrame;->showDecoration(Z)V

    .line 87
    return-void
.end method

.method public showInput(Z)V
    .locals 2
    .param p1, "shown"    # Z

    .prologue
    .line 215
    iget-object v1, p0, Lcom/nuance/swype/input/view/InputLayout;->inputViewParentFrame:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 216
    return-void

    .line 215
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public showShadow(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 220
    iget-object v1, p0, Lcom/nuance/swype/input/view/InputLayout;->topShadow:Landroid/view/View;

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/nuance/swype/input/view/InputLayout;->enableShadow:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 221
    return-void

    .line 220
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method
