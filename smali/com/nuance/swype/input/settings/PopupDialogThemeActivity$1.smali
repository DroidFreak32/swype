.class Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$1;
.super Ljava/lang/Object;
.source "PopupDialogThemeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$1;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    .line 93
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 94
    .local v1, "resultIntent":Landroid/content/Intent;
    const-string v2, "com.nuance.swype.input.settings.PopupDialogThemeActivity.theme_id"

    iget-object v3, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$1;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    invoke-static {v3}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->access$000(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    iget-object v2, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$1;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    const/4 v3, -0x1

    invoke-virtual {v2, v3, v1}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->setResult(ILandroid/content/Intent;)V

    .line 96
    iget-object v2, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$1;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    invoke-static {v2}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->access$100(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;)Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 97
    iget-object v2, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$1;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    invoke-static {v2}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->access$100(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;)Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->getCategoryIds()Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, "category":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v2, "no_category_id"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 99
    :cond_0
    iget-object v2, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$1;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    const-string v3, "free apply"

    const-string v4, "user left"

    invoke-static {v2, v3, v6, v4, v6}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->access$200(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;Ljava/lang/String;ZLjava/lang/String;Z)V

    .line 107
    .end local v0    # "category":Ljava/lang/String;
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$1;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    invoke-virtual {v2}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->finish()V

    .line 108
    return-void

    .line 101
    .restart local v0    # "category":Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$1;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    iget-object v2, v2, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->themeManager:Lcom/nuance/swype/input/ThemeManager;

    if-eqz v2, :cond_3

    .line 102
    iget-object v2, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$1;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    iget-object v2, v2, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->themeManager:Lcom/nuance/swype/input/ThemeManager;

    iget-object v3, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$1;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    invoke-virtual {v3}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/ThemeManager;->importMlsHotwords(Landroid/content/Context;)V

    .line 104
    :cond_3
    iget-object v2, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$1;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    const-string v3, "paid apply"

    const/4 v4, 0x1

    const-string v5, "user left"

    invoke-static {v2, v3, v4, v5, v6}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->access$200(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;Ljava/lang/String;ZLjava/lang/String;Z)V

    goto :goto_0
.end method
