.class Lcom/nuance/swype/input/settings/MyWordsPrefs$3;
.super Lcom/nuance/swype/preference/ConnectionAwarePreferences;
.source "MyWordsPrefs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/settings/MyWordsPrefs;-><init>(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/settings/MyWordsPrefs;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/settings/MyWordsPrefs;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/nuance/swype/input/settings/MyWordsPrefs;
    .param p2, "ctx"    # Landroid/content/Context;

    .prologue
    .line 194
    iput-object p1, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs$3;->this$0:Lcom/nuance/swype/input/settings/MyWordsPrefs;

    invoke-direct {p0, p2}, Lcom/nuance/swype/preference/ConnectionAwarePreferences;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public showConnectDialog()V
    .locals 3

    .prologue
    .line 197
    iget-object v0, p0, Lcom/nuance/swype/input/settings/MyWordsPrefs$3;->this$0:Lcom/nuance/swype/input/settings/MyWordsPrefs;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/input/settings/MyWordsPrefs;->doShowDialog(ILandroid/os/Bundle;)V

    .line 198
    return-void
.end method
