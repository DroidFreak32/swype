.class public final Lcom/nuance/swype/util/drawable/KeyboardBackgroundManager$2;
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

.field final synthetic val$height:I

.field final synthetic val$width:I


# direct methods
.method public constructor <init>(Lcom/nuance/swype/util/drawable/KeyboardBackgroundManager;II)V
    .registers 4
    .param p1, "this$0"    # Lcom/nuance/swype/util/drawable/KeyboardBackgroundManager;

    .prologue
    .line 212
    iput-object p1, p0, Lcom/nuance/swype/util/drawable/KeyboardBackgroundManager$2;->this$0:Lcom/nuance/swype/util/drawable/KeyboardBackgroundManager;

    iput p2, p0, Lcom/nuance/swype/util/drawable/KeyboardBackgroundManager$2;->val$width:I

    iput p3, p0, Lcom/nuance/swype/util/drawable/KeyboardBackgroundManager$2;->val$height:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .prologue
    .line 215
    # getter for: Lcom/nuance/swype/util/drawable/KeyboardBackgroundManager;->log:Lcom/nuance/swype/util/LogManager$Log;
    invoke-static {}, Lcom/nuance/swype/util/drawable/KeyboardBackgroundManager;->access$000()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "Saving cached bitmap"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 216
    iget-object v0, p0, Lcom/nuance/swype/util/drawable/KeyboardBackgroundManager$2;->this$0:Lcom/nuance/swype/util/drawable/KeyboardBackgroundManager;

    iget v1, p0, Lcom/nuance/swype/util/drawable/KeyboardBackgroundManager$2;->val$width:I

    iget v2, p0, Lcom/nuance/swype/util/drawable/KeyboardBackgroundManager$2;->val$height:I

    # invokes: Lcom/nuance/swype/util/drawable/KeyboardBackgroundManager;->saveCachedDrawable(II)V
    invoke-static {v0, v1, v2}, Lcom/nuance/swype/util/drawable/KeyboardBackgroundManager;->access$200(Lcom/nuance/swype/util/drawable/KeyboardBackgroundManager;II)V

    .line 217
    return-void
.end method
