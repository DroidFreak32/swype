.class Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$7;
.super Ljava/lang/Object;
.source "AddonDictionariesPrefs.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->timeoutDialog()Landroid/app/Dialog;
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
    .line 253
    iput-object p1, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$7;->this$0:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 257
    iget-object v0, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$7;->this$0:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;

    invoke-static {v0}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->access$700(Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$7;->this$0:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;

    invoke-static {v1}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->access$600(Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 258
    return-void
.end method
