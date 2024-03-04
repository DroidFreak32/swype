.class Lcom/nuance/swype/input/settings/LanguageOptionsActivity$2;
.super Ljava/lang/Object;
.source "LanguageOptionsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/settings/LanguageOptionsActivity;->setDismissListenerCallback(Landroid/app/Dialog;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/settings/LanguageOptionsActivity;

.field final synthetic val$id:I


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/settings/LanguageOptionsActivity;I)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lcom/nuance/swype/input/settings/LanguageOptionsActivity$2;->this$0:Lcom/nuance/swype/input/settings/LanguageOptionsActivity;

    iput p2, p0, Lcom/nuance/swype/input/settings/LanguageOptionsActivity$2;->val$id:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 153
    iget-object v0, p0, Lcom/nuance/swype/input/settings/LanguageOptionsActivity$2;->this$0:Lcom/nuance/swype/input/settings/LanguageOptionsActivity;

    iget v1, p0, Lcom/nuance/swype/input/settings/LanguageOptionsActivity$2;->val$id:I

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/settings/LanguageOptionsActivity;->removeDialog(I)V

    .line 154
    iget-object v0, p0, Lcom/nuance/swype/input/settings/LanguageOptionsActivity$2;->this$0:Lcom/nuance/swype/input/settings/LanguageOptionsActivity;

    invoke-static {v0}, Lcom/nuance/swype/input/settings/LanguageOptionsActivity;->access$000(Lcom/nuance/swype/input/settings/LanguageOptionsActivity;)Lcom/nuance/swype/input/settings/LanguageOptions;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/nuance/swype/input/settings/LanguageOptionsActivity$2;->this$0:Lcom/nuance/swype/input/settings/LanguageOptionsActivity;

    invoke-static {v0}, Lcom/nuance/swype/input/settings/LanguageOptionsActivity;->access$000(Lcom/nuance/swype/input/settings/LanguageOptionsActivity;)Lcom/nuance/swype/input/settings/LanguageOptions;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/settings/LanguageOptions;->setDialogShowing(Z)V

    .line 156
    iget-object v0, p0, Lcom/nuance/swype/input/settings/LanguageOptionsActivity$2;->this$0:Lcom/nuance/swype/input/settings/LanguageOptionsActivity;

    invoke-static {v0}, Lcom/nuance/swype/input/settings/LanguageOptionsActivity;->access$000(Lcom/nuance/swype/input/settings/LanguageOptionsActivity;)Lcom/nuance/swype/input/settings/LanguageOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/LanguageOptions;->buildLanguagePrefs()V

    .line 158
    :cond_0
    return-void
.end method
