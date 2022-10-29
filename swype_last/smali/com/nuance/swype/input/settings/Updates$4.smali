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
    .registers 3
    .param p1, "this$0"    # Lcom/nuance/swype/input/settings/Updates;
    .param p2, "ctx"    # Landroid/content/Context;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/nuance/swype/input/settings/Updates$4;->this$0:Lcom/nuance/swype/input/settings/Updates;

    invoke-direct {p0, p2}, Lcom/nuance/swype/preference/ConnectionAwarePreferences;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public showConnectDialog()V
    .registers 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/nuance/swype/input/settings/Updates$4;->this$0:Lcom/nuance/swype/input/settings/Updates;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/Updates;->showConnectDialog()V

    .line 138
    return-void
.end method
