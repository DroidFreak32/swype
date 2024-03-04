.class Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$4;
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
    .line 150
    iput-object p1, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$4;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    .line 154
    iget-object v0, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$4;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->setResult(I)V

    .line 155
    iget-object v0, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$4;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    const-string v1, "purchase canceled"

    const-string v2, "user left"

    invoke-static {v0, v1, v3, v2, v3}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->access$200(Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;Ljava/lang/String;ZLjava/lang/String;Z)V

    .line 156
    iget-object v0, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$4;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->finish()V

    .line 157
    return-void
.end method
