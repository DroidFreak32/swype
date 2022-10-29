.class Lcom/nuance/swype/input/settings/Updates$6;
.super Ljava/lang/Object;
.source "Updates.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/settings/Updates;->createUnknownSourcesDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/settings/Updates;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/settings/Updates;)V
    .registers 2
    .param p1, "this$0"    # Lcom/nuance/swype/input/settings/Updates;

    .prologue
    .line 213
    iput-object p1, p0, Lcom/nuance/swype/input/settings/Updates$6;->this$0:Lcom/nuance/swype/input/settings/Updates;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 217
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 218
    iget-object v0, p0, Lcom/nuance/swype/input/settings/Updates$6;->this$0:Lcom/nuance/swype/input/settings/Updates;

    # getter for: Lcom/nuance/swype/input/settings/Updates;->activity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/nuance/swype/input/settings/Updates;->access$700(Lcom/nuance/swype/input/settings/Updates;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.settings.SECURITY_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 220
    return-void
.end method
