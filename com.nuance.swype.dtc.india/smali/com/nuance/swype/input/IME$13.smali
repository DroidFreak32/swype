.class Lcom/nuance/swype/input/IME$13;
.super Ljava/lang/Object;
.source "IME.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/IME;->showDictationLanguageMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/IME;

.field final synthetic val$listView:Landroid/widget/ListView;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/IME;Landroid/widget/ListView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/nuance/swype/input/IME;

    .prologue
    .line 3549
    iput-object p1, p0, Lcom/nuance/swype/input/IME$13;->this$0:Lcom/nuance/swype/input/IME;

    iput-object p2, p0, Lcom/nuance/swype/input/IME$13;->val$listView:Landroid/widget/ListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 3551
    iget-object v0, p0, Lcom/nuance/swype/input/IME$13;->val$listView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/nuance/swype/input/IME$13;->this$0:Lcom/nuance/swype/input/IME;

    invoke-static {v1}, Lcom/nuance/swype/input/IME;->access$900(Lcom/nuance/swype/input/IME;)Lcom/nuance/speech/dragon/DragonDictationLanguageListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/speech/dragon/DragonDictationLanguageListAdapter;->getCheckItem()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 3552
    return-void
.end method
