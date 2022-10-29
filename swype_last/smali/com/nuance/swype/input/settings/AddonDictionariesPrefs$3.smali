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
    .registers 2
    .param p1, "this$0"    # Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$3;->this$0:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$3;->this$0:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;

    # getter for: Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->displayTimeoutDialog:Z
    invoke-static {v0}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->access$100(Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 133
    iget-object v0, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$3;->this$0:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;

    # getter for: Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->activity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->access$300(Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_21

    iget-object v0, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$3;->this$0:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;

    # getter for: Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->isRunning:Z
    invoke-static {v0}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->access$400(Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 134
    iget-object v0, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$3;->this$0:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->showTimeoutDialog()V

    .line 137
    :cond_21
    return-void
.end method
