.class Lcom/nuance/swype/input/chinese/symbol/SymbolInputController$2;
.super Ljava/lang/Object;
.source "SymbolInputController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->initActionKeys()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;)V
    .registers 2
    .param p1, "this$0"    # Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;

    .prologue
    .line 310
    iput-object p1, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController$2;->this$0:Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 313
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController$2;->this$0:Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->playKeyFeedback(I)V

    .line 314
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController$2;->this$0:Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/symbol/SymbolInputController;->hide()V

    .line 315
    return-void
.end method
