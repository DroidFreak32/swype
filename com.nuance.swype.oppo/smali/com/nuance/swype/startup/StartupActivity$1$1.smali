.class final Lcom/nuance/swype/startup/StartupActivity$1$1;
.super Ljava/lang/Object;
.source "StartupActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/startup/StartupActivity$1;->doCreateDialog(Landroid/content/Context;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$1:Lcom/nuance/swype/startup/StartupActivity$1;


# direct methods
.method constructor <init>(Lcom/nuance/swype/startup/StartupActivity$1;)V
    .locals 0

    .prologue
    .line 331
    iput-object p1, p0, Lcom/nuance/swype/startup/StartupActivity$1$1;->this$1:Lcom/nuance/swype/startup/StartupActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 334
    iget-object v0, p0, Lcom/nuance/swype/startup/StartupActivity$1$1;->this$1:Lcom/nuance/swype/startup/StartupActivity$1;

    iget-object v0, v0, Lcom/nuance/swype/startup/StartupActivity$1;->this$0:Lcom/nuance/swype/startup/StartupActivity;

    invoke-virtual {v0}, Lcom/nuance/swype/startup/StartupActivity;->onSkip$13462e()V

    .line 335
    return-void
.end method
