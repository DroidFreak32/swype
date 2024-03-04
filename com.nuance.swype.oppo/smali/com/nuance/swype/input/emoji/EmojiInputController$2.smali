.class Lcom/nuance/swype/input/emoji/EmojiInputController$2;
.super Ljava/lang/Object;
.source "EmojiInputController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/emoji/EmojiInputController;->initializeActionKeys()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/emoji/EmojiInputController;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/emoji/EmojiInputController;)V
    .locals 0

    .prologue
    .line 391
    iput-object p1, p0, Lcom/nuance/swype/input/emoji/EmojiInputController$2;->this$0:Lcom/nuance/swype/input/emoji/EmojiInputController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 394
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiInputController$2;->this$0:Lcom/nuance/swype/input/emoji/EmojiInputController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/emoji/EmojiInputController;->playKeySound(I)V

    .line 395
    iget-object v0, p0, Lcom/nuance/swype/input/emoji/EmojiInputController$2;->this$0:Lcom/nuance/swype/input/emoji/EmojiInputController;

    invoke-virtual {v0}, Lcom/nuance/swype/input/emoji/EmojiInputController;->hide()V

    .line 396
    return-void
.end method
