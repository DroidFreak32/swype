.class public final Lcom/nuance/swype/view/ShowHideAnimManager;
.super Ljava/lang/Object;
.source "ShowHideAnimManager.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/view/ShowHideAnimManager$AnimListener;,
        Lcom/nuance/swype/view/ShowHideAnimManager$Listener;
    }
.end annotation


# static fields
.field private static log:Lcom/nuance/swype/util/LogManager$Log;


# instance fields
.field private animHide:Landroid/animation/Animator;

.field private animShow:Landroid/animation/Animator;

.field private final hidePending:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Landroid/view/View;",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private listener:Lcom/nuance/swype/view/ShowHideAnimManager$Listener;

.field private final showPending:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Landroid/view/View;",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-string v0, "ShowHideAnimManager"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/view/ShowHideAnimManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/view/ShowHideAnimManager;->hidePending:Ljava/util/LinkedHashMap;

    .line 36
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/view/ShowHideAnimManager;->showPending:Ljava/util/LinkedHashMap;

    .line 52
    const/high16 v0, 0x10b0000

    invoke-static {p1, v0}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/view/ShowHideAnimManager;->animShow:Landroid/animation/Animator;

    .line 53
    const v0, 0x10b0001

    invoke-static {p1, v0}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/view/ShowHideAnimManager;->animHide:Landroid/animation/Animator;

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/res/TypedArray;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "props"    # Landroid/content/res/TypedArray;
    .param p3, "showAnimStyleableResId"    # I
    .param p4, "hideAnimStyleableResId"    # I

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/view/ShowHideAnimManager;->hidePending:Ljava/util/LinkedHashMap;

    .line 36
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/view/ShowHideAnimManager;->showPending:Ljava/util/LinkedHashMap;

    .line 45
    if-lez p3, :cond_1

    invoke-static {p1, p2, p3}, Lcom/nuance/swype/view/ShowHideAnimManager;->loadAnim(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/animation/Animator;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/nuance/swype/view/ShowHideAnimManager;->animShow:Landroid/animation/Animator;

    .line 47
    if-lez p4, :cond_0

    invoke-static {p1, p2, p4}, Lcom/nuance/swype/view/ShowHideAnimManager;->loadAnim(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/animation/Animator;

    move-result-object v1

    :cond_0
    iput-object v1, p0, Lcom/nuance/swype/view/ShowHideAnimManager;->animHide:Landroid/animation/Animator;

    .line 49
    return-void

    :cond_1
    move-object v0, v1

    .line 45
    goto :goto_0
.end method

.method private static cancelAnim(Ljava/util/Map;Landroid/view/View;)Z
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Landroid/view/View;",
            "Landroid/animation/Animator;",
            ">;",
            "Landroid/view/View;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 168
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Landroid/view/View;Landroid/animation/Animator;>;"
    const/4 v1, 0x0

    .line 169
    .local v1, "canceled":Z
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 170
    .local v0, "anim":Landroid/animation/Animator;
    if-eqz v0, :cond_0

    .line 176
    sget-object v2, Lcom/nuance/swype/view/ShowHideAnimManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v3, "cancelAnim(): cancel..."

    invoke-virtual {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 177
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 178
    const/4 v1, 0x1

    .line 180
    :cond_0
    return v1
.end method

.method private initAnimation(Landroid/view/View;Landroid/animation/Animator;Z)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "proto"    # Landroid/animation/Animator;
    .param p3, "isShow"    # Z

    .prologue
    .line 145
    if-eqz p2, :cond_1

    .line 146
    if-eqz p3, :cond_0

    .line 147
    sget-object v0, Lcom/nuance/swype/view/ShowHideAnimManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "initAnimation(): start show..."

    invoke-virtual {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 148
    iget-object v0, p0, Lcom/nuance/swype/view/ShowHideAnimManager;->showPending:Ljava/util/LinkedHashMap;

    new-instance v1, Lcom/nuance/swype/view/ShowHideAnimManager$AnimListener;

    invoke-direct {v1, p0, p1, p3}, Lcom/nuance/swype/view/ShowHideAnimManager$AnimListener;-><init>(Lcom/nuance/swype/view/ShowHideAnimManager;Landroid/view/View;Z)V

    invoke-static {v0, p1, p2, v1}, Lcom/nuance/swype/view/ShowHideAnimManager;->startAnim(Ljava/util/Map;Landroid/view/View;Landroid/animation/Animator;Lcom/nuance/swype/view/ShowHideAnimManager$AnimListener;)V

    .line 153
    :goto_0
    const/4 v0, 0x1

    .line 155
    :goto_1
    return v0

    .line 150
    :cond_0
    sget-object v0, Lcom/nuance/swype/view/ShowHideAnimManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "initAnimation(): start hide..."

    invoke-virtual {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 151
    iget-object v0, p0, Lcom/nuance/swype/view/ShowHideAnimManager;->hidePending:Ljava/util/LinkedHashMap;

    new-instance v1, Lcom/nuance/swype/view/ShowHideAnimManager$AnimListener;

    invoke-direct {v1, p0, p1, p3}, Lcom/nuance/swype/view/ShowHideAnimManager$AnimListener;-><init>(Lcom/nuance/swype/view/ShowHideAnimManager;Landroid/view/View;Z)V

    invoke-static {v0, p1, p2, v1}, Lcom/nuance/swype/view/ShowHideAnimManager;->startAnim(Ljava/util/Map;Landroid/view/View;Landroid/animation/Animator;Lcom/nuance/swype/view/ShowHideAnimManager$AnimListener;)V

    goto :goto_0

    .line 155
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static loadAnim(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/animation/Animator;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attr"    # Landroid/content/res/TypedArray;
    .param p2, "idx"    # I

    .prologue
    .line 57
    const/4 v1, 0x0

    .line 58
    .local v1, "out":Landroid/animation/Animator;
    const/4 v2, 0x0

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 59
    .local v0, "id":I
    if-lez v0, :cond_0

    .line 60
    invoke-static {p0, v0}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v1

    .line 62
    :cond_0
    return-object v1
.end method

.method private static startAnim(Ljava/util/Map;Landroid/view/View;Landroid/animation/Animator;Lcom/nuance/swype/view/ShowHideAnimManager$AnimListener;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "proto"    # Landroid/animation/Animator;
    .param p3, "listener"    # Lcom/nuance/swype/view/ShowHideAnimManager$AnimListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Landroid/view/View;",
            "Landroid/animation/Animator;",
            ">;",
            "Landroid/view/View;",
            "Landroid/animation/Animator;",
            "Lcom/nuance/swype/view/ShowHideAnimManager$AnimListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 160
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Landroid/view/View;Landroid/animation/Animator;>;"
    invoke-virtual {p2}, Landroid/animation/Animator;->clone()Landroid/animation/Animator;

    move-result-object v0

    .line 161
    .local v0, "anim":Landroid/animation/Animator;
    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    invoke-virtual {v0, p3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 163
    invoke-virtual {v0, p1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 164
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 165
    return-void
.end method


# virtual methods
.method public final hide(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/nuance/swype/view/ShowHideAnimManager;->showPending:Ljava/util/LinkedHashMap;

    invoke-static {v0, p1}, Lcom/nuance/swype/view/ShowHideAnimManager;->cancelAnim(Ljava/util/Map;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 134
    invoke-virtual {p0, p1}, Lcom/nuance/swype/view/ShowHideAnimManager;->onHideComplete(Landroid/view/View;)V

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 138
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/view/ShowHideAnimManager;->hidePending:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/view/ShowHideAnimManager;->animHide:Landroid/animation/Animator;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/nuance/swype/view/ShowHideAnimManager;->initAnimation(Landroid/view/View;Landroid/animation/Animator;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 140
    invoke-virtual {p0, p1}, Lcom/nuance/swype/view/ShowHideAnimManager;->onHideComplete(Landroid/view/View;)V

    goto :goto_0
.end method

.method protected final onHideComplete(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/nuance/swype/view/ShowHideAnimManager;->hidePending:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    iget-object v0, p0, Lcom/nuance/swype/view/ShowHideAnimManager;->listener:Lcom/nuance/swype/view/ShowHideAnimManager$Listener;

    invoke-interface {v0, p1}, Lcom/nuance/swype/view/ShowHideAnimManager$Listener;->onHideComplete(Landroid/view/View;)V

    .line 79
    return-void
.end method

.method protected final onShowComplete(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/nuance/swype/view/ShowHideAnimManager;->showPending:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    iget-object v0, p0, Lcom/nuance/swype/view/ShowHideAnimManager;->listener:Lcom/nuance/swype/view/ShowHideAnimManager$Listener;

    invoke-interface {v0, p1}, Lcom/nuance/swype/view/ShowHideAnimManager$Listener;->onShowComplete(Landroid/view/View;)V

    .line 84
    return-void
.end method

.method public final setListener(Lcom/nuance/swype/view/ShowHideAnimManager$Listener;)V
    .locals 0
    .param p1, "listener"    # Lcom/nuance/swype/view/ShowHideAnimManager$Listener;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/nuance/swype/view/ShowHideAnimManager;->listener:Lcom/nuance/swype/view/ShowHideAnimManager$Listener;

    .line 74
    return-void
.end method

.method public final show(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/nuance/swype/view/ShowHideAnimManager;->hidePending:Ljava/util/LinkedHashMap;

    invoke-static {v0, p1}, Lcom/nuance/swype/view/ShowHideAnimManager;->cancelAnim(Ljava/util/Map;Landroid/view/View;)Z

    .line 119
    iget-object v0, p0, Lcom/nuance/swype/view/ShowHideAnimManager;->animShow:Landroid/animation/Animator;

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/nuance/swype/view/ShowHideAnimManager;->initAnimation(Landroid/view/View;Landroid/animation/Animator;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 121
    invoke-virtual {p0, p1}, Lcom/nuance/swype/view/ShowHideAnimManager;->onShowComplete(Landroid/view/View;)V

    .line 123
    :cond_0
    return-void
.end method
