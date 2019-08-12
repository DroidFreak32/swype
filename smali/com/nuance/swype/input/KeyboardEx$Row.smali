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

.field public rowEdgeFlags:I

.field public verticalGap:I

.field visibleKeyCount:I


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lcom/nuance/swype/input/KeyboardEx;Landroid/content/res/XmlResourceParser;)V
    .locals 3
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "p"    # Lcom/nuance/swype/input/KeyboardEx;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;

    .prologue
    const/4 v2, 0x0

    .line 601
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 602
    iput-object p2, p0, Lcom/nuance/swype/input/KeyboardEx$Row;->parent:Lcom/nuance/swype/input/KeyboardEx;

    .line 604
    iput v2, p0, Lcom/nuance/swype/input/KeyboardEx$Row;->verticalGap:I

    .line 605
    sget-object v1, Lcom/nuance/swype/input/R$styleable;->KeyboardEx_Row:[I

    invoke-virtual {p1, p3, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 606
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/nuance/swype/input/R$styleable;->KeyboardEx_Row_rowEdgeFlags:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/nuance/swype/input/KeyboardEx$Row;->rowEdgeFlags:I

    .line 607
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 608
    return-void
.end method

.method constructor <init>(Lcom/nuance/swype/input/KeyboardEx$Row;)V
    .locals 1
    .param p1, "row"    # Lcom/nuance/swype/input/KeyboardEx$Row;

    .prologue
    .line 591
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 592
    iget-object v0, p1, Lcom/nuance/swype/input/KeyboardEx$Row;->parent:Lcom/nuance/swype/input/KeyboardEx;

    iput-object v0, p0, Lcom/nuance/swype/input/KeyboardEx$Row;->parent:Lcom/nuance/swype/input/KeyboardEx;

    .line 593
    iget v0, p1, Lcom/nuance/swype/input/KeyboardEx$Row;->verticalGap:I

    iput v0, p0, Lcom/nuance/swype/input/KeyboardEx$Row;->verticalGap:I

    .line 594
    iget v0, p1, Lcom/nuance/swype/input/KeyboardEx$Row;->rowEdgeFlags:I

    iput v0, p0, Lcom/nuance/swype/input/KeyboardEx$Row;->rowEdgeFlags:I

    .line 595
    return-void
.end method

.method public constructor <init>(Lcom/nuance/swype/input/KeyboardEx;)V
    .locals 0
    .param p1, "p"    # Lcom/nuance/swype/input/KeyboardEx;

    .prologue
    .line 597
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 598
    iput-object p1, p0, Lcom/nuance/swype/input/KeyboardEx$Row;->parent:Lcom/nuance/swype/input/KeyboardEx;

    .line 599
    return-void
.end method


# virtual methods
.method addKey(ILcom/nuance/swype/input/KeyboardEx$Key;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    .line 620
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardEx$Row;->mKeys:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 621
    return-void
.end method

.method addKey(Lcom/nuance/swype/input/KeyboardEx$Key;)V
    .locals 1
    .param p1, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    .line 611
    iput-object p0, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->row:Lcom/nuance/swype/input/KeyboardEx$Row;

    .line 612
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardEx$Row;->mKeys:Ljava/util/List;

    if-nez v0, :cond_0

    .line 613
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/KeyboardEx$Row;->mKeys:Ljava/util/List;

    .line 616
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardEx$Row;->mKeys:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 617
    return-void
.end method

.method public calcBounds()V
    .locals 5

    .prologue
    .line 659
    iget-object v3, p0, Lcom/nuance/swype/input/KeyboardEx$Row;->mKeys:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .line 660
    .local v1, "idxLast":I
    if-ltz v1, :cond_0

    .line 661
    iget-object v3, p0, Lcom/nuance/swype/input/KeyboardEx$Row;->mKeys:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/KeyboardEx$Key;

    .line 662
    .local v0, "first":Lcom/nuance/swype/input/KeyboardEx$Key;
    iget-object v3, p0, Lcom/nuance/swype/input/KeyboardEx$Row;->mKeys:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/swype/input/KeyboardEx$Key;

    .line 664
    .local v2, "last":Lcom/nuance/swype/input/KeyboardEx$Key;
    iget v3, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->x:I

    iput v3, p0, Lcom/nuance/swype/input/KeyboardEx$Row;->iLeft:I

    .line 665
    iget v3, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->y:I

    iput v3, p0, Lcom/nuance/swype/input/KeyboardEx$Row;->iTop:I

    .line 666
    iget v3, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->x:I

    iget v4, v2, Lcom/nuance/swype/input/KeyboardEx$Key;->width:I

    add-int/2addr v3, v4

    iput v3, p0, Lcom/nuance/swype/input/KeyboardEx$Row;->iRight:I

    .line 667
    iget v3, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->y:I

    iget v4, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->height:I

    add-int/2addr v3, v4

    iput v3, p0, Lcom/nuance/swype/input/KeyboardEx$Row;->iBot:I

    .line 669
    .end local v0    # "first":Lcom/nuance/swype/input/KeyboardEx$Key;
    .end local v2    # "last":Lcom/nuance/swype/input/KeyboardEx$Key;
    :cond_0
    return-void
.end method

.method public getBottom()I
    .locals 1

    .prologue
    .line 650
    iget v0, p0, Lcom/nuance/swype/input/KeyboardEx$Row;->iBot:I

    return v0
.end method

.method public getHeight()I
    .locals 2

    .prologue
    .line 654
    iget v0, p0, Lcom/nuance/swype/input/KeyboardEx$Row;->iBot:I

    iget v1, p0, Lcom/nuance/swype/input/KeyboardEx$Row;->iTop:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getLeft()I
    .locals 1

    .prologue
    .line 638
    iget v0, p0, Lcom/nuance/swype/input/KeyboardEx$Row;->iLeft:I

    return v0
.end method

.method public getRight()I
    .locals 1

    .prologue
    .line 642
    iget v0, p0, Lcom/nuance/swype/input/KeyboardEx$Row;->iRight:I

    return v0
.end method

.method public getTop()I
    .locals 1

    .prologue
    .line 646
    iget v0, p0, Lcom/nuance/swype/input/KeyboardEx$Row;->iTop:I

    return v0
.end method

.method public keyCount()I
    .locals 1

    .prologue
    .line 628
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
    .line 624
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardEx$Row;->mKeys:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 625
    return-void
.end method
