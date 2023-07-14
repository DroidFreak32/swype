.class public final Lcom/nuance/swype/view/ShowHideAnimManager;
.super Ljava/lang/Object;
.source "ShowHideAnimManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/view/ShowHideAnimManager$AnimListener;,
        Lcom/nuance/swype/view/ShowHideAnimManager$Listener;
    }
.end annotation


# static fields
.field protected static final log:Lcom/nuance/swype/util/LogManager$Log;


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

.field public listener:Lcom/nuance/swype/view/ShowHideAnimManager$Listener;

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
    .line 28
    const-string/jumbo v0, "ShowHideAnimManager"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/view/ShowHideAnimManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-void
.end method

.method public constructor <init>(Landroid/animation/Animator;Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animShow"    # Landroid/animation/Animator;
    .param p2, "animHide"    # Landroid/animation/Animator;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1025
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 36
    iput-object v0, p0, Lcom/nuance/swype/view/ShowHideAnimManager;->hidePending:Ljava/util/LinkedHashMap;

    .line 2025
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 37
    iput-object v0, p0, Lcom/nuance/swype/view/ShowHideAnimManager;->showPending:Ljava/util/LinkedHashMap;

    .line 41
    iput-object p1, p0, Lcom/nuance/swype/view/ShowHideAnimManager;->animShow:Landroid/animation/Animator;

    .line 42
    iput-object p2, p0, Lcom/nuance/swype/view/ShowHideAnimManager;->animHide:Landroid/animation/Animator;

    .line 43
    return-void
.end method

.method private static cancelAnim(Ljava/util/Map;Landroid/view/View;Z)Z
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "resetToEnd"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Landroid/view/View;",
            "Landroid/animation/Animator;",
            ">;",
            "Landroid/view/View;",
            "Z)Z"
        }
    .end annotation

    .prologue
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Landroid/view/View;Landroid/animation/Animator;>;"
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 215
    const/4 v1, 0x0

    .line 216
    .local v1, "canceled":Z
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 217
    .local v0, "anim":Landroid/animation/Animator;
    if-eqz v0, :cond_0

    .line 222
    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    if-eqz p2, :cond_1

    .line 225
    sget-object v2, Lcom/nuance/swype/view/ShowHideAnimManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "cancelAnim(): reset to end"

    aput-object v4, v3, v5

    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 226
    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    .line 238
    :goto_0
    const/4 v1, 0x1

    .line 240
    :cond_0
    return v1

    .line 228
    :cond_1
    instance-of v2, v0, Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_2

    .line 230
    sget-object v2, Lcom/nuance/swype/view/ShowHideAnimManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "cancelAnim(): reset to start"

    aput-object v4, v3, v5

    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    move-object v2, v0

    .line 231
    check-cast v2, Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->reverse()V

    .line 232
    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    goto :goto_0

    .line 234
    :cond_2
    sget-object v2, Lcom/nuance/swype/view/ShowHideAnimManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "cancelAnim(): stop at current step"

    aput-object v4, v3, v5

    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 235
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    goto :goto_0
.end method

.method private cancelHideAnim(Landroid/view/View;Z)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "resetToEnd"    # Z

    .prologue
    .line 252
    iget-object v0, p0, Lcom/nuance/swype/view/ShowHideAnimManager;->hidePending:Ljava/util/LinkedHashMap;

    invoke-static {v0, p1, p2}, Lcom/nuance/swype/view/ShowHideAnimManager;->cancelAnim(Ljava/util/Map;Landroid/view/View;Z)Z

    move-result v0

    return v0
.end method

.method private cancelShowAnim(Landroid/view/View;Z)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "resetToEnd"    # Z

    .prologue
    .line 256
    iget-object v0, p0, Lcom/nuance/swype/view/ShowHideAnimManager;->showPending:Ljava/util/LinkedHashMap;

    invoke-static {v0, p1, p2}, Lcom/nuance/swype/view/ShowHideAnimManager;->cancelAnim(Ljava/util/Map;Landroid/view/View;Z)Z

    move-result v0

    return v0
.end method

