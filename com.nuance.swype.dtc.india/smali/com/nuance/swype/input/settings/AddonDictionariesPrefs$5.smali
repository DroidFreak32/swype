.class Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$5;
.super Lcom/nuance/swype/preference/ConnectionAwarePreferences;
.source "AddonDictionariesPrefs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;-><init>(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;
    .param p2, "ctx"    # Landroid/content/Context;

    .prologue
    .line 154
    iput-object p1, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$5;->this$0:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;

    invoke-direct {p0, p2}, Lcom/nuance/swype/preference/ConnectionAwarePreferences;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public showConnectDialog()V
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$5;->this$0:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->showConnectDialog()V

    .line 158
    return-void
.end method
