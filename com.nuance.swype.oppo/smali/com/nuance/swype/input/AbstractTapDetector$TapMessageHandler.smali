.class Lcom/nuance/swype/input/AbstractTapDetector$TapMessageHandler;
.super Landroid/os/Handler;
.source "AbstractTapDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/AbstractTapDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
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
    .locals 6
    .param p1, "tapHandlers"    # [Lcom/nuance/swype/input/AbstractTapDetector$TapHandler;

    .prologue
    .line 182
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 183
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/nuance/swype/input/AbstractTapDetector$TapMessageHandler;->tapHandlersRef:Ljava/util/List;

    .line 184
    move-object v0, p1

    .local v0, "arr$":[Lcom/nuance/swype/input/AbstractTapDetector$TapHandler;
    array-length v3, p1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 185
    .local v1, "handler":Lcom/nuance/swype/input/AbstractTapDetector$TapHandler;
    iget-object v4, p0, Lcom/nuance/swype/input/AbstractTapDetector$TapMessageHandler;->tapHandlersRef:Ljava/util/List;

    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 187
    .end local v1    # "handler":Lcom/nuance/swype/input/AbstractTapDetector$TapHandler;
    :cond_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x3

    .line 193
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 215
    :cond_0
    return-void

    .line 195
    :pswitch_0
    invoke-virtual {p0, v4}, Lcom/nuance/swype/input/AbstractTapDetector$TapMessageHandler;->hasMessages(I)Z

    move-result v2

    .line 196
    .local v2, "resyncCache":Z
    if-eqz v2, :cond_1

    .line 197
    invoke-virtual {p0, v4}, Lcom/nuance/swype/input/AbstractTapDetector$TapMessageHandler;->removeMessages(I)V

    .line 199
    :cond_1
    iget-object v3, p0, Lcom/nuance/swype/input/AbstractTapDetector$TapMessageHandler;->tapHandlersRef:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 200
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/AbstractTapDetector$TapHandler;

    .line 201
    .local v0, "handler":Lcom/nuance/swype/input/AbstractTapDetector$TapHandler;
    if-eqz v0, :cond_2

    invoke-interface {v0, v2}, Lcom/nuance/swype/input/AbstractTapDetector$TapHandler;->onSingleTap(Z)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 207
    .end local v0    # "handler":Lcom/nuance/swype/input/AbstractTapDetector$TapHandler;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "resyncCache":Z
    :pswitch_1
    iget-object v3, p0, Lcom/nuance/swype/input/AbstractTapDetector$TapMessageHandler;->tapHandlersRef:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 208
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/AbstractTapDetector$TapHandler;

    .line 209
    .restart local v0    # "handler":Lcom/nuance/swype/input/AbstractTapDetector$TapHandler;
    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/nuance/swype/input/AbstractTapDetector$TapHandler;->onDoubleTap()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 193
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
