.class public final Lcom/nuance/swype/view/KeyPreviewManager;
.super Ljava/lang/Object;
.source "KeyPreviewManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/view/KeyPreviewManager$StyleParams;,
        Lcom/nuance/swype/view/KeyPreviewManager$PreviewInfo;
    }
.end annotation


# static fields
.field protected static final log:Lcom/nuance/swype/util/LogManager$Log;


# instance fields
.field private final added:Lcom/nuance/swype/util/CollectionUtils$FiniteSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nuance/swype/util/CollectionUtils$FiniteSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field public enabled:Z

.field public keyboardView:Lcom/nuance/swype/input/KeyboardViewEx;

.field public final overlayView:Lcom/nuance/swype/view/OverlayView;

.field public final previewInfo:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/nuance/swype/view/KeyPreviewManager$PreviewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private styleParams:Lcom/nuance/swype/view/KeyPreviewManager$StyleParams;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 28
    const-string/jumbo v0, "KeyPreviewManager"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/view/KeyPreviewManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/nuance/swype/input/KeyboardViewEx;Lcom/nuance/swype/view/OverlayView;Lcom/nuance/swype/view/KeyPreviewManager$StyleParams;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "keyboardView"    # Lcom/nuance/swype/input/KeyboardViewEx;
    .param p3, "overlay"    # Lcom/nuance/swype/view/OverlayView;
    .param p4, "params"    # Lcom/nuance/swype/view/KeyPreviewManager$StyleParams;

    .prologue
    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1045
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 105
    iput-object v0, p0, Lcom/nuance/swype/view/KeyPreviewManager;->previewInfo:Landroid/util/SparseArray;

    .line 114
    new-instance v0, Lcom/nuance/swype/util/CollectionUtils$FiniteSet;

    invoke-direct {v0}, Lcom/nuance/swype/util/CollectionUtils$FiniteSet;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/view/KeyPreviewManager;->added:Lcom/nuance/swype/util/CollectionUtils$FiniteSet;

    .line 118
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swype/view/KeyPreviewManager;->enabled:Z

    .line 144
    iput-object p1, p0, Lcom/nuance/swype/view/KeyPreviewManager;->context:Landroid/content/Context;

    .line 145
    iput-object p2, p0, Lcom/nuance/swype/view/KeyPreviewManager;->keyboardView:Lcom/nuance/swype/input/KeyboardViewEx;

    .line 146
    iput-object p3, p0, Lcom/nuance/swype/view/KeyPreviewManager;->overlayView:Lcom/nuance/swype/view/OverlayView;

    .line 147
    iput-object p4, p0, Lcom/nuance/swype/view/KeyPreviewManager;->styleParams:Lcom/nuance/swype/view/KeyPreviewManager$StyleParams;

    .line 148
    return-void
.end method

.method private addKeyPreview(Lcom/nuance/swype/widget/PreviewView;)V
    .registers 3
    .param p1, "previewView"    # Lcom/nuance/swype/widget/PreviewView;

    .prologue
    .line 206
    invoke-static {p1}, Lcom/nuance/swype/util/ViewUtil;->forceLayout(Landroid/view/View;)V

    .line 207
    iget-object v0, p0, Lcom/nuance/swype/view/KeyPreviewManager;->overlayView:Lcom/nuance/swype/view/OverlayView;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/view/OverlayView;->addView(Landroid/view/View;)V

    .line 208
    return-void
.end method


# virtual methods
.method public final dismissNow(I)V
    .registers 3
    .param p1, "id"    # I

    .prologue
    .line 152
    invoke-virtual {p0, p1}, Lcom/nuance/swype/view/KeyPreviewManager;->getPreviewInfo(I)Lcom/nuance/swype/view/KeyPreviewManager$PreviewInfo;

    move-result-object v0

    .line 153
    .local v0, "info":Lcom/nuance/swype/view/KeyPreviewManager$PreviewInfo;
    if-eqz v0, :cond_9

    .line 154
    invoke-virtual {v0}, Lcom/nuance/swype/view/KeyPreviewManager$PreviewInfo;->hideNow()V

    .line 156
    :cond_9
    return-void
