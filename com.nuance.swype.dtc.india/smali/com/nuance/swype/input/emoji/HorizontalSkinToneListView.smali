.class public Lcom/nuance/swype/input/emoji/HorizontalSkinToneListView;
.super Landroid/support/v7/widget/RecyclerView;
.source "HorizontalSkinToneListView.java"


# static fields
.field private static final log:Lcom/nuance/swype/util/LogManager$Log;


# instance fields
.field private desiredHeight:I

.field private desiredWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-string/jumbo v0, "MyRecyclerView"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/emoji/HorizontalSkinToneListView;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 23
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    .line 17
    iput v0, p0, Lcom/nuance/swype/input/emoji/HorizontalSkinToneListView;->desiredWidth:I

    .line 18
    iput v0, p0, Lcom/nuance/swype/input/emoji/HorizontalSkinToneListView;->desiredHeight:I

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 26
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    iput v0, p0, Lcom/nuance/swype/input/emoji/HorizontalSkinToneListView;->desiredWidth:I

    .line 18
    iput v0, p0, Lcom/nuance/swype/input/emoji/HorizontalSkinToneListView;->desiredHeight:I

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, 0x0

    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 17
    iput v0, p0, Lcom/nuance/swype/input/emoji/HorizontalSkinToneListView;->desiredWidth:I

    .line 18
    iput v0, p0, Lcom/nuance/swype/input/emoji/HorizontalSkinToneListView;->desiredHeight:I

    .line 31
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 11
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 35
    sget-object v6, Lcom/nuance/swype/input/emoji/HorizontalSkinToneListView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string/jumbo v9, "onMeasure()"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-string/jumbo v9, " >>>>>>>> called =="

    aput-object v9, v7, v8

    invoke-interface {v6, v7}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 36
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 37
    .local v4, "widthMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 38
    .local v5, "widthSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 39
    .local v1, "heightMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 42
    .local v2, "heightSize":I
    sget-object v6, Lcom/nuance/swype/input/emoji/HorizontalSkinToneListView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string/jumbo v9, "onMeasure()"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, " >>>>>>>> widthMode="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " , widthSize="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " , heightMode="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " , heightSize="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-interface {v6, v7}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 48
    const/high16 v6, 0x40000000    # 2.0f

    if-ne v4, v6, :cond_0

    .line 50
    move v3, v5

    .line 60
    .local v3, "width":I
    :goto_0
    const/high16 v6, 0x40000000    # 2.0f

    if-ne v1, v6, :cond_2

    .line 62
    move v0, v2

    .line 71
    .local v0, "height":I
    :goto_1
    sget-object v6, Lcom/nuance/swype/input/emoji/HorizontalSkinToneListView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string/jumbo v9, "onMeasure()"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, " >>>>>>>> width="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " , height="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-interface {v6, v7}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 73
    invoke-virtual {p0}, Lcom/nuance/swype/input/emoji/HorizontalSkinToneListView;->getPaddingLeft()I

    move-result v6

    add-int/2addr v6, v3

    invoke-virtual {p0}, Lcom/nuance/swype/input/emoji/HorizontalSkinToneListView;->getPaddingRight()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/nuance/swype/input/emoji/HorizontalSkinToneListView;->getPaddingTop()I

    move-result v7

    add-int/2addr v7, v0

    invoke-virtual {p0}, Lcom/nuance/swype/input/emoji/HorizontalSkinToneListView;->getPaddingBottom()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {p0, v6, v7}, Lcom/nuance/swype/input/emoji/HorizontalSkinToneListView;->setMeasuredDimension(II)V

    .line 74
    return-void

    .line 51
    .end local v0    # "height":I
    .end local v3    # "width":I
    :cond_0
    const/high16 v6, -0x80000000

    if-ne v4, v6, :cond_1

    .line 53
    iget v6, p0, Lcom/nuance/swype/input/emoji/HorizontalSkinToneListView;->desiredWidth:I

    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    .restart local v3    # "width":I
    goto :goto_0

    .line 56
    .end local v3    # "width":I
    :cond_1
    iget v3, p0, Lcom/nuance/swype/input/emoji/HorizontalSkinToneListView;->desiredWidth:I

    .restart local v3    # "width":I
    goto :goto_0

    .line 63
    :cond_2
    const/high16 v6, -0x80000000

    if-ne v1, v6, :cond_3

    .line 65
    iget v6, p0, Lcom/nuance/swype/input/emoji/HorizontalSkinToneListView;->desiredHeight:I

    invoke-static {v6, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .restart local v0    # "height":I
    goto :goto_1

    .line 68
    .end local v0    # "height":I
    :cond_3
    iget v0, p0, Lcom/nuance/swype/input/emoji/HorizontalSkinToneListView;->desiredHeight:I

    .restart local v0    # "height":I
    goto :goto_1
.end method
