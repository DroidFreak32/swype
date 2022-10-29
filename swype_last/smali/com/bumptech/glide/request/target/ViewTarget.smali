.class public abstract Lcom/bumptech/glide/request/target/ViewTarget;
.super Lcom/bumptech/glide/request/target/BaseTarget;
.source "ViewTarget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        "Z:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/bumptech/glide/request/target/BaseTarget",
        "<TZ;>;"
    }
.end annotation


# static fields
.field private static isTagUsedAtLeastOnce:Z

.field private static tagId:Ljava/lang/Integer;


# instance fields
.field private final sizeDeterminer:Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;

.field protected final view:Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 42
    const/4 v0, 0x0

    sput-boolean v0, Lcom/bumptech/glide/request/target/ViewTarget;->isTagUsedAtLeastOnce:Z

    .line 43
    const/4 v0, 0x0

    sput-object v0, Lcom/bumptech/glide/request/target/ViewTarget;->tagId:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 74
    .local p0, "this":Lcom/bumptech/glide/request/target/ViewTarget;, "Lcom/bumptech/glide/request/target/ViewTarget<TT;TZ;>;"
    .local p1, "view":Landroid/view/View;, "TT;"
    invoke-direct {p0}, Lcom/bumptech/glide/request/target/BaseTarget;-><init>()V

    .line 75
    if-nez p1, :cond_e

    .line 76
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "View must not be null!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_e
    iput-object p1, p0, Lcom/bumptech/glide/request/target/ViewTarget;->view:Landroid/view/View;

    .line 79
    new-instance v0, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/bumptech/glide/request/target/ViewTarget;->sizeDeterminer:Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;

    .line 80
    return-void
.end method


# virtual methods
.method public final getRequest()Lcom/bumptech/glide/request/Request;
    .registers 5

    .prologue
    .line 127
    .line 2149
    .local p0, "this":Lcom/bumptech/glide/request/target/ViewTarget;, "Lcom/bumptech/glide/request/target/ViewTarget<TT;TZ;>;"
    sget-object v2, Lcom/bumptech/glide/request/target/ViewTarget;->tagId:Ljava/lang/Integer;

    if-nez v2, :cond_15

    .line 2150
    iget-object v2, p0, Lcom/bumptech/glide/request/target/ViewTarget;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 128
    .local v1, "tag":Ljava/lang/Object;
    :goto_a
    const/4 v0, 0x0

    .line 129
    .local v0, "request":Lcom/bumptech/glide/request/Request;
    if-eqz v1, :cond_14

    .line 130
    instance-of v2, v1, Lcom/bumptech/glide/request/Request;

    if-eqz v2, :cond_22

    move-object v0, v1

    .line 131
    check-cast v0, Lcom/bumptech/glide/request/Request;

    .line 136
    :cond_14
    return-object v0

    .line 2152
    .end local v0    # "request":Lcom/bumptech/glide/request/Request;
    .end local v1    # "tag":Ljava/lang/Object;
    :cond_15
    iget-object v2, p0, Lcom/bumptech/glide/request/target/ViewTarget;->view:Landroid/view/View;

    sget-object v3, Lcom/bumptech/glide/request/target/ViewTarget;->tagId:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_a

    .line 133
    .restart local v0    # "request":Lcom/bumptech/glide/request/Request;
    .restart local v1    # "tag":Ljava/lang/Object;
    :cond_22
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "You must not call setTag() on a view Glide is targeting"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public final getSize(Lcom/bumptech/glide/request/target/SizeReadyCallback;)V
    .registers 6
    .param p1, "cb"    # Lcom/bumptech/glide/request/target/SizeReadyCallback;

    .prologue
    .line 100
    .local p0, "this":Lcom/bumptech/glide/request/target/ViewTarget;, "Lcom/bumptech/glide/request/target/ViewTarget<TT;TZ;>;"
    iget-object v0, p0, Lcom/bumptech/glide/request/target/ViewTarget;->sizeDeterminer:Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;

    .line 1208
    invoke-virtual {v0}, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->getViewWidthOrParam()I

    move-result v1

    .line 1209
    invoke-virtual {v0}, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->getViewHeightOrParam()I

    move-result v2

    .line 1210
    invoke-static {v1}, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->isSizeValid(I)Z

    move-result v3

    if-eqz v3, :cond_1a

    invoke-static {v2}, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->isSizeValid(I)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 1211
    invoke-interface {p1, v1, v2}, Lcom/bumptech/glide/request/target/SizeReadyCallback;->onSizeReady(II)V

    :cond_19
    :goto_19
    return-void

    .line 1215
    :cond_1a
    iget-object v1, v0, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->cbs:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 1216
    iget-object v1, v0, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->cbs:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1218
    :cond_27
    iget-object v1, v0, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->layoutListener:Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer$SizeDeterminerLayoutListener;

    if-nez v1, :cond_19

    .line 1219
    iget-object v1, v0, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 1220
    new-instance v2, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer$SizeDeterminerLayoutListener;

    invoke-direct {v2, v0}, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer$SizeDeterminerLayoutListener;-><init>(Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;)V

    iput-object v2, v0, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->layoutListener:Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer$SizeDeterminerLayoutListener;

    .line 1221
    iget-object v0, v0, Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer;->layoutListener:Lcom/bumptech/glide/request/target/ViewTarget$SizeDeterminer$SizeDeterminerLayoutListener;

    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_19
.end method

.method public final getView()Landroid/view/View;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 86
    .local p0, "this":Lcom/bumptech/glide/request/target/ViewTarget;, "Lcom/bumptech/glide/request/target/ViewTarget<TT;TZ;>;"
    iget-object v0, p0, Lcom/bumptech/glide/request/target/ViewTarget;->view:Landroid/view/View;

    return-object v0
.end method

.method public final setRequest(Lcom/bumptech/glide/request/Request;)V
    .registers 4
    .param p1, "request"    # Lcom/bumptech/glide/request/Request;

    .prologue
    .line 110
    .line 2140
    .local p0, "this":Lcom/bumptech/glide/request/target/ViewTarget;, "Lcom/bumptech/glide/request/target/ViewTarget<TT;TZ;>;"
    sget-object v0, Lcom/bumptech/glide/request/target/ViewTarget;->tagId:Ljava/lang/Integer;

    if-nez v0, :cond_d

    .line 2141
    const/4 v0, 0x1

    sput-boolean v0, Lcom/bumptech/glide/request/target/ViewTarget;->isTagUsedAtLeastOnce:Z

    .line 2142
    iget-object v0, p0, Lcom/bumptech/glide/request/target/ViewTarget;->view:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_c
    return-void

    .line 2144
    :cond_d
    iget-object v0, p0, Lcom/bumptech/glide/request/target/ViewTarget;->view:Landroid/view/View;

    sget-object v1, Lcom/bumptech/glide/request/target/ViewTarget;->tagId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto :goto_c
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 158
    .local p0, "this":Lcom/bumptech/glide/request/target/ViewTarget;, "Lcom/bumptech/glide/request/target/ViewTarget<TT;TZ;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Target for: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bumptech/glide/request/target/ViewTarget;->view:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
