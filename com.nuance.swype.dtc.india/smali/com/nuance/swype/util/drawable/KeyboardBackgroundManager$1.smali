.class public final Lcom/nuance/swype/util/drawable/KeyboardBackgroundManager$1;
.super Ljava/lang/Object;
.source "KeyboardBackgroundManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/util/drawable/KeyboardBackgroundManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/util/drawable/KeyboardBackgroundManager;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$mode:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

.field final synthetic val$orientation:I

.field final synthetic val$sku:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/nuance/swype/util/drawable/KeyboardBackgroundManager;Ljava/lang/String;Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;ILandroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/nuance/swype/util/drawable/KeyboardBackgroundManager;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/nuance/swype/util/drawable/KeyboardBackgroundManager$1;->this$0:Lcom/nuance/swype/util/drawable/KeyboardBackgroundManager;

    iput-object p2, p0, Lcom/nuance/swype/util/drawable/KeyboardBackgroundManager$1;->val$sku:Ljava/lang/String;

    iput-object p3, p0, Lcom/nuance/swype/util/drawable/KeyboardBackgroundManager$1;->val$mode:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    iput p4, p0, Lcom/nuance/swype/util/drawable/KeyboardBackgroundManager$1;->val$orientation:I

    iput-object p5, p0, Lcom/nuance/swype/util/drawable/KeyboardBackgroundManager$1;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 131
    invoke-static {}, Lcom/nuance/swype/util/drawable/KeyboardBackgroundManager;->access$000()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "Started new thread to load background"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 132
    iget-object v0, p0, Lcom/nuance/swype/util/drawable/KeyboardBackgroundManager$1;->this$0:Lcom/nuance/swype/util/drawable/KeyboardBackgroundManager;

    iget-object v1, p0, Lcom/nuance/swype/util/drawable/KeyboardBackgroundManager$1;->val$sku:Ljava/lang/String;

    iget-object v2, p0, Lcom/nuance/swype/util/drawable/KeyboardBackgroundManager$1;->val$mode:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    iget v3, p0, Lcom/nuance/swype/util/drawable/KeyboardBackgroundManager$1;->val$orientation:I

    iget-object v4, p0, Lcom/nuance/swype/util/drawable/KeyboardBackgroundManager$1;->val$handler:Landroid/os/Handler;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/nuance/swype/util/drawable/KeyboardBackgroundManager;->access$100(Lcom/nuance/swype/util/drawable/KeyboardBackgroundManager;Ljava/lang/String;Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;ILandroid/os/Handler;)V

    .line 133
    return-void
.end method
