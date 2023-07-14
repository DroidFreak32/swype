.class public abstract Lcom/nuance/swype/input/AbstractHandWritingContainer;
.super Landroid/widget/LinearLayout;
.source "AbstractHandWritingContainer.java"

# interfaces
.implements Lcom/nuance/swype/input/view/InputLayout$DragListener;


# static fields
.field public static final log:Lcom/nuance/swype/util/LogManager$Log;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-string/jumbo v0, "AbstractHandWritingContainer"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/AbstractHandWritingContainer;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/nuance/swype/input/AbstractHandWritingContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    return-void
.end method


# virtual methods
.method public abstract getExactHeight(I)I
.end method

.method public abstract getExactWidth(I)I
.end method

.method public abstract getInputView()Lcom/nuance/swype/input/InputView;
.end method

.method public abstract initViews()V
.end method

.method public onBeginDrag()V
    .locals 1

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/nuance/swype/input/AbstractHandWritingContainer;->getInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputView;->onBeginDrag()V

    .line 54
    return-void
.end method

.method public onDrag(II)V
    .locals 1
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/nuance/swype/input/AbstractHandWritingContainer;->getInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/nuance/swype/input/InputView;->onDrag(II)V

    .line 59
    return-void
.end method

.method public onEndDrag()V
    .locals 1

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/nuance/swype/input/AbstractHandWritingContainer;->getInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputView;->onEndDrag()V

    .line 64
    return-void
.end method

.method public onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 27
    invoke-virtual {p0, p1, p2}, Lcom/nuance/swype/input/AbstractHandWritingContainer;->measureChildren(II)V

    .line 28
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/AbstractHandWritingContainer;->getExactWidth(I)I

    move-result v0

    invoke-virtual {p0, p2}, Lcom/nuance/swype/input/AbstractHandWritingContainer;->getExactHeight(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/input/AbstractHandWritingContainer;->setMeasuredDimension(II)V

    .line 29
    return-void
.end method

.method public onSnapToEdge(II)V
    .locals 1
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/nuance/swype/input/AbstractHandWritingContainer;->getInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/nuance/swype/input/InputView;->onSnapToEdge(II)V

    .line 69
    return-void
.end method

.method public updateHandwritingAreaSize(Landroid/view/View;I)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "defaultHandwritingHeight"    # I

    .prologue
    const/4 v4, 0x1

    .line 32
    invoke-virtual {p0}, Lcom/nuance/swype/input/AbstractHandWritingContainer;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/IMEApplication;->getUserPreferences()Lcom/nuance/swype/input/UserPreferences;

    move-result-object v2

    .line 34
    .local v2, "userPrefs":Lcom/nuance/swype/input/UserPreferences;
    invoke-virtual {p0}, Lcom/nuance/swype/input/AbstractHandWritingContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v4, :cond_1

    .line 35
    invoke-virtual {v2}, Lcom/nuance/swype/input/UserPreferences;->getKeyboardScalePortrait()F

    move-result v0

    .line 40
    .local v0, "keyboardScale":F
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 41
    .local v1, "lp":Landroid/widget/LinearLayout$LayoutParams;
    if-gtz p2, :cond_0

    .line 42
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget p2, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 45
    :cond_0
    int-to-float v3, p2

    mul-float/2addr v3, v0

    float-to-int v3, v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 46
    sget-object v3, Lcom/nuance/swype/input/AbstractHandWritingContainer;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "updateHandwritingAreaSize(): using: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-interface {v3, v4}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 48
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 49
    return-void

    .line 37
    .end local v0    # "keyboardScale":F
    .end local v1    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    invoke-virtual {v2}, Lcom/nuance/swype/input/UserPreferences;->getKeyboardScaleLandscape()F

    move-result v0

    .restart local v0    # "keyboardScale":F
    goto :goto_0
.end method
