.class final Lcom/nuance/swype/startup/StartupDelegate$1;
.super Ljava/lang/Object;
.source "StartupDelegate.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/startup/StartupDelegate;->showSelectSwypeDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/startup/StartupDelegate;


# direct methods
.method constructor <init>(Lcom/nuance/swype/startup/StartupDelegate;)V
    .registers 2
    .param p1, "this$0"    # Lcom/nuance/swype/startup/StartupDelegate;

    .prologue
    .line 193
    .local p0, "this":Lcom/nuance/swype/startup/StartupDelegate$1;, "Lcom/nuance/swype/startup/StartupDelegate$1;"
    iput-object p1, p0, Lcom/nuance/swype/startup/StartupDelegate$1;->this$0:Lcom/nuance/swype/startup/StartupDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 197
    .local p0, "this":Lcom/nuance/swype/startup/StartupDelegate$1;, "Lcom/nuance/swype/startup/StartupDelegate$1;"
    iget-object v0, p0, Lcom/nuance/swype/startup/StartupDelegate$1;->this$0:Lcom/nuance/swype/startup/StartupDelegate;

    iget-object v0, v0, Lcom/nuance/swype/startup/StartupDelegate;->mActivityCallbacks:Lcom/nuance/swype/startup/StartupDelegate$StartupActivityCallbacks;

    invoke-interface {v0}, Lcom/nuance/swype/startup/StartupDelegate$StartupActivityCallbacks;->cancelSequence()V

    .line 198
    return-void
.end method
