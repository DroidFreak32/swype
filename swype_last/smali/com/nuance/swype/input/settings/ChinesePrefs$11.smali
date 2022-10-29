.class Lcom/nuance/swype/input/settings/ChinesePrefs$11;
.super Ljava/lang/Object;
.source "ChinesePrefs.java"

# interfaces
.implements Lcom/nuance/swype/preference/DialogPrefs$DialogCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/settings/ChinesePrefs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/settings/ChinesePrefs;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/settings/ChinesePrefs;)V
    .registers 2
    .param p1, "this$0"    # Lcom/nuance/swype/input/settings/ChinesePrefs;

    .prologue
    .line 560
    iput-object p1, p0, Lcom/nuance/swype/input/settings/ChinesePrefs$11;->this$0:Lcom/nuance/swype/input/settings/ChinesePrefs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doCreateDialog(Landroid/content/Context;Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 563
    const/4 v0, 0x0

    return-object v0
.end method
