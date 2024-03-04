.class Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$4;
.super Lcom/nuance/swype/connect/ConnectedStatus;
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
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$4;->this$0:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;

    invoke-direct {p0, p2}, Lcom/nuance/swype/connect/ConnectedStatus;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onConnectionChanged(Z)V
    .locals 2
    .param p1, "isConnected"    # Z

    .prologue
    .line 143
    iget-object v0, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$4;->this$0:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;

    invoke-static {v0}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->access$200(Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;)Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$4;->this$0:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;

    invoke-static {v0}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->access$200(Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;)Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$4;->this$0:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;

    invoke-static {v1}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->access$500(Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;)Lcom/nuance/swype/connect/ConnectedStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/connect/ConnectedStatus;->isConnected()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter;->onConnectionChanged(Z)V

    .line 146
    :cond_0
    return-void
.end method
