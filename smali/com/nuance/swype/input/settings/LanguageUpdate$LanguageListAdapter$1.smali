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
    .locals 0

    .prologue
    .line 538
    iput-object p1, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter$1;->this$0:Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;

    iput p2, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter$1;->val$languageId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 541
    iget-object v0, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter$1;->this$0:Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;

    invoke-static {v0}, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;->access$900(Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;)Lcom/nuance/swype/input/settings/LanguageUpdate;

    move-result-object v0

    iget v1, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter$1;->val$languageId:I

    invoke-static {v0, v1}, Lcom/nuance/swype/input/settings/LanguageUpdate;->access$1000(Lcom/nuance/swype/input/settings/LanguageUpdate;I)V

    .line 542
    return-void
.end method
