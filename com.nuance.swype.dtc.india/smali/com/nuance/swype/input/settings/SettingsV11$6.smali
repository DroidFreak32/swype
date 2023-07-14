.class Lcom/nuance/swype/input/settings/SettingsV11$6;
.super Ljava/lang/Object;
.source "SettingsV11.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/settings/SettingsV11;->showNotAvailableDialogForGoogleTrial(Landroid/content/Context;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/settings/SettingsV11;

.field final synthetic val$appStoreUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/settings/SettingsV11;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/nuance/swype/input/settings/SettingsV11;

    .prologue
    .line 489
    iput-object p1, p0, Lcom/nuance/swype/input/settings/SettingsV11$6;->this$0:Lcom/nuance/swype/input/settings/SettingsV11;

    iput-object p2, p0, Lcom/nuance/swype/input/settings/SettingsV11$6;->val$appStoreUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 491
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/nuance/swype/input/settings/SettingsV11$6;->val$appStoreUrl:Ljava/lang/String;

    .line 493
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 494
    .local v0, "marketIntent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 495
    const-string/jumbo v1, "yes"

    iget-object v2, p0, Lcom/nuance/swype/input/settings/SettingsV11$6;->this$0:Lcom/nuance/swype/input/settings/SettingsV11;

    .line 496
    invoke-virtual {v2}, Lcom/nuance/swype/input/settings/SettingsV11;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 495
    invoke-static {v1, v2}, Lcom/nuance/swype/input/ThemeManager;->recordThemePreviewData(Ljava/lang/String;Landroid/content/Context;)V

    .line 497
    iget-object v1, p0, Lcom/nuance/swype/input/settings/SettingsV11$6;->this$0:Lcom/nuance/swype/input/settings/SettingsV11;

    invoke-virtual {v1, v0}, Lcom/nuance/swype/input/settings/SettingsV11;->startActivity(Landroid/content/Intent;)V

    .line 498
    return-void
.end method
