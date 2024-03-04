.class Lcom/nuance/swype/input/settings/FunctionBarActivity$1;
.super Lcom/nuance/swype/input/settings/FunctionBar;
.source "FunctionBarActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/settings/FunctionBarActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/settings/FunctionBarActivity;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/settings/FunctionBarActivity;Landroid/app/Activity;Landroid/preference/PreferenceScreen;)V
    .locals 0
    .param p2, "x0"    # Landroid/app/Activity;
    .param p3, "x1"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 17
    iput-object p1, p0, Lcom/nuance/swype/input/settings/FunctionBarActivity$1;->this$0:Lcom/nuance/swype/input/settings/FunctionBarActivity;

    invoke-direct {p0, p2, p3}, Lcom/nuance/swype/input/settings/FunctionBar;-><init>(Landroid/app/Activity;Landroid/preference/PreferenceScreen;)V

    return-void
.end method


# virtual methods
.method protected showMaxCountdialog()V
    .locals 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/nuance/swype/input/settings/FunctionBarActivity$1;->this$0:Lcom/nuance/swype/input/settings/FunctionBarActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/settings/FunctionBarActivity;->showDialog(I)V

    .line 22
    return-void
.end method
