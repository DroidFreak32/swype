.class Lcom/nuance/swype/input/settings/MyWordsPrefs$15;
.super Ljava/lang/Object;
.source "MyWordsPrefs.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/settings/MyWordsPrefs;->createEraseUdbConfirmationDlg()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/settings/MyWordsPrefs;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/settings/MyWordsPrefs;)V
    .locals 0
    .param p1, "this$0"    # Lcom/nuance/swype/input/settings/MyWordsPrefs;

    .prologue
    .line 929
    iput-object p1, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs$15;->this$0:Lcom/nuance/swype/input/settings/MyWordsPrefs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 932
    iget-object v0, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs$15;->this$0:Lcom/nuance/swype/input/settings/MyWordsPrefs;

    invoke-static {v0}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->access$1000(Lcom/nuance/swype/input/settings/MyWordsPrefs;)Lcom/nuance/swype/input/udb/UserDictionaryIterator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/udb/UserDictionaryIterator;->eraseAll()V

    .line 935
    iget-object v0, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs$15;->this$0:Lcom/nuance/swype/input/settings/MyWordsPrefs;

    invoke-static {v0}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->access$500(Lcom/nuance/swype/input/settings/MyWordsPrefs;)Lcom/nuance/swype/connect/Connect;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/connect/Connect;->getSync()Lcom/nuance/swype/connect/Connect$Sync;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/connect/Connect$Sync;->disable()V

    .line 936
    iget-object v0, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs$15;->this$0:Lcom/nuance/swype/input/settings/MyWordsPrefs;

    invoke-static {v0}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->access$500(Lcom/nuance/swype/input/settings/MyWordsPrefs;)Lcom/nuance/swype/connect/Connect;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nuance/swype/connect/Connect;->getLivingLanguage(Lcom/nuance/swype/connect/Connect$LegalDocumentPresenter;)Lcom/nuance/swype/connect/Connect$LivingLanguage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/connect/Connect$LivingLanguage;->disable()V

    .line 937
    iget-object v0, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs$15;->this$0:Lcom/nuance/swype/input/settings/MyWordsPrefs;

    invoke-static {v0}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->access$100(Lcom/nuance/swype/input/settings/MyWordsPrefs;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->access$1100(Landroid/content/Context;)V

    .line 938
    iget-object v0, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs$15;->this$0:Lcom/nuance/swype/input/settings/MyWordsPrefs;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->rebuildSettings()V

    .line 939
    iget-object v0, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs$15;->this$0:Lcom/nuance/swype/input/settings/MyWordsPrefs;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->access$002(Lcom/nuance/swype/input/settings/MyWordsPrefs;Z)Z

    .line 940
    return-void
.end method
