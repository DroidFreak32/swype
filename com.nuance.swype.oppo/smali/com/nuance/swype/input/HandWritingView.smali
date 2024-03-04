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
.field public mInSelectionAreaListener:Lcom/nuance/swype/input/HandWritingView$InSelectionAreaListener;

.field public mOnWritingActionListener:Lcom/nuance/swype/input/HandWritingView$OnWritingAction;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/nuance/swype/input/HandWritingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "def"    # I

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    return-void
.end method


# virtual methods
.method public getInSelectionAreaListener()Lcom/nuance/swype/input/HandWritingView$InSelectionAreaListener;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/nuance/swype/input/HandWritingView;->mInSelectionAreaListener:Lcom/nuance/swype/input/HandWritingView$InSelectionAreaListener;

    return-object v0
.end method

.method public getOnWritingActionListener()Lcom/nuance/swype/input/HandWritingView$OnWritingAction;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/nuance/swype/input/HandWritingView;->mOnWritingActionListener:Lcom/nuance/swype/input/HandWritingView$OnWritingAction;

    return-object v0
.end method

.method public onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 60
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 61
    .local v0, "h":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 63
    .local v1, "w":I
    invoke-virtual {p0, v1, v0}, Lcom/nuance/swype/input/HandWritingView;->setMeasuredDimension(II)V

    .line 64
    return-void
.end method

.method public setOnWritingActionListener(Lcom/nuance/swype/input/HandWritingView$OnWritingAction;)V
    .locals 0
    .param p1, "listener"    # Lcom/nuance/swype/input/HandWritingView$OnWritingAction;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/nuance/swype/input/HandWritingView;->mOnWritingActionListener:Lcom/nuance/swype/input/HandWritingView$OnWritingAction;

    .line 51
    return-void
.end method

.method public setSelectionAreaListener(Lcom/nuance/swype/input/HandWritingView$InSelectionAreaListener;)V
    .locals 0
    .param p1, "condition"    # Lcom/nuance/swype/input/HandWritingView$InSelectionAreaListener;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/nuance/swype/input/HandWritingView;->mInSelectionAreaListener:Lcom/nuance/swype/input/HandWritingView$InSelectionAreaListener;

    .line 43
    return-void
.end method
