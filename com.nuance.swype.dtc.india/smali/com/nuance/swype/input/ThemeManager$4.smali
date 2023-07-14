.class Lcom/nuance/swype/input/ThemeManager$4;
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

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$listener:Lcom/nuance/swype/input/ThemeManager$OnThemePreviewDialogListener;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/ThemeManager;Landroid/content/Context;Lcom/nuance/swype/input/ThemeManager$OnThemePreviewDialogListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/nuance/swype/input/ThemeManager;

    .prologue
    .line 1507
    iput-object p1, p0, Lcom/nuance/swype/input/ThemeManager$4;->this$0:Lcom/nuance/swype/input/ThemeManager;

    iput-object p2, p0, Lcom/nuance/swype/input/ThemeManager$4;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/nuance/swype/input/ThemeManager$4;->val$listener:Lcom/nuance/swype/input/ThemeManager$OnThemePreviewDialogListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 1509
    const-string/jumbo v0, "no"

    iget-object v1, p0, Lcom/nuance/swype/input/ThemeManager$4;->val$context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/nuance/swype/input/ThemeManager;->recordThemePreviewData(Ljava/lang/String;Landroid/content/Context;)V

    .line 1510
    iget-object v0, p0, Lcom/nuance/swype/input/ThemeManager$4;->val$listener:Lcom/nuance/swype/input/ThemeManager$OnThemePreviewDialogListener;

    invoke-interface {v0}, Lcom/nuance/swype/input/ThemeManager$OnThemePreviewDialogListener;->onThemePreivewDialogClosed()V

    .line 1511
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1512
    return-void
.end method
