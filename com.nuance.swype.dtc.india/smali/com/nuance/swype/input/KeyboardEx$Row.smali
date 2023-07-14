.class public Lcom/nuance/swype/input/KeyboardEx$Row;
.super Ljava/lang/Object;
.source "KeyboardEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/KeyboardEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Row"
.end annotation


# instance fields
.field private iBot:I

.field private iLeft:I

.field private iRight:I

.field private iTop:I

.field mKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swype/input/KeyboardEx$Key;",
            ">;"
        }
    .end annotation
.end field

.field final parent:Lcom/nuance/swype/input/KeyboardEx;

.field public rowBackground:Landroid/graphics/drawable/Drawable;

.field public rowEdgeFlags:I

.field public rowType:I

.field public verticalGap:I

.field visibleKeyCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/nuance/swype/input/KeyboardEx;Landroid/content/res/XmlResourceParser;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "p"    # Lcom/nuance/swype/input/KeyboardEx;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;

    .prologue
    const/4 v4, 0x0

    .line 619
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 620
    iput-object p2, p0, Lcom/nuance/swype/input/KeyboardEx$Row;->parent:Lcom/nuance/swype/input/KeyboardEx;

    .line 622
    iput v4, p0, Lcom/nuance/swype/input/KeyboardEx$Row;->verticalGap:I

    .line 624
    invoke-static {}, Lcom/nuance/swype/plugin/ThemeLoader;->getInstance()Lcom/nuance/swype/plugin/ThemeLoader;

    move-result-object v0

    sget-object v3, Lcom/nuance/swype/input/R$styleable;->KeyboardEx_Row:[I

    const/4 v7, 0x0

    move-object v1, p1

    move-object v2, p3

    move v5, v4

    move v6, v4

    invoke-virtual/range {v0 .. v7}, Lcom/nuance/swype/plugin/ThemeLoader;->obtainStyledAttributes$6d3b0587(Landroid/content/Context;Landroid/util/AttributeSet;[IIIILjava/lang/String;)Lcom/nuance/swype/plugin/TypedArrayWrapper;

    move-result-object v8

    .line 626
    .local v8, "a":Lcom/nuance/swype/plugin/TypedArrayWrapper;
    sget v0, Lcom/nuance/swype/input/R$styleable;->KeyboardEx_Row_rowEdgeFlags:I

    invoke-virtual {v8, v0, v4}, Lcom/nuance/swype/plugin/TypedArrayWrapper;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/nuance/swype/input/KeyboardEx$Row;->rowEdgeFlags:I

    .line 627
    sget v0, Lcom/nuance/swype/input/R$styleable;->KeyboardEx_Row_rowBackground:I

    invoke-virtual {v8, v0}, Lcom/nuance/swype/plugin/TypedArrayWrapper;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/KeyboardEx$Row;->rowBackground:Landroid/graphics/drawable/Drawable;

    .line 628
    sget v0, Lcom/nuance/swype/input/R$styleable;->KeyboardEx_Row_rowType:I

    invoke-virtual {v8, v0, v4}, Lcom/nuance/swype/plugin/TypedArrayWrapper;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/nuance/swype/input/KeyboardEx$Row;->rowType:I

    .line 629
    invoke-virtual {v8}, Lcom/nuance/swype/plugin/TypedArrayWrapper;->recycle()V

    .line 630
    return-void
.end method

.method constructor <init>(Lcom/nuance/swype/input/KeyboardEx$Row;)V
    .locals 1
    .param p1, "row"    # Lcom/nuance/swype/input/KeyboardEx$Row;

    .prologue
    .line 609
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 610
    iget-object v0, p1, Lcom/nuance/swype/input/KeyboardEx$Row;->parent:Lcom/nuance/swype/input/KeyboardEx;

    iput-object v0, p0, Lcom/nuance/swype/input/KeyboardEx$Row;->parent:Lcom/nuance/swype/input/KeyboardEx;

    .line 611
    iget v0, p1, Lcom/nuance/swype/input/KeyboardEx$Row;->verticalGap:I

    iput v0, p0, Lcom/nuance/swype/input/KeyboardEx$Row;->verticalGap:I

    .line 612
    iget v0, p1, Lcom/nuance/swype/input/KeyboardEx$Row;->rowEdgeFlags:I

    iput v0, p0, Lcom/nuance/swype/input/KeyboardEx$Row;->rowEdgeFlags:I

    .line 613
    return-void
.end method

.method public constructor <init>(Lcom/nuance/swype/input/KeyboardEx;)V
    .locals 0
    .param p1, "p"    # Lcom/nuance/swype/input/KeyboardEx;

    .prologue
    .line 615
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 616
    iput-object p1, p0, Lcom/nuance/swype/input/KeyboardEx$Row;->parent:Lcom/nuance/swype/input/KeyboardEx;

    .line 617
    return-void
.end method


# virtual methods
.method addKey(ILcom/nuance/swype/input/KeyboardEx$Key;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    .line 642
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardEx$Row;->mKeys:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 643
    return-void
.end method

.method addKey(Lcom/nuance/swype/input/KeyboardEx$Key;)V
    .locals 1
    .param p1, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    .line 633
    iput-object p0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->row:Lcom/nuance/swype/input/KeyboardEx$Row;

    .line 634
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardEx$Row;->mKeys:Ljava/util/List;

    if-nez v0, :cond_0

    .line 635
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/KeyboardEx$Row;->mKeys:Ljava/util/List;

    .line 638
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardEx$Row;->mKeys:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 639
    return-void
.end method

.method public calcBounds()V
    .locals 5

    .prologue
    .line 681
    iget-object v3, p0, Lcom/nuance/swype/input/KeyboardEx$Row;->mKeys:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .line 682
    .local v1, "idxLast":I
    if-ltz v1, :cond_0

    .line 683
    iget-object v3, p0, Lcom/nuance/swype/input/KeyboardEx$Row;->mKeys:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/KeyboardEx$Key;

    .line 684
    .local v0, "first":Lcom/nuance/swype/input/KeyboardEx$Key;
    iget-object v3, p0, Lcom/nuance/swype/input/KeyboardEx$Row;->mKeys:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/swype/input/KeyboardEx$Key;

    .line 686
    .local v2, "last":Lcom/nuance/swype/input/KeyboardEx$Key;
    iget v3, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->x:I

    iput v3, p0, Lcom/nuance/swype/input/KeyboardEx$Row;->iLeft:I

    .line 687
    iget v3, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->y:I

    iput v3, p0, Lcom/nuance/swype/input/KeyboardEx$Row;->iTop:I

    .line 688
    iget v3, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->x:I

    iget v4, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->width:I

    add-int/2addr v3, v4

    iput v3, p0, Lcom/nuance/swype/input/KeyboardEx$Row;->iRight:I

    .line 689
    iget v3, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->y:I

    iget v4, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->height:I

    add-int/2addr v3, v4

    iput v3, p0, Lcom/nuance/swype/input/KeyboardEx$Row;->iBot:I

    .line 691
    .end local v0    # "first":Lcom/nuance/swype/input/KeyboardEx$Key;
    .end local v2    # "last":Lcom/nuance/swype/input/KeyboardEx$Key;
    :cond_0
    return-void
.end method

.method public getBottom()I
    .locals 1

    .prologue
    .line 672
    iget v0, p0, Lcom/nuance/swype/input/KeyboardEx$Row;->iBot:I

    return v0
.end method

.method public getHeight()I
    .locals 2

    .prologue
    .line 676
    iget v0, p0, Lcom/nuance/swype/input/KeyboardEx$Row;->iBot:I

    iget v1, p0, Lcom/nuance/swype/input/KeyboardEx$Row;->iTop:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getLeft()I
    .locals 1

    .prologue
    .line 660
    iget v0, p0, Lcom/nuance/swype/input/KeyboardEx$Row;->iLeft:I

    return v0
.end method

.method public getRight()I
    .locals 1

    .prologue
    .line 664
    iget v0, p0, Lcom/nuance/swype/input/KeyboardEx$Row;->iRight:I

    return v0
.end method

.method public getTop()I
    .locals 1

    .prologue
    .line 668
    iget v0, p0, Lcom/nuance/swype/input/KeyboardEx$Row;->iTop:I

    return v0
.end method

.method public keyCount()I
    .locals 1

    .prologue
    .line 650
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardEx$Row;->mKeys:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardEx$Row;->mKeys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method remove(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 646
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardEx$Row;->mKeys:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 647
    return-void
.end method
