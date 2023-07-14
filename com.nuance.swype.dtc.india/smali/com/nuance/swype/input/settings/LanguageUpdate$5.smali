.class Lcom/nuance/swype/input/settings/LanguageUpdate$5;
.super Ljava/lang/Object;
.source "LanguageUpdate.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/settings/LanguageUpdate;->createRemoveLanguageDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/settings/LanguageUpdate;

.field final synthetic val$languageId:I


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/settings/LanguageUpdate;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/nuance/swype/input/settings/LanguageUpdate;

    .prologue
    .line 327
    iput-object p1, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$5;->this$0:Lcom/nuance/swype/input/settings/LanguageUpdate;

    iput p2, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$5;->val$languageId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 329
    iget-object v0, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$5;->this$0:Lcom/nuance/swype/input/settings/LanguageUpdate;

    invoke-static {v0}, Lcom/nuance/swype/input/settings/LanguageUpdate;->access$300(Lcom/nuance/swype/input/settings/LanguageUpdate;)Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;

    move-result-object v0

    iget v1, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$5;->val$languageId:I

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;->removeLanguage(I)V

    .line 330
    return-void
.end method
