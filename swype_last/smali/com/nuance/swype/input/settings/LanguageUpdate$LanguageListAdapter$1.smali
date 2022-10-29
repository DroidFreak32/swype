.class Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter$1;
.super Ljava/lang/Object;
.source "LanguageUpdate.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;->updateView(Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter$ViewHolder;Lcom/nuance/swype/connect/SDKDownloadManager$DownloadableLanguage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;

.field final synthetic val$languageId:I


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;I)V
    .registers 3
    .param p1, "this$0"    # Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;

    .prologue
    .line 610
    iput-object p1, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter$1;->this$0:Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;

    iput p2, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter$1;->val$languageId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 613
    iget-object v0, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter$1;->this$0:Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;

    # getter for: Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;->languageUpdateParent:Lcom/nuance/swype/input/settings/LanguageUpdate;
    invoke-static {v0}, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;->access$900(Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;)Lcom/nuance/swype/input/settings/LanguageUpdate;

    move-result-object v0

    iget v1, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter$1;->val$languageId:I

    # invokes: Lcom/nuance/swype/input/settings/LanguageUpdate;->cancelDownloadInProgress(I)V
    invoke-static {v0, v1}, Lcom/nuance/swype/input/settings/LanguageUpdate;->access$1000(Lcom/nuance/swype/input/settings/LanguageUpdate;I)V

    .line 614
    return-void
.end method
