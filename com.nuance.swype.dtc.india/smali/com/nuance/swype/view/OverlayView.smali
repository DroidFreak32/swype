.class public final Lcom/nuance/swype/view/OverlayView;
.super Lcom/nuance/swype/view/BasicViewLayout;
.source "OverlayView.java"


# static fields
.field protected static final log:Lcom/nuance/swype/util/LogManager$Log;


# instance fields
.field private parentViewGroupId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-string/jumbo v0, "OverlayView"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/view/OverlayView;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 36
    const v0, 0x1020002

    invoke-direct {p0, p1, p2, v0}, Lcom/nuance/swype/view/OverlayView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "parentViewGroupId"    # I

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/nuance/swype/view/BasicViewLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    iput p3, p0, Lcom/nuance/swype/view/OverlayView;->parentViewGroupId:I

    .line 48
    return-void
.end method

.method private findParentGroup(Landroid/view/View;)Landroid/view/ViewGroup;
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 160
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    .line 162
    .local v1, "rootView":Landroid/view/View;
    iget v2, p0, Lcom/nuance/swype/view/OverlayView;->parentViewGroupId:I

    if-nez v2, :cond_0

    instance-of v2, v1, Landroid/widget/FrameLayout;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 164
    check-cast v0, Landroid/widget/FrameLayout;

    .line 168
    .local v0, "parentGroup":Landroid/view/ViewGroup;
    :goto_0
    return-object v0

    .line 166
    .end local v0    # "parentGroup":Landroid/view/ViewGroup;
    :cond_0
    iget v2, p0, Lcom/nuance/swype/view/OverlayView;->parentViewGroupId:I

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/nuance/swype/view/OverlayView;->parentViewGroupId:I

    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .restart local v0    # "parentGroup":Landroid/view/ViewGroup;
    goto :goto_0

    .end local v0    # "parentGroup":Landroid/view/ViewGroup;
    :cond_1
    const v2, 0x1020002

    goto :goto_1
.end method


# virtual methods
.method public final attach(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, -0x1

    .line 56
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1178
    invoke-virtual {p0}, Lcom/nuance/swype/view/OverlayView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1179
    if-nez v0, :cond_2

    .line 1180
    invoke-direct {p0, p1}, Lcom/nuance/swype/view/OverlayView;->findParentGroup(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v0

    .line 1181
    if-eqz v0, :cond_1

    .line 1183
    invoke-virtual {v0, p0, v1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 1184
    :cond_0
    :goto_0
    return-void

    .line 1186
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Unable to find parent for overlay"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1188
    :cond_2
    invoke-virtual {p0}, Lcom/nuance/swype/view/OverlayView;->isDebugMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1189
    invoke-direct {p0, p1}, Lcom/nuance/swype/view/OverlayView;->findParentGroup(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v1

    .line 1190
    if-eq v1, v0, :cond_0

    .line 1191
    sget-object v0, Lcom/nuance/swype/view/OverlayView;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string/jumbo v1, "ensureOverlayAddedToContentFrame(): overlay parented in wrong view"

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->w(Ljava/lang/Object;)V

    goto :goto_0

    .line 59
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Target view has no window"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final detach()V
    .locals 1

    .prologue
    .line 72
    .line 2026
    if-eqz p0, :cond_0

    .line 2027
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2028
    if-eqz v0, :cond_0

    .line 2029
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 73
    :cond_0
    return-void
.end method

.method public final getOverlayPos(Landroid/view/View;)[I
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 80
    invoke-static {p1}, Lcom/nuance/swype/util/CoordUtils;->getWindowPos(Landroid/view/View;)[I

    move-result-object v0

    .line 81
    .local v0, "pos":[I
    invoke-virtual {p0, v0}, Lcom/nuance/swype/view/OverlayView;->windowToOverlay([I)[I

    .line 82
    return-object v0
.end method

.method public final getTouchableRegion()Landroid/graphics/Region;
    .locals 6

    .prologue
    .line 198
    invoke-virtual {p0}, Lcom/nuance/swype/view/OverlayView;->getChildCount()I

    move-result v4

    .line 199
    .local v4, "viewCount":I
    if-lez v4, :cond_2

    .line 200
    new-instance v2, Landroid/graphics/Region;

    invoke-direct {v2}, Landroid/graphics/Region;-><init>()V

    .line 201
    .local v2, "region":Landroid/graphics/Region;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_1

    .line 202
    invoke-virtual {p0, v0}, Lcom/nuance/swype/view/OverlayView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 203
    .local v3, "view":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->isShown()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2089
    invoke-static {v3}, Lcom/nuance/swype/util/GeomUtil;->getRect(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    .line 2090
    invoke-virtual {p0, v3}, Lcom/nuance/swype/view/OverlayView;->getOverlayPos(Landroid/view/View;)[I

    move-result-object v5

    invoke-static {v1, v5}, Lcom/nuance/swype/util/GeomUtil;->moveRectTo(Landroid/graphics/Rect;[I)V

    .line 205
    .local v1, "rec":Landroid/graphics/Rect;
    sget-object v5, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v2, v1, v2, v5}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 201
    .end local v1    # "rec":Landroid/graphics/Rect;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 209
    .end local v3    # "view":Landroid/view/View;
    :cond_1
    invoke-virtual {v2}, Landroid/graphics/Region;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 214
    .end local v0    # "i":I
    .end local v2    # "region":Landroid/graphics/Region;
    :goto_1
    return-object v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public final windowToOverlay([I)[I
    .locals 1
    .param p1, "coords"    # [I

    .prologue
    .line 99
    invoke-static {p0}, Lcom/nuance/swype/util/CoordUtils;->getWindowPos(Landroid/view/View;)[I

    move-result-object v0

    .line 100
    .local v0, "pos":[I
    invoke-static {p1, v0, p1}, Lcom/nuance/swype/util/CoordUtils;->subtract([I[I[I)V

    .line 101
    return-object p1
.end method
