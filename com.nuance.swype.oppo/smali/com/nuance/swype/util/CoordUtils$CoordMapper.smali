.class public final Lcom/nuance/swype/util/CoordUtils$CoordMapper;
.super Ljava/lang/Object;
.source "CoordUtils.java"


# instance fields
.field private loc:[I

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/nuance/swype/util/CoordUtils$CoordMapper;->loc:[I

    .line 24
    iput-object p1, p0, Lcom/nuance/swype/util/CoordUtils$CoordMapper;->view:Landroid/view/View;

    .line 25
    return-void
.end method


# virtual methods
.method public final map(Landroid/graphics/Point;)V
    .locals 3
    .param p1, "pt"    # Landroid/graphics/Point;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/nuance/swype/util/CoordUtils$CoordMapper;->view:Landroid/view/View;

    iget-object v1, p0, Lcom/nuance/swype/util/CoordUtils$CoordMapper;->loc:[I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 29
    iget v0, p1, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/nuance/swype/util/CoordUtils$CoordMapper;->loc:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Point;->x:I

    .line 30
    iget v0, p1, Landroid/graphics/Point;->y:I

    iget-object v1, p0, Lcom/nuance/swype/util/CoordUtils$CoordMapper;->loc:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Point;->y:I

    .line 31
    return-void
.end method
