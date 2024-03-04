.class Lcom/nuance/swype/input/IME$16;
.super Ljava/lang/Object;
.source "IME.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/IME;->showLanguageMenu()V
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

    .prologue
    .line 4174
    iput-object p1, p0, Lcom/nuance/swype/input/IME$16;->this$0:Lcom/nuance/swype/input/IME;

    iput-object p2, p0, Lcom/nuance/swype/input/IME$16;->val$listView:Landroid/widget/ListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 4176
    iget-object v0, p0, Lcom/nuance/swype/input/IME$16;->val$listView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/nuance/swype/input/IME$16;->this$0:Lcom/nuance/swype/input/IME;

    invoke-static {v1}, Lcom/nuance/swype/input/IME;->access$1600(Lcom/nuance/swype/input/IME;)Lcom/nuance/swype/input/LanguageListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/LanguageListAdapter;->getCheckItem()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 4177
    return-void
.end method
