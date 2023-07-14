.class Lcom/nuance/swype/input/ThemeManager$5;
.super Ljava/lang/Object;
.source "ThemeManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/ThemeManager;->showNotAvailableDialogForGoogleTrial(Landroid/content/Context;Lcom/nuance/swype/input/ThemeManager$OnThemePreviewDialogListener;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/ThemeManager;

.field final synthetic val$appStoreUrl:Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$listener:Lcom/nuance/swype/input/ThemeManager$OnThemePreviewDialogListener;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/ThemeManager;Ljava/lang/String;Landroid/content/Context;Lcom/nuance/swype/input/ThemeManager$OnThemePreviewDialogListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/nuance/swype/input/ThemeManager;

    .prologue
    .line 1497
    iput-object p1, p0, Lcom/nuance/swype/input/ThemeManager$5;->this$0:Lcom/nuance/swype/input/ThemeManager;

    iput-object p2, p0, Lcom/nuance/swype/input/ThemeManager$5;->val$appStoreUrl:Ljava/lang/String;

    iput-object p3, p0, Lcom/nuance/swype/input/ThemeManager$5;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/nuance/swype/input/ThemeManager$5;->val$listener:Lcom/nuance/swype/input/ThemeManager$OnThemePreviewDialogListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 1499
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/nuance/swype/input/ThemeManager$5;->val$appStoreUrl:Ljava/lang/String;

    .line 1500
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1501
    .local v0, "marketIntent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1502
    const-string/jumbo v1, "yes"

    iget-object v2, p0, Lcom/nuance/swype/input/ThemeManager$5;->val$context:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/nuance/swype/input/ThemeManager;->recordThemePreviewData(Ljava/lang/String;Landroid/content/Context;)V

    .line 1503
    iget-object v1, p0, Lcom/nuance/swype/input/ThemeManager$5;->val$listener:Lcom/nuance/swype/input/ThemeManager$OnThemePreviewDialogListener;

    invoke-interface {v1}, Lcom/nuance/swype/input/ThemeManager$OnThemePreviewDialogListener;->onThemePreivewDialogClosed()V

    .line 1504
    iget-object v1, p0, Lcom/nuance/swype/input/ThemeManager$5;->val$context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1505
    return-void
.end method
