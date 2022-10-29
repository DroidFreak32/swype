.class Lcom/nuance/swype/input/emoji/EmojiInputController$7;
.super Ljava/lang/Object;
.source "EmojiInputController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/emoji/EmojiInputController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/emoji/EmojiInputController;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/emoji/EmojiInputController;)V
    .registers 2
    .param p1, "this$0"    # Lcom/nuance/swype/input/emoji/EmojiInputController;

    .prologue
    .line 652
    iput-object p1, p0, Lcom/nuance/swype/input/emoji/EmojiInputController$7;->this$0:Lcom/nuance/swype/input/emoji/EmojiInputController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 655
    # getter for: Lcom/nuance/swype/input/emoji/EmojiInputController;->log:Lcom/nuance/swype/util/LogManager$Log;
    invoke-static {}, Lcom/nuance/swype/input/emoji/EmojiInputController;->access$100()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "run(): resetting show on start flag"

    aput-object v2, v1, v3

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 656
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiInputController$7;->this$0:Lcom/nuance/swype/input/emoji/EmojiInputController;

    # setter for: Lcom/nuance/swype/input/emoji/EmojiInputController;->showOnStart:Z
    invoke-static {v0, v3}, Lcom/nuance/swype/input/emoji/EmojiInputController;->access$902(Lcom/nuance/swype/input/emoji/EmojiInputController;Z)Z

    .line 657
    return-void
.end method
