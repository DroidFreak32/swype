.class Lcom/nuance/swype/input/settings/MyWordsPrefs$12$4;
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


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/settings/MyWordsPrefs$12;Lcom/nuance/swype/input/settings/MyWordsPrefs$AlertProgressDialog;)V
    .registers 3
    .param p1, "this$1"    # Lcom/nuance/swype/input/settings/MyWordsPrefs$12;

    .prologue
    .line 765
    iput-object p1, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs$12$4;->this$1:Lcom/nuance/swype/input/settings/MyWordsPrefs$12;

    iput-object p2, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs$12$4;->val$activateDialog:Lcom/nuance/swype/input/settings/MyWordsPrefs$AlertProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 768
    iget-object v0, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs$12$4;->this$1:Lcom/nuance/swype/input/settings/MyWordsPrefs$12;

    iget-object v0, v0, Lcom/nuance/swype/input/settings/MyWordsPrefs$12;->this$0:Lcom/nuance/swype/input/settings/MyWordsPrefs;

    iget-object v1, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs$12$4;->val$activateDialog:Lcom/nuance/swype/input/settings/MyWordsPrefs$AlertProgressDialog;

    # invokes: Lcom/nuance/swype/input/settings/MyWordsPrefs;->onClickEmailChangeButton(Lcom/nuance/swype/input/settings/MyWordsPrefs$AlertProgressDialog;)V
    invoke-static {v0, v1}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->access$800(Lcom/nuance/swype/input/settings/MyWordsPrefs;Lcom/nuance/swype/input/settings/MyWordsPrefs$AlertProgressDialog;)V

    .line 769
    return-void
.end method