.method public static createDefaultListener$378274fe()Lcom/nuance/swype/view/ShowHideAnimManager$Listener;
    .locals 1

    .prologue
    .line 61
    new-instance v0, Lcom/nuance/swype/view/ShowHideAnimManager$1;

    invoke-direct {v0}, Lcom/nuance/swype/view/ShowHideAnimManager$1;-><init>()V

    return-object v0
.end method

.method private initAnimation(Landroid/view/View;Landroid/animation/Animator;Z)Z
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "proto"    # Landroid/animation/Animator;
    .param p3, "isShow"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 190
    if-eqz p2, :cond_1

    .line 191
    sget-object v2, Lcom/nuance/swype/view/ShowHideAnimManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v3, v0, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "initAnimation(): starting; is show: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 192
    if-eqz p3, :cond_0

    .line 193
    iget-object v1, p0, Lcom/nuance/swype/view/ShowHideAnimManager;->showPending:Ljava/util/LinkedHashMap;

    new-instance v2, Lcom/nuance/swype/view/ShowHideAnimManager$AnimListener;

    invoke-direct {v2, p0, p1, p3}, Lcom/nuance/swype/view/ShowHideAnimManager$AnimListener;-><init>(Lcom/nuance/swype/view/ShowHideAnimManager;Landroid/view/View;Z)V

    invoke-static {v1, p1, p2, v2}, Lcom/nuance/swype/view/ShowHideAnimManager;->startAnim(Ljava/util/Map;Landroid/view/View;Landroid/animation/Animator;Lcom/nuance/swype/view/ShowHideAnimManager$AnimListener;)V

    .line 199
    :goto_0
    return v0

    .line 195
    :cond_0
    iget-object v1, p0, Lcom/nuance/swype/view/ShowHideAnimManager;->hidePending:Ljava/util/LinkedHashMap;

    new-instance v2, Lcom/nuance/swype/view/ShowHideAnimManager$AnimListener;

    invoke-direct {v2, p0, p1, p3}, Lcom/nuance/swype/view/ShowHideAnimManager$AnimListener;-><init>(Lcom/nuance/swype/view/ShowHideAnimManager;Landroid/view/View;Z)V

    invoke-static {v1, p1, p2, v2}, Lcom/nuance/swype/view/ShowHideAnimManager;->startAnim(Ljava/util/Map;Landroid/view/View;Landroid/animation/Animator;Lcom/nuance/swype/view/ShowHideAnimManager$AnimListener;)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 199
    goto :goto_0
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
    .line 204
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Landroid/view/View;Landroid/animation/Animator;>;"
    invoke-virtual {p2}, Landroid/animation/Animator;->clone()Landroid/animation/Animator;

    move-result-object v0

    .line 205
    .local v0, "anim":Landroid/animation/Animator;
    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    invoke-virtual {v0, p3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 207
    invoke-virtual {v0, p1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 208
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 209
    return-void
.end method


# virtual methods
.method public final hide(Landroid/view/View;Z)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "skipAnim"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 168
    invoke-direct {p0, p1, v5}, Lcom/nuance/swype/view/ShowHideAnimManager;->cancelShowAnim(Landroid/view/View;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 169
    sget-object v0, Lcom/nuance/swype/view/ShowHideAnimManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v1, v4, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "hide(): hide while showing (hide without anim): "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 170
    invoke-virtual {p0, p1, v4}, Lcom/nuance/swype/view/ShowHideAnimManager;->onHideComplete(Landroid/view/View;Z)V

    .line 187
    :cond_0
    :goto_0
    return-void

    .line 174
    :cond_1
    if-eqz p2, :cond_2

    .line 176
    invoke-direct {p0, p1, v4}, Lcom/nuance/swype/view/ShowHideAnimManager;->cancelHideAnim(Landroid/view/View;Z)Z

    .line 177
    invoke-virtual {p0, p1, v4}, Lcom/nuance/swype/view/ShowHideAnimManager;->onHideComplete(Landroid/view/View;Z)V

    goto :goto_0

    .line 3244
    :cond_2
    iget-object v0, p0, Lcom/nuance/swype/view/ShowHideAnimManager;->hidePending:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 178
    if-nez v0, :cond_3

    .line 180
    iget-object v0, p0, Lcom/nuance/swype/view/ShowHideAnimManager;->animHide:Landroid/animation/Animator;

    invoke-direct {p0, p1, v0, v5}, Lcom/nuance/swype/view/ShowHideAnimManager;->initAnimation(Landroid/view/View;Landroid/animation/Animator;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 182
    invoke-virtual {p0, p1, v4}, Lcom/nuance/swype/view/ShowHideAnimManager;->onHideComplete(Landroid/view/View;Z)V

    goto :goto_0

    .line 185
    :cond_3
    sget-object v0, Lcom/nuance/swype/view/ShowHideAnimManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v1, v4, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "hide(): hide pending (ignoring): "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected final onHideComplete(Landroid/view/View;Z)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "alwaysNotify"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 84
    iget-object v0, p0, Lcom/nuance/swype/view/ShowHideAnimManager;->hidePending:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 85
    :goto_0
    if-nez v0, :cond_0

    if-eqz p2, :cond_2

    .line 86
    :cond_0
    sget-object v0, Lcom/nuance/swype/view/ShowHideAnimManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "onHideComplete(): view: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 87
    iget-object v0, p0, Lcom/nuance/swype/view/ShowHideAnimManager;->listener:Lcom/nuance/swype/view/ShowHideAnimManager$Listener;

    invoke-interface {v0, p1}, Lcom/nuance/swype/view/ShowHideAnimManager$Listener;->onHideComplete(Landroid/view/View;)V

    .line 90
    :goto_1
    return-void

    :cond_1
    move v0, v2

    .line 84
    goto :goto_0

    .line 89
    :cond_2
    sget-object v0, Lcom/nuance/swype/view/ShowHideAnimManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "onHideComplete(): view hide not pending: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    goto :goto_1
.end method

.method protected final onShowComplete(Landroid/view/View;Z)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "alwaysNotify"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 93
    iget-object v0, p0, Lcom/nuance/swype/view/ShowHideAnimManager;->showPending:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 94
    :goto_0
    if-nez v0, :cond_0

    if-eqz p2, :cond_2

    .line 95
    :cond_0
    sget-object v0, Lcom/nuance/swype/view/ShowHideAnimManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "onShowComplete(): view: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 100
    :goto_1
    return-void

    :cond_1
    move v0, v2

    .line 93
    goto :goto_0

    .line 98
    :cond_2
    sget-object v0, Lcom/nuance/swype/view/ShowHideAnimManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "onShowComplete(): view show not pending: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public final show(Landroid/view/View;Z)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "skipAnim"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 139
    invoke-direct {p0, p1, v3}, Lcom/nuance/swype/view/ShowHideAnimManager;->cancelHideAnim(Landroid/view/View;Z)Z

    .line 140
    if-eqz p2, :cond_1

    .line 142
    invoke-direct {p0, p1, v1}, Lcom/nuance/swype/view/ShowHideAnimManager;->cancelShowAnim(Landroid/view/View;Z)Z

    .line 143
    invoke-virtual {p0, p1, v1}, Lcom/nuance/swype/view/ShowHideAnimManager;->onShowComplete(Landroid/view/View;Z)V

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 2248
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/view/ShowHideAnimManager;->showPending:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 144
    if-nez v0, :cond_2

    .line 146
    iget-object v0, p0, Lcom/nuance/swype/view/ShowHideAnimManager;->animShow:Landroid/animation/Animator;

    invoke-direct {p0, p1, v0, v1}, Lcom/nuance/swype/view/ShowHideAnimManager;->initAnimation(Landroid/view/View;Landroid/animation/Animator;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 148
    invoke-virtual {p0, p1, v1}, Lcom/nuance/swype/view/ShowHideAnimManager;->onShowComplete(Landroid/view/View;Z)V

    goto :goto_0

    .line 151
    :cond_2
    sget-object v0, Lcom/nuance/swype/view/ShowHideAnimManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "show(): show pending (ignore)"

    aput-object v2, v1, v3

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    goto :goto_0
.end method
