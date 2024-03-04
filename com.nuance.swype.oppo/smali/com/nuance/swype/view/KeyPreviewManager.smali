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

.field private enabled:Z

.field private keyboardView:Lcom/nuance/swype/input/KeyboardViewEx;

.field private final overlayView:Lcom/nuance/swype/view/OverlayView;

.field private final previewInfo:Landroid/util/SparseArray;
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
    .locals 1

    .prologue
    .line 28
    const-string v0, "KeyPreviewManager"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/nuance/swype/input/KeyboardViewEx;Lcom/nuance/swype/view/OverlayView;Lcom/nuance/swype/view/KeyPreviewManager$StyleParams;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "keyboardView"    # Lcom/nuance/swype/input/KeyboardViewEx;
    .param p3, "overlay"    # Lcom/nuance/swype/view/OverlayView;
    .param p4, "params"    # Lcom/nuance/swype/view/KeyPreviewManager$StyleParams;

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/view/KeyPreviewManager;->previewInfo:Landroid/util/SparseArray;

    .line 104
    new-instance v0, Lcom/nuance/swype/util/CollectionUtils$FiniteSet;

    invoke-direct {v0}, Lcom/nuance/swype/util/CollectionUtils$FiniteSet;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/view/KeyPreviewManager;->added:Lcom/nuance/swype/util/CollectionUtils$FiniteSet;

    .line 108
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swype/view/KeyPreviewManager;->enabled:Z

    .line 129
    iput-object p1, p0, Lcom/nuance/swype/view/KeyPreviewManager;->context:Landroid/content/Context;

    .line 130
    iput-object p2, p0, Lcom/nuance/swype/view/KeyPreviewManager;->keyboardView:Lcom/nuance/swype/input/KeyboardViewEx;

    .line 131
    iput-object p3, p0, Lcom/nuance/swype/view/KeyPreviewManager;->overlayView:Lcom/nuance/swype/view/OverlayView;

    .line 132
    iput-object p4, p0, Lcom/nuance/swype/view/KeyPreviewManager;->styleParams:Lcom/nuance/swype/view/KeyPreviewManager$StyleParams;

    .line 133
    return-void
.end method

.method private addKeyPreview(Lcom/nuance/swype/widget/PreviewView;)V
    .locals 1
    .param p1, "previewView"    # Lcom/nuance/swype/widget/PreviewView;

    .prologue
    .line 190
    iget-object v0, p0, Lcom/nuance/swype/view/KeyPreviewManager;->overlayView:Lcom/nuance/swype/view/OverlayView;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/view/OverlayView;->addView(Landroid/view/View;)V

    .line 191
    return-void
.end method

