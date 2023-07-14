.class Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$8;
.super Ljava/lang/Object;
.source "AddonDictionariesPrefs.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->createRemoveDictionaryDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;

.field final synthetic val$key:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;

    .prologue
    .line 277
    iput-object p1, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$8;->this$0:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;

    iput-object p2, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$8;->val$key:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 279
    iget-object v0, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$8;->this$0:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;

    iget-object v1, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$8;->val$key:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;->access$800(Lcom/nuance/swype/input/settings/AddonDictionariesPrefs;Ljava/lang/String;)V

    .line 280
    return-void
.end method