.end method

.method public final getPreviewInfo(I)Lcom/nuance/swype/view/KeyPreviewManager$PreviewInfo;
    .registers 3
    .param p1, "idPointer"    # I

    .prologue
    .line 166
    iget-object v0, p0, Lcom/nuance/swype/view/KeyPreviewManager;->previewInfo:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/view/KeyPreviewManager$PreviewInfo;

    return-object v0
.end method

.method public final getPreviewInfoCreate(I)Lcom/nuance/swype/view/KeyPreviewManager$PreviewInfo;
    .registers 12
    .param p1, "pointerId"    # I

    .prologue
    .line 170
    invoke-virtual {p0, p1}, Lcom/nuance/swype/view/KeyPreviewManager;->getPreviewInfo(I)Lcom/nuance/swype/view/KeyPreviewManager$PreviewInfo;

    move-result-object v0

    .line 171
    .local v0, "info":Lcom/nuance/swype/view/KeyPreviewManager$PreviewInfo;
    if-eqz v0, :cond_13

    .line 1097
    iget-object v3, v0, Lcom/nuance/swype/view/KeyPreviewManager$PreviewInfo;->view:Lcom/nuance/swype/widget/PreviewView;

    .line 173
    .local v3, "previewView":Lcom/nuance/swype/widget/PreviewView;
    invoke-virtual {v3}, Lcom/nuance/swype/widget/PreviewView;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-nez v5, :cond_11

    .line 176
    invoke-direct {p0, v3}, Lcom/nuance/swype/view/KeyPreviewManager;->addKeyPreview(Lcom/nuance/swype/widget/PreviewView;)V

    :cond_11
    move-object v1, v0

    .line 197
    .end local v0    # "info":Lcom/nuance/swype/view/KeyPreviewManager$PreviewInfo;
    .end local v3    # "previewView":Lcom/nuance/swype/widget/PreviewView;
    .local v1, "info":Lcom/nuance/swype/view/KeyPreviewManager$PreviewInfo;
    :goto_12
    return-object v1

    .line 182
    .end local v1    # "info":Lcom/nuance/swype/view/KeyPreviewManager$PreviewInfo;
    .restart local v0    # "info":Lcom/nuance/swype/view/KeyPreviewManager$PreviewInfo;
    :cond_13
    iget-object v6, p0, Lcom/nuance/swype/view/KeyPreviewManager;->added:Lcom/nuance/swype/util/CollectionUtils$FiniteSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 2071
    const/4 v5, 0x0

    .line 2072
    iget-object v8, v6, Lcom/nuance/swype/util/CollectionUtils$FiniteSet;->list:Ljava/util/LinkedHashSet;

    invoke-virtual {v8, v7}, Ljava/util/LinkedHashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_74

    .line 2074
    iget-object v8, v6, Lcom/nuance/swype/util/CollectionUtils$FiniteSet;->list:Ljava/util/LinkedHashSet;

    invoke-virtual {v8}, Ljava/util/LinkedHashSet;->size()I

    move-result v8

    iget v9, v6, Lcom/nuance/swype/util/CollectionUtils$FiniteSet;->max:I

    if-ne v8, v9, :cond_39

    .line 2075
    iget-object v5, v6, Lcom/nuance/swype/util/CollectionUtils$FiniteSet;->list:Ljava/util/LinkedHashSet;

    invoke-virtual {v5}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 2076
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 2077
    invoke-interface {v8}, Ljava/util/Iterator;->remove()V

    .line 2079
    :cond_39
    iget-object v6, v6, Lcom/nuance/swype/util/CollectionUtils$FiniteSet;->list:Ljava/util/LinkedHashSet;

    invoke-virtual {v6, v7}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    move-object v4, v5

    .line 182
    :goto_3f
    check-cast v4, Ljava/lang/Integer;

    .line 183
    .local v4, "removed":Ljava/lang/Integer;
    if-eqz v4, :cond_5f

    .line 185
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/nuance/swype/view/KeyPreviewManager;->getPreviewInfo(I)Lcom/nuance/swype/view/KeyPreviewManager$PreviewInfo;

    move-result-object v2

    .line 186
    .local v2, "old":Lcom/nuance/swype/view/KeyPreviewManager$PreviewInfo;
    invoke-virtual {v2}, Lcom/nuance/swype/view/KeyPreviewManager$PreviewInfo;->hideNow()V

    .line 187
    iget-object v5, p0, Lcom/nuance/swype/view/KeyPreviewManager;->previewInfo:Landroid/util/SparseArray;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->remove(I)V

    .line 189
    move-object v0, v2

    .line 195
    .end local v2    # "old":Lcom/nuance/swype/view/KeyPreviewManager$PreviewInfo;
    :goto_58
    iget-object v5, p0, Lcom/nuance/swype/view/KeyPreviewManager;->previewInfo:Landroid/util/SparseArray;

    invoke-virtual {v5, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object v1, v0

    .line 197
    .end local v0    # "info":Lcom/nuance/swype/view/KeyPreviewManager$PreviewInfo;
    .restart local v1    # "info":Lcom/nuance/swype/view/KeyPreviewManager$PreviewInfo;
    goto :goto_12

    .line 191
    .end local v1    # "info":Lcom/nuance/swype/view/KeyPreviewManager$PreviewInfo;
    .restart local v0    # "info":Lcom/nuance/swype/view/KeyPreviewManager$PreviewInfo;
    :cond_5f
    new-instance v0, Lcom/nuance/swype/view/KeyPreviewManager$PreviewInfo;

    .end local v0    # "info":Lcom/nuance/swype/view/KeyPreviewManager$PreviewInfo;
    iget-object v5, p0, Lcom/nuance/swype/view/KeyPreviewManager;->context:Landroid/content/Context;

    iget-object v6, p0, Lcom/nuance/swype/view/KeyPreviewManager;->styleParams:Lcom/nuance/swype/view/KeyPreviewManager$StyleParams;

    iget v6, v6, Lcom/nuance/swype/view/KeyPreviewManager$StyleParams;->previewViewLayoutId:I

    iget-object v7, p0, Lcom/nuance/swype/view/KeyPreviewManager;->styleParams:Lcom/nuance/swype/view/KeyPreviewManager$StyleParams;

    iget v7, v7, Lcom/nuance/swype/view/KeyPreviewManager$StyleParams;->postReleaseHideDelay:I

    invoke-direct {v0, v5, v6, v7}, Lcom/nuance/swype/view/KeyPreviewManager$PreviewInfo;-><init>(Landroid/content/Context;II)V

    .line 2097
    .restart local v0    # "info":Lcom/nuance/swype/view/KeyPreviewManager$PreviewInfo;
    iget-object v5, v0, Lcom/nuance/swype/view/KeyPreviewManager$PreviewInfo;->view:Lcom/nuance/swype/widget/PreviewView;

    .line 193
    invoke-direct {p0, v5}, Lcom/nuance/swype/view/KeyPreviewManager;->addKeyPreview(Lcom/nuance/swype/widget/PreviewView;)V

    goto :goto_58

    .end local v4    # "removed":Ljava/lang/Integer;
    :cond_74
    move-object v4, v5

    goto :goto_3f
.end method

.method public final hide(I)V
    .registers 4
    .param p1, "id"    # I

    .prologue
    .line 213
    invoke-virtual {p0, p1}, Lcom/nuance/swype/view/KeyPreviewManager;->getPreviewInfo(I)Lcom/nuance/swype/view/KeyPreviewManager$PreviewInfo;

    move-result-object v0

    .line 215
    .local v0, "info":Lcom/nuance/swype/view/KeyPreviewManager$PreviewInfo;
    if-eqz v0, :cond_e

    .line 3086
    const/4 v1, 0x0

    iput v1, v0, Lcom/nuance/swype/view/KeyPreviewManager$PreviewInfo;->state:I

    .line 3087
    iget-object v1, v0, Lcom/nuance/swype/view/KeyPreviewManager$PreviewInfo;->timer:Lcom/nuance/swype/util/Callback;

    invoke-virtual {v1}, Lcom/nuance/swype/util/Callback;->start()V

    .line 218
    :cond_e
    return-void
.end method
