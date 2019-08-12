.class Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$2;
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
    .line 112
    iput-object p1, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$2;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 116
    iget-object v1, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$2;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    invoke-virtual {v1, v5}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->setResult(I)V

    .line 117
    iget-object v1, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$2;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    invoke-static {v1}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->access$100(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;)Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 118
    iget-object v1, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$2;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    invoke-static {v1}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->access$100(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;)Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->getCategoryIds()Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, "category":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "no_category_id"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 120
    :cond_0
    iget-object v1, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$2;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    const-string v2, "free cancel"

    const-string v3, "user left"

    invoke-static {v1, v2, v5, v3, v4}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->access$200(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;Ljava/lang/String;ZLjava/lang/String;Z)V

    .line 125
    .end local v0    # "category":Ljava/lang/String;
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$2;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    invoke-virtual {v1}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->finish()V

    .line 126
    return-void

    .line 122
    .restart local v0    # "category":Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$2;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    const-string v2, "purchase canceled"

    const-string v3, "user left"

    invoke-static {v1, v2, v4, v3, v4}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->access$200(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;Ljava/lang/String;ZLjava/lang/String;Z)V

    goto :goto_0
.end method
