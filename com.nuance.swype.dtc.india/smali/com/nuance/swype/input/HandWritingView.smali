.class public Lcom/nuance/swype/input/HandWritingView;
.super Landroid/view/View;
.source "HandWritingView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/input/HandWritingView$InSelectionAreaListener;,
        Lcom/nuance/swype/input/HandWritingView$OnWritingAction;
    }
.end annotation


# instance fields
.field public mFaddingStrokeQueue:Lcom/nuance/swype/input/FaddingStrokeQueue;

.field public mInSelectionAreaListener:Lcom/nuance/swype/input/HandWritingView$InSelectionAreaListener;

.field public mOnWritingActionListener:Lcom/nuance/swype/input/HandWritingView$OnWritingAction;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/nuance/swype/input/HandWritingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "def"    # I

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    invoke-virtual {p0}, Lcom/nuance/swype/input/HandWritingView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v1

    const-string/jumbo v2, "pen_color"

    const/16 v3, 0x18

    invoke-static {v1, v2, v3, p1}, Lcom/nuance/swype/input/settings/InputPrefs;->getPenColor(Lcom/nuance/swype/input/UserPreferences;Ljava/lang/String;ILandroid/content/Context;)I

    move-result v0

    .line 51
    .local v0, "penColor":I
    new-instance v1, Lcom/nuance/swype/input/FaddingStrokeQueue;

    invoke-direct {v1, p1, v0, p0}, Lcom/nuance/swype/input/FaddingStrokeQueue;-><init>(Landroid/content/Context;ILandroid/view/View;)V

    iput-object v1, p0, Lcom/nuance/swype/input/HandWritingView;->mFaddingStrokeQueue:Lcom/nuance/swype/input/FaddingStrokeQueue;

    .line 52
    return-void
.end method


# virtual methods
.method public getInSelectionAreaListener()Lcom/nuance/swype/input/HandWritingView$InSelectionAreaListener;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/nuance/swype/input/HandWritingView;->mInSelectionAreaListener:Lcom/nuance/swype/input/HandWritingView$InSelectionAreaListener;

    return-object v0
.end method

.method public getOnWritingActionListener()Lcom/nuance/swype/input/HandWritingView$OnWritingAction;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/nuance/swype/input/HandWritingView;->mOnWritingActionListener:Lcom/nuance/swype/input/HandWritingView$OnWritingAction;

    return-object v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 56
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 58
    iget-object v0, p0, Lcom/nuance/swype/input/HandWritingView;->mFaddingStrokeQueue:Lcom/nuance/swype/input/FaddingStrokeQueue;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/FaddingStrokeQueue;->draw(Landroid/graphics/Canvas;)V

    .line 59
    return-void
.end method

.method public onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 90
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 91
    .local v0, "h":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 93
    .local v1, "w":I
    invoke-virtual {p0, v1, v0}, Lcom/nuance/swype/input/HandWritingView;->setMeasuredDimension(II)V

    .line 94
    return-void
.end method

.method public onWindowVisibilityChanged(I)V
    .locals 5
    .param p1, "visibility"    # I

    .prologue
    .line 63
    invoke-super {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    .line 64
    invoke-virtual {p0}, Lcom/nuance/swype/input/HandWritingView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v1

    const-string/jumbo v2, "pen_color"

    const/16 v3, 0x18

    .line 66
    invoke-virtual {p0}, Lcom/nuance/swype/input/HandWritingView;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 64
    invoke-static {v1, v2, v3, v4}, Lcom/nuance/swype/input/settings/InputPrefs;->getPenColor(Lcom/nuance/swype/input/UserPreferences;Ljava/lang/String;ILandroid/content/Context;)I

    move-result v0

    .line 67
    .local v0, "penColor":I
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/nuance/swype/input/HandWritingView;->mFaddingStrokeQueue:Lcom/nuance/swype/input/FaddingStrokeQueue;

    .line 68
    new-instance v1, Lcom/nuance/swype/input/FaddingStrokeQueue;

    invoke-virtual {p0}, Lcom/nuance/swype/input/HandWritingView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0, p0}, Lcom/nuance/swype/input/FaddingStrokeQueue;-><init>(Landroid/content/Context;ILandroid/view/View;)V

    iput-object v1, p0, Lcom/nuance/swype/input/HandWritingView;->mFaddingStrokeQueue:Lcom/nuance/swype/input/FaddingStrokeQueue;

    .line 69
    return-void
.end method

.method public setOnWritingActionListener(Lcom/nuance/swype/input/HandWritingView$OnWritingAction;)V
    .locals 0
    .param p1, "listener"    # Lcom/nuance/swype/input/HandWritingView$OnWritingAction;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/nuance/swype/input/HandWritingView;->mOnWritingActionListener:Lcom/nuance/swype/input/HandWritingView$OnWritingAction;

    .line 81
    return-void
.end method

.method public setSelectionAreaListener(Lcom/nuance/swype/input/HandWritingView$InSelectionAreaListener;)V
    .locals 0
    .param p1, "condition"    # Lcom/nuance/swype/input/HandWritingView$InSelectionAreaListener;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/nuance/swype/input/HandWritingView;->mInSelectionAreaListener:Lcom/nuance/swype/input/HandWritingView$InSelectionAreaListener;

    .line 73
    return-void
.end method
