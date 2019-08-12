.class Lcom/nuance/swype/input/settings/LanguageUpdate$8;
.super Ljava/lang/Object;
.source "LanguageUpdate.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/settings/LanguageUpdate;->timeoutDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/settings/LanguageUpdate;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/settings/LanguageUpdate;)V
    .locals 0

    .prologue
    .line 297
    iput-object p1, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$8;->this$0:Lcom/nuance/swype/input/settings/LanguageUpdate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 301
    iget-object v0, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$8;->this$0:Lcom/nuance/swype/input/settings/LanguageUpdate;

    invoke-static {v0}, Lcom/nuance/swype/input/settings/LanguageUpdate;->access$400(Lcom/nuance/swype/input/settings/LanguageUpdate;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$8;->this$0:Lcom/nuance/swype/input/settings/LanguageUpdate;

    invoke-static {v1}, Lcom/nuance/swype/input/settings/LanguageUpdate;->access$400(Lcom/nuance/swype/input/settings/LanguageUpdate;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 302
    return-void
.end method
