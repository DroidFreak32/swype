.class final Lcom/nuance/swype/inapp/CatalogManager$SerialExecutor$1;
.super Ljava/lang/Object;
.source "CatalogManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/inapp/CatalogManager$SerialExecutor;->execute(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/inapp/CatalogManager$SerialExecutor;

.field final synthetic val$r:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/nuance/swype/inapp/CatalogManager$SerialExecutor;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/nuance/swype/inapp/CatalogManager$SerialExecutor;

    .prologue
    .line 157
    iput-object p1, p0, Lcom/nuance/swype/inapp/CatalogManager$SerialExecutor$1;->this$0:Lcom/nuance/swype/inapp/CatalogManager$SerialExecutor;

    iput-object p2, p0, Lcom/nuance/swype/inapp/CatalogManager$SerialExecutor$1;->val$r:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 160
    :try_start_0
    iget-object v0, p0, Lcom/nuance/swype/inapp/CatalogManager$SerialExecutor$1;->val$r:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    iget-object v0, p0, Lcom/nuance/swype/inapp/CatalogManager$SerialExecutor$1;->this$0:Lcom/nuance/swype/inapp/CatalogManager$SerialExecutor;

    invoke-virtual {v0}, Lcom/nuance/swype/inapp/CatalogManager$SerialExecutor;->scheduleNext()V

    .line 163
    return-void

    .line 162
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/nuance/swype/inapp/CatalogManager$SerialExecutor$1;->this$0:Lcom/nuance/swype/inapp/CatalogManager$SerialExecutor;

    invoke-virtual {v1}, Lcom/nuance/swype/inapp/CatalogManager$SerialExecutor;->scheduleNext()V

    throw v0
.end method
