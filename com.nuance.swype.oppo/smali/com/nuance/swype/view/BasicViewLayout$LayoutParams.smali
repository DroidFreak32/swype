.class public Lcom/nuance/swype/view/BasicViewLayout$LayoutParams;
.super Landroid/view/ViewGroup$LayoutParams;
.source "BasicViewLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/view/BasicViewLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public x:I

.field public y:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 438
    invoke-direct {p0, p3, p4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 439
    iput p1, p0, Lcom/nuance/swype/view/BasicViewLayout$LayoutParams;->x:I

    .line 440
    iput p2, p0, Lcom/nuance/swype/view/BasicViewLayout$LayoutParams;->y:I

    .line 441
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 451
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 452
    return-void
.end method

.method private static sizeToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "size"    # I

    .prologue
    .line 461
    const/4 v0, -0x2

    if-ne p0, v0, :cond_0

    .line 462
    const-string v0, "wrap-content"

    .line 467
    :goto_0
    return-object v0

    .line 464
    :cond_0
    const/4 v0, -0x1

    if-ne p0, v0, :cond_1

    .line 465
    const-string v0, "match-parent"

    goto :goto_0

    .line 467
    :cond_1
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 456
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OverlayView.LayoutParams={width="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/nuance/swype/view/BasicViewLayout$LayoutParams;->width:I

    invoke-static {v1}, Lcom/nuance/swype/view/BasicViewLayout$LayoutParams;->sizeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nuance/swype/view/BasicViewLayout$LayoutParams;->height:I

    invoke-static {v1}, Lcom/nuance/swype/view/BasicViewLayout$LayoutParams;->sizeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nuance/swype/view/BasicViewLayout$LayoutParams;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nuance/swype/view/BasicViewLayout$LayoutParams;->y:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
