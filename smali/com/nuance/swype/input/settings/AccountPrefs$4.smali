.class Lcom/nuance/swype/input/settings/AccountPrefs$4;
.super Lcom/nuance/swype/preference/ConnectionAwarePreferences;
.source "AccountPrefs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/settings/AccountPrefs;-><init>(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/settings/AccountPrefs;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/settings/AccountPrefs;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 158
    iput-object p1, p0, Lcom/nuance/swype/input/settings/AccountPrefs$4;->this$0:Lcom/nuance/swype/input/settings/AccountPrefs;

    invoke-direct {p0, p2}, Lcom/nuance/swype/preference/ConnectionAwarePreferences;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public showConnectDialog()V
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/nuance/swype/input/settings/AccountPrefs$4;->this$0:Lcom/nuance/swype/input/settings/AccountPrefs;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/AccountPrefs;->showConnectDialog()V

    .line 162
    return-void
.end method
