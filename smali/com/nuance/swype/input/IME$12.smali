.class Lcom/nuance/swype/input/IME$12;
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

    .prologue
    .line 3263
    iput-object p1, p0, Lcom/nuance/swype/input/IME$12;->this$0:Lcom/nuance/swype/input/IME;

    iput-object p2, p0, Lcom/nuance/swype/input/IME$12;->val$listView:Landroid/widget/ListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 3265
    iget-object v0, p0, Lcom/nuance/swype/input/IME$12;->val$listView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/nuance/swype/input/IME$12;->this$0:Lcom/nuance/swype/input/IME;

    invoke-static {v1}, Lcom/nuance/swype/input/IME;->access$900(Lcom/nuance/swype/input/IME;)Lcom/nuance/speech/dragon/DragonDictationLanguageListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/speech/dragon/DragonDictationLanguageListAdapter;->getCheckItem()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 3266
    return-void
.end method
