.class Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3;
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
    .line 140
    iput-object p1, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity$3;->this$0:Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/PopupDialogThemeActivity;->purchaseItem()V

    .line 145
    return-void
.end method
