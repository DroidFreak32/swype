.class Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryHandlerThread;
.super Lcom/nuance/connect/util/HandlerThread;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/internal/CategoryServiceInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CategoryHandlerThread"
.end annotation


# instance fields
.field private final parent:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/nuance/connect/internal/CategoryServiceInternal;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/nuance/connect/internal/CategoryServiceInternal;)V
    .registers 3

    invoke-direct {p0}, Lcom/nuance/connect/util/HandlerThread;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryHandlerThread;->parent:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method protected handleMessage(Landroid/os/Message;)Landroid/os/Message;
    .registers 5

    iget-object v0, p0, Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryHandlerThread;->parent:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/internal/CategoryServiceInternal;

    if-eqz v0, :cond_1b

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-static {v1}, Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryEvents;->fromInt(I)Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryEvents;

    move-result-object v1

    sget-object v2, Lcom/nuance/connect/internal/CategoryServiceInternal$12;->$SwitchMap$com$nuance$connect$internal$CategoryServiceInternal$CategoryEvents:[I

    invoke-virtual {v1}, Lcom/nuance/connect/internal/CategoryServiceInternal$CategoryEvents;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_9c

    :cond_1b
    :goto_1b
    const/4 v0, 0x0

    return-object v0

    :pswitch_1d
    invoke-static {}, Lcom/nuance/connect/util/Logger;->getTrace()Lcom/nuance/connect/util/Logger$Trace;

    move-result-object v1

    const-string/jumbo v2, "onDictionariesUpdated"

    invoke-virtual {v1, v2}, Lcom/nuance/connect/util/Logger$Trace;->enterMethod(Ljava/lang/String;)V

    # invokes: Lcom/nuance/connect/internal/CategoryServiceInternal;->onDictionariesUpdated()V
    invoke-static {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$200(Lcom/nuance/connect/internal/CategoryServiceInternal;)V

    invoke-static {}, Lcom/nuance/connect/util/Logger;->getTrace()Lcom/nuance/connect/util/Logger$Trace;

    move-result-object v0

    const-string/jumbo v1, "onDictionariesUpdated"

    invoke-virtual {v0, v1}, Lcom/nuance/connect/util/Logger$Trace;->exitMethod(Ljava/lang/String;)V

    goto :goto_1b

    :pswitch_35
    invoke-static {}, Lcom/nuance/connect/util/Logger;->getTrace()Lcom/nuance/connect/util/Logger$Trace;

    move-result-object v1

    const-string/jumbo v2, "onCatalogsChanged"

    invoke-virtual {v1, v2}, Lcom/nuance/connect/util/Logger$Trace;->enterMethod(Ljava/lang/String;)V

    # invokes: Lcom/nuance/connect/internal/CategoryServiceInternal;->onCatalogsChanged()V
    invoke-static {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$300(Lcom/nuance/connect/internal/CategoryServiceInternal;)V

    invoke-static {}, Lcom/nuance/connect/util/Logger;->getTrace()Lcom/nuance/connect/util/Logger$Trace;

    move-result-object v0

    const-string/jumbo v1, "onCatalogsChanged"

    invoke-virtual {v0, v1}, Lcom/nuance/connect/util/Logger$Trace;->exitMethod(Ljava/lang/String;)V

    goto :goto_1b

    :pswitch_4d
    invoke-static {}, Lcom/nuance/connect/util/Logger;->getTrace()Lcom/nuance/connect/util/Logger$Trace;

    move-result-object v1

    const-string/jumbo v2, "onCatalogsPricesSet"

    invoke-virtual {v1, v2}, Lcom/nuance/connect/util/Logger$Trace;->enterMethod(Ljava/lang/String;)V

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map;

    # invokes: Lcom/nuance/connect/internal/CategoryServiceInternal;->onCatalogsPricesSet(Ljava/util/Map;)V
    invoke-static {v0, v1}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$400(Lcom/nuance/connect/internal/CategoryServiceInternal;Ljava/util/Map;)V

    invoke-static {}, Lcom/nuance/connect/util/Logger;->getTrace()Lcom/nuance/connect/util/Logger$Trace;

    move-result-object v0

    const-string/jumbo v1, "onCatalogsPricesSet"

    invoke-virtual {v0, v1}, Lcom/nuance/connect/util/Logger$Trace;->exitMethod(Ljava/lang/String;)V

    goto :goto_1b

    :pswitch_69
    invoke-static {}, Lcom/nuance/connect/util/Logger;->getTrace()Lcom/nuance/connect/util/Logger$Trace;

    move-result-object v1

    const-string/jumbo v2, "onCatalogPricesReset"

    invoke-virtual {v1, v2}, Lcom/nuance/connect/util/Logger$Trace;->enterMethod(Ljava/lang/String;)V

    # invokes: Lcom/nuance/connect/internal/CategoryServiceInternal;->onCatalogPricesReset()V
    invoke-static {v0}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$500(Lcom/nuance/connect/internal/CategoryServiceInternal;)V

    invoke-static {}, Lcom/nuance/connect/util/Logger;->getTrace()Lcom/nuance/connect/util/Logger$Trace;

    move-result-object v0

    const-string/jumbo v1, "onCatalogPricesReset"

    invoke-virtual {v0, v1}, Lcom/nuance/connect/util/Logger$Trace;->exitMethod(Ljava/lang/String;)V

    goto :goto_1b

    :pswitch_81
    # getter for: Lcom/nuance/connect/internal/CategoryServiceInternal;->log:Lcom/nuance/connect/util/Logger$Log;
    invoke-static {}, Lcom/nuance/connect/internal/CategoryServiceInternal;->access$600()Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "unknown events: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->w(Ljava/lang/Object;)V

    goto :goto_1b

    nop

    :pswitch_data_9c
    .packed-switch 0x1
        :pswitch_1d
        :pswitch_35
        :pswitch_4d
        :pswitch_69
        :pswitch_81
    .end packed-switch
.end method
