.class Lcom/nuance/swype/input/settings/Updates$4;
.super Lcom/nuance/swype/preference/ConnectionAwarePreferences;
.source "Updates.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/settings/Updates;-><init>(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/settings/Updates;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/settings/Updates;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/nuance/swype/input/settings/Updates$4;->this$0:Lcom/nuance/swype/input/settings/Updates;

    invoke-direct {p0, p2}, Lcom/nuance/swype/preference/ConnectionAwarePreferences;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public showConnectDialog()V
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/nuance/swype/input/settings/Updates$4;->this$0:Lcom/nuance/swype/input/settings/Updates;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/Updates;->showConnectDialog()V

    .line 136
    return-void
.end method
