.class final Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;
.super Ljava/lang/Object;
.source "ViewTarget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/request/target/ViewTarget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SizeDeterminer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer$SizeDeterminerLayoutListener;
    }
.end annotation


# instance fields
.field final cbs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bumptech/glide/request/target/SizeReadyCallback;",
            ">;"
        }
    .end annotation
.end field

.field private displayDimens:Landroid/graphics/Point;

.field layoutListener:Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer$SizeDeterminerLayoutListener;

.field final view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->cbs:Ljava/util/List;

    .line 172
    iput-object p1, p0, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->view:Landroid/view/View;

    .line 173
    return-void
.end method

.method static synthetic access$000(Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;)V
    .registers 5
    .param p0, "x0"    # Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;

    .prologue
    .line 161
    .line 2183
    iget-object v0, p0, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->cbs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 2187
    invoke-virtual {p0}, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->getViewWidthOrParam()I

    move-result v1

    .line 2188
    invoke-virtual {p0}, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->getViewHeightOrParam()I

    move-result v2

    .line 2189
    invoke-static {v1}, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->isSizeValid(I)Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-static {v2}, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->isSizeValid(I)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 2190
    :cond_1c
    :goto_1c
    return-void

    .line 3176
    :cond_1d
    iget-object v0, p0, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->cbs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_23
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/target/SizeReadyCallback;

    .line 3177
    invoke-interface {v0, v1, v2}, Lcom/bumptech/glide/request/target/SizeReadyCallback;->onSizeReady(II)V

    goto :goto_23

    .line 3179
    :cond_33
    iget-object v0, p0, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->cbs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2200
    iget-object v0, p0, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 2201
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_49

    .line 2202
    iget-object v1, p0, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->layoutListener:Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer$SizeDeterminerLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 2204
    :cond_49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->layoutListener:Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer$SizeDeterminerLayoutListener;

    goto :goto_1c
.end method

.method private getSizeForParam(IZ)I
    .registers 7
    .param p1, "param"    # I
    .param p2, "isHeight"    # Z

    .prologue
    .line 249
    const/4 v1, -0x2

    if-ne p1, v1, :cond_32

    .line 1260
    iget-object v1, p0, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->displayDimens:Landroid/graphics/Point;

    if-nez v1, :cond_2c

    .line 1263
    iget-object v1, p0, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 1264
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 1265
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xd

    if-lt v2, v3, :cond_33

    .line 1266
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iput-object v2, p0, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->displayDimens:Landroid/graphics/Point;

    .line 1267
    iget-object v2, p0, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->displayDimens:Landroid/graphics/Point;

    invoke-virtual {v1, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 1271
    :cond_2c
    :goto_2c
    iget-object v0, p0, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->displayDimens:Landroid/graphics/Point;

    .line 251
    .local v0, "displayDimens":Landroid/graphics/Point;
    if-eqz p2, :cond_43

    iget p1, v0, Landroid/graphics/Point;->y:I

    .line 253
    .end local v0    # "displayDimens":Landroid/graphics/Point;
    .end local p1    # "param":I
    :cond_32
    :goto_32
    return p1

    .line 1269
    .restart local p1    # "param":I
    :cond_33
    new-instance v2, Landroid/graphics/Point;

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    invoke-direct {v2, v3, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v2, p0, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->displayDimens:Landroid/graphics/Point;

    goto :goto_2c

    .line 251
    .restart local v0    # "displayDimens":Landroid/graphics/Point;
    :cond_43
    iget p1, v0, Landroid/graphics/Point;->x:I

    goto :goto_32
.end method

.method static isSizeValid(I)Z
    .registers 2
    .param p0, "size"    # I

    .prologue
    .line 275
    if-gtz p0, :cond_5

    const/4 v0, -0x2

    if-ne p0, v0, :cond_7

    :cond_5
    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method


# virtual methods
.method final getViewHeightOrParam()I
    .registers 4

    .prologue
    .line 227
    iget-object v1, p0, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 228
    .local v0, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    iget-object v1, p0, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-static {v1}, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->isSizeValid(I)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 229
    iget-object v1, p0, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 233
    :goto_18
    return v1

    .line 230
    :cond_19
    if-eqz v0, :cond_23

    .line 231
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->getSizeForParam(IZ)I

    move-result v1

    goto :goto_18

    .line 233
    :cond_23
    const/4 v1, 0x0

    goto :goto_18
.end method

.method final getViewWidthOrParam()I
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 238
    iget-object v2, p0, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 239
    .local v0, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    iget-object v2, p0, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-static {v2}, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->isSizeValid(I)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 240
    iget-object v1, p0, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 244
    :cond_19
    :goto_19
    return v1

    .line 241
    :cond_1a
    if-eqz v0, :cond_19

    .line 242
    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-direct {p0, v2, v1}, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->getSizeForParam(IZ)I

    move-result v1

    goto :goto_19
.end method