.method private dismissNow(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 137
    invoke-direct {p0, p1}, Lcom/nuance/swype/view/KeyPreviewManager;->getPreviewInfo(I)Lcom/nuance/swype/view/KeyPreviewManager$PreviewInfo;

    move-result-object v0

    .line 138
    .local v0, "info":Lcom/nuance/swype/view/KeyPreviewManager$PreviewInfo;
    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {v0}, Lcom/nuance/swype/view/KeyPreviewManager$PreviewInfo;->hideNow()V

    .line 141
    :cond_0
    return-void
.end method

.method private getPreviewInfo(I)Lcom/nuance/swype/view/KeyPreviewManager$PreviewInfo;
    .locals 1
    .param p1, "idPointer"    # I

    .prologue
    .line 151
    iget-object v0, p0, Lcom/nuance/swype/view/KeyPreviewManager;->previewInfo:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/view/KeyPreviewManager$PreviewInfo;

    return-object v0
.end method


# virtual methods
.method public final dismissAllNow()V
    .locals 3

    .prologue
    .line 144
    iget-object v2, p0, Lcom/nuance/swype/view/KeyPreviewManager;->previewInfo:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 145
    .local v1, "pointerCount":I
    const/4 v0, 0x0

    .local v0, "id":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 146
    invoke-direct {p0, v0}, Lcom/nuance/swype/view/KeyPreviewManager;->dismissNow(I)V

    .line 145
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 148
    :cond_0
    return-void
.end method

.method public final getState(I)I
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 220
    invoke-direct {p0, p1}, Lcom/nuance/swype/view/KeyPreviewManager;->getPreviewInfo(I)Lcom/nuance/swype/view/KeyPreviewManager$PreviewInfo;

    move-result-object v0

    .line 221
    .local v0, "info":Lcom/nuance/swype/view/KeyPreviewManager$PreviewInfo;
    if-eqz v0, :cond_0

    .line 222
    iget v1, v0, Lcom/nuance/swype/view/KeyPreviewManager$PreviewInfo;->state:I

    .line 224
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final hide(I)V
    .locals 7
    .param p1, "id"    # I

    .prologue
    const/4 v6, 0x1

    .line 196
    invoke-direct {p0, p1}, Lcom/nuance/swype/view/KeyPreviewManager;->getPreviewInfo(I)Lcom/nuance/swype/view/KeyPreviewManager$PreviewInfo;

    move-result-object v0

    .line 198
    .local v0, "info":Lcom/nuance/swype/view/KeyPreviewManager$PreviewInfo;
    if-eqz v0, :cond_1

    .line 199
    const/4 v1, 0x0

    iput v1, v0, Lcom/nuance/swype/view/KeyPreviewManager$PreviewInfo;->state:I

    iget-object v1, v0, Lcom/nuance/swype/view/KeyPreviewManager$PreviewInfo;->timer:Lcom/nuance/swype/util/Callback;

    iget-boolean v2, v1, Lcom/nuance/swype/util/Callback;->isPending:Z

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lcom/nuance/swype/util/Callback;->stop()V

    iget-boolean v2, v1, Lcom/nuance/swype/util/Callback;->isPending:Z

    if-nez v2, :cond_0

    iput-boolean v6, v1, Lcom/nuance/swype/util/Callback;->isPending:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/nuance/swype/util/Callback;->msNext:J

    :cond_0
    iget-object v2, v1, Lcom/nuance/swype/util/Callback;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    iget-wide v2, v1, Lcom/nuance/swype/util/Callback;->msNext:J

    iget-wide v4, v1, Lcom/nuance/swype/util/Callback;->msDelay:J

    add-long/2addr v2, v4

    iput-wide v2, v1, Lcom/nuance/swype/util/Callback;->msNext:J

    iget-object v2, v1, Lcom/nuance/swype/util/Callback;->handler:Landroid/os/Handler;

    iget-object v3, v1, Lcom/nuance/swype/util/Callback;->handler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    iget-wide v4, v1, Lcom/nuance/swype/util/Callback;->msNext:J

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 201
    :cond_1
    return-void
.end method

.method public final show(ILcom/nuance/swype/input/KeyboardEx$Key;Z)V
    .locals 9
    .param p1, "id"    # I
    .param p2, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;
    .param p3, "isAlt"    # Z

    .prologue
    const/4 v5, 0x0

    .line 237
    iget-boolean v3, p0, Lcom/nuance/swype/view/KeyPreviewManager;->enabled:Z

    if-nez v3, :cond_0

    .line 256
    :goto_0
    return-void

    .line 242
    :cond_0
    invoke-direct {p0, p1}, Lcom/nuance/swype/view/KeyPreviewManager;->getPreviewInfo(I)Lcom/nuance/swype/view/KeyPreviewManager$PreviewInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v3, v0, Lcom/nuance/swype/view/KeyPreviewManager$PreviewInfo;->view:Lcom/nuance/swype/widget/PreviewView;

    invoke-virtual {v3}, Lcom/nuance/swype/widget/PreviewView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-nez v4, :cond_1

    invoke-direct {p0, v3}, Lcom/nuance/swype/view/KeyPreviewManager;->addKeyPreview(Lcom/nuance/swype/widget/PreviewView;)V

    .line 244
    .local v0, "info":Lcom/nuance/swype/view/KeyPreviewManager$PreviewInfo;
    :cond_1
    :goto_1
    iget-object v1, v0, Lcom/nuance/swype/view/KeyPreviewManager$PreviewInfo;->view:Lcom/nuance/swype/widget/PreviewView;

    .line 245
    .local v1, "previewView":Lcom/nuance/swype/widget/PreviewView;
    iget-object v3, p0, Lcom/nuance/swype/view/KeyPreviewManager;->keyboardView:Lcom/nuance/swype/input/KeyboardViewEx;

    invoke-virtual {v3, v1, p2, p3}, Lcom/nuance/swype/input/KeyboardViewEx;->configureKeyPreview(Lcom/nuance/swype/widget/PreviewView;Lcom/nuance/swype/input/KeyboardEx$Key;Z)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 247
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    move v3, v5

    :goto_2
    if-ge v3, v4, :cond_6

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->invalidate()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 242
    .end local v0    # "info":Lcom/nuance/swype/view/KeyPreviewManager$PreviewInfo;
    .end local v1    # "previewView":Lcom/nuance/swype/widget/PreviewView;
    :cond_2
    iget-object v4, p0, Lcom/nuance/swype/view/KeyPreviewManager;->added:Lcom/nuance/swype/util/CollectionUtils$FiniteSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v3, 0x0

    iget-object v7, v4, Lcom/nuance/swype/util/CollectionUtils$FiniteSet;->list:Ljava/util/LinkedHashSet;

    invoke-virtual {v7, v6}, Ljava/util/LinkedHashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    iget-object v7, v4, Lcom/nuance/swype/util/CollectionUtils$FiniteSet;->list:Ljava/util/LinkedHashSet;

    invoke-virtual {v7}, Ljava/util/LinkedHashSet;->size()I

    move-result v7

    const/16 v8, 0xa

    if-ne v7, v8, :cond_3

    iget-object v3, v4, Lcom/nuance/swype/util/CollectionUtils$FiniteSet;->list:Ljava/util/LinkedHashSet;

    invoke-virtual {v3}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    :cond_3
    iget-object v4, v4, Lcom/nuance/swype/util/CollectionUtils$FiniteSet;->list:Ljava/util/LinkedHashSet;

    invoke-virtual {v4, v6}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    :cond_4
    check-cast v3, Ljava/lang/Integer;

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/nuance/swype/view/KeyPreviewManager;->getPreviewInfo(I)Lcom/nuance/swype/view/KeyPreviewManager$PreviewInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/view/KeyPreviewManager$PreviewInfo;->hideNow()V

    iget-object v6, p0, Lcom/nuance/swype/view/KeyPreviewManager;->previewInfo:Landroid/util/SparseArray;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->remove(I)V

    move-object v3, v4

    :goto_3
    iget-object v4, p0, Lcom/nuance/swype/view/KeyPreviewManager;->previewInfo:Landroid/util/SparseArray;

    invoke-virtual {v4, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object v0, v3

    goto :goto_1

    :cond_5
    new-instance v3, Lcom/nuance/swype/view/KeyPreviewManager$PreviewInfo;

    iget-object v4, p0, Lcom/nuance/swype/view/KeyPreviewManager;->context:Landroid/content/Context;

    iget-object v6, p0, Lcom/nuance/swype/view/KeyPreviewManager;->styleParams:Lcom/nuance/swype/view/KeyPreviewManager$StyleParams;

    iget v6, v6, Lcom/nuance/swype/view/KeyPreviewManager$StyleParams;->previewViewLayoutId:I

    iget-object v7, p0, Lcom/nuance/swype/view/KeyPreviewManager;->styleParams:Lcom/nuance/swype/view/KeyPreviewManager$StyleParams;

    iget v7, v7, Lcom/nuance/swype/view/KeyPreviewManager$StyleParams;->postReleaseHideDelay:I

    invoke-direct {v3, v4, v6, v7}, Lcom/nuance/swype/view/KeyPreviewManager$PreviewInfo;-><init>(Landroid/content/Context;II)V

    iget-object v4, v3, Lcom/nuance/swype/view/KeyPreviewManager$PreviewInfo;->view:Lcom/nuance/swype/widget/PreviewView;

    invoke-direct {p0, v4}, Lcom/nuance/swype/view/KeyPreviewManager;->addKeyPreview(Lcom/nuance/swype/widget/PreviewView;)V

    goto :goto_3

    .line 248
    .restart local v0    # "info":Lcom/nuance/swype/view/KeyPreviewManager$PreviewInfo;
    .restart local v1    # "previewView":Lcom/nuance/swype/widget/PreviewView;
    :cond_6
    iget-object v3, p0, Lcom/nuance/swype/view/KeyPreviewManager;->keyboardView:Lcom/nuance/swype/input/KeyboardViewEx;

    invoke-virtual {v3, v1, p2, v5}, Lcom/nuance/swype/input/KeyboardViewEx;->getKeyPreviewRectInWindow(Landroid/view/View;Lcom/nuance/swype/input/KeyboardEx$Key;Z)Landroid/graphics/Rect;

    move-result-object v2

    .line 249
    .local v2, "rc":Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/nuance/swype/view/KeyPreviewManager;->overlayView:Lcom/nuance/swype/view/OverlayView;

    iget-object v4, p0, Lcom/nuance/swype/view/KeyPreviewManager;->styleParams:Lcom/nuance/swype/view/KeyPreviewManager$StyleParams;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3, v2}, Lcom/nuance/swype/view/OverlayView;->windowToOverlayConfine$202867f8(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/nuance/swype/view/OverlayView;->setGeometry(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 252
    iget-object v3, v0, Lcom/nuance/swype/view/KeyPreviewManager$PreviewInfo;->timer:Lcom/nuance/swype/util/Callback;

    invoke-virtual {v3}, Lcom/nuance/swype/util/Callback;->stop()V

    if-eqz p3, :cond_7

    const/4 v3, 0x2

    iput v3, v0, Lcom/nuance/swype/view/KeyPreviewManager$PreviewInfo;->state:I

    :goto_4
    iput v3, v0, Lcom/nuance/swype/view/KeyPreviewManager$PreviewInfo;->state:I

    iget-object v3, v0, Lcom/nuance/swype/view/KeyPreviewManager$PreviewInfo;->view:Lcom/nuance/swype/widget/PreviewView;

    invoke-virtual {v3, v5}, Lcom/nuance/swype/widget/PreviewView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_7
    const/4 v3, 0x1

    goto :goto_4

    .line 254
    .end local v2    # "rc":Landroid/graphics/Rect;
    :cond_8
    invoke-direct {p0, p1}, Lcom/nuance/swype/view/KeyPreviewManager;->dismissNow(I)V

    goto/16 :goto_0
.end method
