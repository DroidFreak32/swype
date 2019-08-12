.class Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$3;
.super Ljava/lang/Object;
.source "AddonDictionariesPrefs.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$3;->this$0:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$3;->this$0:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;

    invoke-static {v0}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->access$100(Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$3;->this$0:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;

    invoke-static {v0}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->access$300(Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$3;->this$0:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;

    invoke-static {v0}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->access$400(Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$3;->this$0:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->showTimeoutDialog()V

    .line 132
    :cond_0
    return-void
.end method
