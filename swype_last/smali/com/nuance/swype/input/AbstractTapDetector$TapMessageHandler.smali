.class Lcom/nuance/swype/input/AbstractTapDetector$TapMessageHandler;
.super Landroid/os/Handler;
.source "AbstractTapDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/AbstractTapDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TapMessageHandler"
.end annotation


# instance fields
.field private final tapHandlersRef:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/nuance/swype/input/AbstractTapDetector$TapHandler;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([Lcom/nuance/swype/input/AbstractTapDetector$TapHandler;)V
    .registers 7
    .param p1, "tapHandlers"    # [Lcom/nuance/swype/input/AbstractTapDetector$TapHandler;

    .prologue
    .line 182
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 183
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/nuance/swype/input/AbstractTapDetector$TapMessageHandler;->tapHandlersRef:Ljava/util/List;

    .line 184
    array-length v2, p1

    const/4 v1, 0x0

    :goto_c
    if-ge v1, v2, :cond_1d

    aget-object v0, p1, v1

    .line 185
    .local v0, "handler":Lcom/nuance/swype/input/AbstractTapDetector$TapHandler;
    iget-object v3, p0, Lcom/nuance/swype/input/AbstractTapDetector$TapMessageHandler;->tapHandlersRef:Ljava/util/List;

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 187
    .end local v0    # "handler":Lcom/nuance/swype/input/AbstractTapDetector$TapHandler;
    :cond_1d
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x3

    .line 193
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_54

    .line 215
    :cond_6
    return-void

    .line 195
    :pswitch_7
    invoke-virtual {p0, v3}, Lcom/nuance/swype/input/AbstractTapDetector$TapMessageHandler;->hasMessages(I)Z

    move-result v1

    .line 196
    .local v1, "reSyncCache":Z
    if-eqz v1, :cond_10

    .line 197
    invoke-virtual {p0, v3}, Lcom/nuance/swype/input/AbstractTapDetector$TapMessageHandler;->removeMessages(I)V

    .line 199
    :cond_10
    iget-object v2, p0, Lcom/nuance/swype/input/AbstractTapDetector$TapMessageHandler;->tapHandlersRef:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_16
    :goto_16
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 200
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/AbstractTapDetector$TapHandler;

    .line 201
    .local v0, "handler":Lcom/nuance/swype/input/AbstractTapDetector$TapHandler;
    if-eqz v0, :cond_16

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/nuance/swype/input/AbstractTapDetector$TapHandler;->onSingleTap(ZZ)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_16

    .line 207
    .end local v0    # "handler":Lcom/nuance/swype/input/AbstractTapDetector$TapHandler;
    .end local v1    # "reSyncCache":Z
    :pswitch_32
    iget-object v2, p0, Lcom/nuance/swype/input/AbstractTapDetector$TapMessageHandler;->tapHandlersRef:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_38
    :goto_38
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 208
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/AbstractTapDetector$TapHandler;

    .line 209
    .restart local v0    # "handler":Lcom/nuance/swype/input/AbstractTapDetector$TapHandler;
    if-eqz v0, :cond_38

    invoke-interface {v0}, Lcom/nuance/swype/input/AbstractTapDetector$TapHandler;->onDoubleTap()Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_38

    .line 193
    nop

    :pswitch_data_54
    .packed-switch 0x1
        :pswitch_7
        :pswitch_32
    .end packed-switch
.end method
