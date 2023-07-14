.class Lcom/nuance/swype/input/settings/SettingsV11$5;
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


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/settings/SettingsV11;)V
    .locals 0
    .param p1, "this$0"    # Lcom/nuance/swype/input/settings/SettingsV11;

    .prologue
    .line 500
    iput-object p1, p0, Lcom/nuance/swype/input/settings/SettingsV11$5;->this$0:Lcom/nuance/swype/input/settings/SettingsV11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 502
    iget-object v0, p0, Lcom/nuance/swype/input/settings/SettingsV11$5;->this$0:Lcom/nuance/swype/input/settings/SettingsV11;

    invoke-static {v0}, Lcom/nuance/swype/input/settings/SettingsV11;->access$500(Lcom/nuance/swype/input/settings/SettingsV11;)V

    .line 503
    const-string/jumbo v0, "no"

    iget-object v1, p0, Lcom/nuance/swype/input/settings/SettingsV11$5;->this$0:Lcom/nuance/swype/input/settings/SettingsV11;

    .line 504
    invoke-virtual {v1}, Lcom/nuance/swype/input/settings/SettingsV11;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 503
    invoke-static {v0, v1}, Lcom/nuance/swype/input/ThemeManager;->recordThemePreviewData(Ljava/lang/String;Landroid/content/Context;)V

    .line 505
    return-void
.end method
