.class Lcom/nuance/swype/input/settings/MyWordsPrefs$12$6;
.super Ljava/lang/Object;
.source "MyWordsPrefs.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/settings/MyWordsPrefs$12;->doCreateDialog(Landroid/content/Context;Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/nuance/swype/input/settings/MyWordsPrefs$12;

.field final synthetic val$activateDialog:Lcom/nuance/swype/input/settings/MyWordsPrefs$AlertProgressDialog;

.field final synthetic val$activationCodeView:Landroid/view/View;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/settings/MyWordsPrefs$12;Landroid/content/Context;Lcom/nuance/swype/input/settings/MyWordsPrefs$AlertProgressDialog;Landroid/view/View;)V
    .registers 5
    .param p1, "this$1"    # Lcom/nuance/swype/input/settings/MyWordsPrefs$12;

    .prologue
    .line 782
    iput-object p1, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs$12$6;->this$1:Lcom/nuance/swype/input/settings/MyWordsPrefs$12;

    iput-object p2, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs$12$6;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs$12$6;->val$activateDialog:Lcom/nuance/swype/input/settings/MyWordsPrefs$AlertProgressDialog;

    iput-object p4, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs$12$6;->val$activationCodeView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 786
    iget-object v0, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs$12$6;->this$1:Lcom/nuance/swype/input/settings/MyWordsPrefs$12;

    iget-object v0, v0, Lcom/nuance/swype/input/settings/MyWordsPrefs$12;->this$0:Lcom/nuance/swype/input/settings/MyWordsPrefs;

    iget-object v1, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs$12$6;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs$12$6;->val$activateDialog:Lcom/nuance/swype/input/settings/MyWordsPrefs$AlertProgressDialog;

    iget-object v3, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs$12$6;->val$activationCodeView:Landroid/view/View;

    # invokes: Lcom/nuance/swype/input/settings/MyWordsPrefs;->onClickConfirmButton(Landroid/content/Context;Lcom/nuance/swype/input/settings/MyWordsPrefs$AlertProgressDialog;Landroid/view/View;)V
    invoke-static {v0, v1, v2, v3}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->access$700(Lcom/nuance/swype/input/settings/MyWordsPrefs;Landroid/content/Context;Lcom/nuance/swype/input/settings/MyWordsPrefs$AlertProgressDialog;Landroid/view/View;)V

    .line 787
    return-void
.end method
